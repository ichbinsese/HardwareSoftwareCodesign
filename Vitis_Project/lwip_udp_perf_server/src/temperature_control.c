#include "temperature_control.h"
#include <xil_io.h>
#include <xil_printf.h>
#include "xparameters.h"
#include "errors.h"
#include "tm_tc_message_handler.h"

/**
 * @file temperature_control.c
 * @brief Temperature control implementation.
 *
 * Reads sensor raw values from hardware registers, maintains last and average
 * values and controls heater outputs. Registers callbacks for TC messages.
 */

/* Register offsets and addresses */
#define REG_USER_CONTROL_OFFSET 0x00 /**< Offset for user control register. */
#define REG_SENSOR1_RAW_OFFSET 0x04 /**< Offset for sensor 1 raw value. */
#define REG_SENSOR2_RAW_OFFSET 0x08 /**< Offset for sensor 2 raw value. */
#define REG_BACKUP_OFFSET 0x0C /**< Offset for backup register. */

#define REG_USER_CONTROL_ADDR (XPAR_TEMPERATURE_CONTROL_0_BASEADDR + REG_USER_CONTROL_OFFSET) /**< User control register address. */
#define REG_SENSOR1_RAW_ADDR (XPAR_TEMPERATURE_CONTROL_0_BASEADDR + REG_SENSOR1_RAW_OFFSET)   /**< Sensor1 raw register address. */
#define REG_SENSOR2_RAW_ADDR (XPAR_TEMPERATURE_CONTROL_0_BASEADDR + REG_SENSOR2_RAW_OFFSET) /**< Sensor2 raw register address. */
#define REG_BACKUP_ADDR (XPAR_TEMPERATURE_CONTROL_0_BASEADDR + REG_BACKUP_OFFSET) /**< Backup register address. */

/* Bit positions in user_control_reg */
#define HEATER1_BIT   0 /**< Bit position for heater 1 control. */
#define HEATER2_BIT   1 /**< Bit position for heater 2 control. */

#define SENSOR_ID_1 1 /**< Identifier for sensor 1. */
#define SENSOR_ID_2 2 /**< Identifier for sensor 2. */

/* Heater states and sensor statistics (file-local) */
static uint8_t  heater1_state = 0; /**< Current state of heater 1 (0=off,1=on). */
static uint8_t  heater2_state = 0; /**< Current state of heater 2 (0=off,1=on). */

static uint16_t last_temp_s1  = 0; /**< Last raw reading from sensor 1. */
static uint16_t last_temp_s2  = 0; /**< Last raw reading from sensor 2. */
static uint64_t avg_temp_s1 = 0;   /**< Running integer average for sensor 1. */
static uint64_t avg_temp_s2 = 0;   /**< Running integer average for sensor 2. */
static uint32_t read_counts = 0;   /**< Number of sensor reads performed. */

/* Internal helper prototypes (static) */
static void write_heater_states(void);
static void read_sensor_values(void);

/**
 * @brief Write the current heater states to the hardware control register.
 *
 * Packs heater1_state and heater2_state into the control register and writes it.
 */
static void write_heater_states(void)
{
    uint32_t value = 0;

    value |= (uint32_t)(heater1_state & 0x1u) << HEATER1_BIT;
    value |= (uint32_t)(heater2_state & 0x1u) << HEATER2_BIT;

    Xil_Out32(REG_USER_CONTROL_ADDR, value);
}

/**
 * @brief Read raw sensor values from hardware and update averages.
 *
 * Reads two 32-bit registers (lower 16 bits used), updates last_temp_* and
 * computes integer running averages with truncation.
 */
static void read_sensor_values(void)
{
    last_temp_s1 = (uint16_t)(Xil_In32(REG_SENSOR1_RAW_ADDR) & 0xFFFFu);
    last_temp_s2 = (uint16_t)(Xil_In32(REG_SENSOR2_RAW_ADDR) & 0xFFFFu);

    /* Integer average with truncation */
    avg_temp_s1 = (avg_temp_s1 * read_counts + last_temp_s1) / (read_counts + 1);
    avg_temp_s2 = (avg_temp_s2 * read_counts + last_temp_s1) / (read_counts + 1);

    //xil_printf("\nSensor Vals: %u  %u", last_temp_s1, last_temp_s2);
    read_counts++;
}

/**
 * @brief Set heater state callback used by TC messages.
 *
 * @param heater_id Heater identifier (1 or 2).
 * @param new_state New state (non-zero = on).
 * @return ERR_OK on success or ERR_WRONG_TC_PACKAGE_LENGHT for invalid id.
 */
static uint32_t set_heater_state_callback(uint8_t heater_id, uint8_t new_state)
{
    if (heater_id == 1u)
    {
        heater1_state = (new_state != 0u) ? 1u : 0u;
    }
    else if (heater_id == 2u)
    {
        heater2_state = (new_state != 0u) ? 1u : 0u;
    }
    else
    {
        return ERR_WRONG_TC_PACKAGE_LENGHT;
    }

    write_heater_states();
    return ERR_OK;
}

/**
 * @brief Read last temperature callback used by TC messages.
 *
 * Sends a TM reply containing the last temperature for the requested sensor.
 *
 * @param sensor_id Sensor identifier (SENSOR_ID_1 or SENSOR_ID_2).
 * @return ERR_OK on success or ERR_WRONG_TC_PACKAGE_LENGHT for invalid id.
 */
static uint32_t read_last_temperature_callback(uint8_t sensor_id)
{

    if (sensor_id == SENSOR_ID_1)
    {
        return send_tm_sensor_temperature_reply(SENSOR_ID_1, last_temp_s1);
    }
    else if (sensor_id == SENSOR_ID_2)
    {
        return send_tm_sensor_temperature_reply(SENSOR_ID_2, last_temp_s2);
    }

    return ERR_WRONG_TC_PACKAGE_LENGHT;
}

/**
 * @brief Get average temperature callback used by TC messages.
 *
 * Sends a TM reply containing the integer average temperature for the sensor.
 *
 * @param sensor_id Sensor identifier.
 * @return ERR_OK on success or ERR_WRONG_TC_PACKAGE_LENGHT for invalid id.
 */
static uint32_t get_average_temperature_callback(uint8_t sensor_id)
{
    if (sensor_id == SENSOR_ID_1)
    {
        send_tm_sensor_temperature_reply(sensor_id, (uint16_t) avg_temp_s1);
    }
    else if (sensor_id == SENSOR_ID_2)
    {
        send_tm_sensor_temperature_reply(sensor_id, (uint16_t) avg_temp_s2);
    }
    return ERR_OK;
}

/**
 * @brief Periodic temperature control processing.
 *
 * Reads sensor values and updates internal statistics.
 */
void temperature_control_cyclic(void)
{
    read_sensor_values();
}

/**
 * @brief Initialize temperature control subsystem.
 *
 * Ensures heaters start OFF in hardware and software and registers TC callbacks.
 *
 * @return ERR_OK on success.
 */
uint32_t initialize_temperature_control(void)
{
    /* Ensure heaters start OFF in HW and SW */
    heater1_state = 0u;
    heater2_state = 0u;
    write_heater_states();

    /* Bind to TM/TC message handler */
    set_tc_set_heater_state_callback(&set_heater_state_callback);
    set_tc_read_last_temperature_callback(&read_last_temperature_callback);
    set_tc_get_average_temperature_callback(&get_average_temperature_callback);

    return ERR_OK;
}
