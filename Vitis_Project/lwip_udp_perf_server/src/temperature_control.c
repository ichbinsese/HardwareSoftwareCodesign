#include "temperature_control.h"
#include <xil_io.h>
#include "xparameters.h"
#include "errors.h"
#include "tm_tc_message_handler.h"


#define REG_USER_CONTROL_OFFSET 0x00
#define REG_SENSOR1_RAW_OFFSET 0x04
#define REG_SENSOR2_RAW_OFFSET 0x08
#define REG_BACKUP_OFFSET 0x0C

#define REG_USER_CONTROL_ADDR XPAR_TEMP_CONTROL_0_BASEADDR + REG_USER_CONTROL_OFFSET
#define REG_SENSOR1_RAW_ADDR XPAR_TEMP_CONTROL_0_BASEADDR + REG_SENSOR1_RAW_OFFSET   
#define REG_SENSOR2_RAW_ADDR XPAR_TEMP_CONTROL_0_BASEADDR + REG_SENSOR2_RAW_OFFSET
#define REG_BACKUP_ADDR XPAR_TEMP_CONTROL_0_BASEADDR + REG_BACKUP_OFFSET


// Bit positions in user_control_reg
#define HEATER1_BIT   0
#define HEATER2_BIT   1


static uint8_t  heater1_state = 0;
static uint8_t  heater2_state = 0;

static uint16_t last_temp_s1  = 0;
static uint16_t last_temp_s2  = 0;
static uint16_t last_avg_temp = 0;


static void write_heater_states(void)
{
    uint32_t value = 0;

    value |= (uint32_t)(heater1_state & 0x1u) << HEATER1_BIT;
    value |= (uint32_t)(heater2_state & 0x1u) << HEATER2_BIT;

    Xil_Out32(REG_USER_CONTROL_ADDR, value);
}


static void read_sensor_values(void)
{
    last_temp_s1 = (uint16_t)(Xil_In32(REG_SENSOR1_RAW_ADDR) & 0xFFFFu);
    last_temp_s2 = (uint16_t)(Xil_In32(REG_SENSOR2_RAW_ADDR) & 0xFFFFu);

    // Integer average with truncation
    last_avg_temp = (uint16_t)(((uint32_t)last_temp_s1 + (uint32_t)last_temp_s2) / 2u);

}


uint32_t set_heater_state_callback(uint8_t heater_id, uint8_t new_state)
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


uint32_t read_last_temperature_callback(uint8_t sensor_id)
{

    if (sensor_id == 1u)
    {
        return send_tm_sensor_temperature_reply(1u, last_temp_s1);
    }
    else if (sensor_id == 2u)
    {
        return send_tm_sensor_temperature_reply(2u, last_temp_s2);
    }

    return ERR_WRONG_TC_PACKAGE_LENGHT;
}


uint32_t get_average_temperature_callback(uint8_t dummy)
{
    (void)dummy; // avoid unused warning

    return send_tm_temperature_average_message(last_avg_temp);
}


void temperature_control_cyclic(void)
{
    read_sensor_values();
}


uint32_t initialize_temperature_control(void)
{
    // Ensure heaters start OFF in HW and SW
    heater1_state = 0u;
    heater2_state = 0u;
    write_heater_states();

    // Bind to TM/TC message handler
    set_tc_set_heater_state_callback(&set_heater_state_callback);
    set_tc_read_last_temperature_callback(&read_last_temperature_callback);
    set_tc_get_average_temperature_callback(&get_average_temperature_callback);

    return ERR_OK;
}

