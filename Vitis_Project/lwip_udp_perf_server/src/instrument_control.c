#include "instrument_control.h"
#include <stdint.h>
#include <xil_io.h>
#include "xparameters.h"
#include "errors.h"
#include "tm_tc_message_handler.h"
#include <string.h>

/**
 * @file instrument_control.c
 * @brief Instrument sampling and circular buffer management.
 *
 * Implements reading from the instrument hardware, storing samples in a
 * circular buffer, and providing dump/housekeeping functionality.
 */

#define INSTRUMENT_CONTROL_OFFSET 0x00 /**< Offset for instrument control register. */
#define INSTRUMENT_DATA_OFFSET 0x04 /**< Offset for instrument data register. */

#define INSTRUMENT_CONTROL_ADDR (XPAR_INSTRUMENT_READER_0_BASEADDR + INSTRUMENT_CONTROL_OFFSET) /**< Instrument control register address. */
#define INSTRUMENT_DATA_ADDR (XPAR_INSTRUMENT_READER_0_BASEADDR + INSTRUMENT_DATA_OFFSET) /**< Instrument data register address. */

#define INSTRUMENT_ENABLE_BIT 0 /**< Bit used to trigger a read from the instrument. */

#define MEMORYSIZE  (200000U)               /**< Example memory size in bytes. */
#define BUFFER_CAPACITY (MEMORYSIZE / 2)  /**< Number of uint16_t entries the buffer can hold. */

/* Circular buffer storage */
static uint16_t main_memory[BUFFER_CAPACITY]; /**< Circular buffer for samples. */

static uint32_t head = 0;   /**< Index where next write will go (0..BUFFER_CAPACITY-1). */
static uint32_t tail = 0;   /**< Index of oldest element (0..BUFFER_CAPACITY-1). */
static uint32_t count = 0;  /**< Number of elements currently stored (0..BUFFER_CAPACITY). */

static uint8_t instrument_enable = 0; /**< Instrument enabled flag. */
static uint8_t tc_receive_state = 0;  /**< TC receive state flag. */
static uint8_t dump_instrument_data_flag = 0; /**< Flag to trigger data dump. */
static uint8_t overflow = 0;        /**< True if at least one overwrite has occurred. */

/* Internal helper prototypes (static) */
static uint16_t read_instrument_val(void);
static void ring_push(uint16_t sample);
static uint8_t bytes_read(void);

/**
 * @brief Read a single sample from the instrument hardware.
 *
 * Toggles the instrument enable bit to trigger a read and returns the 16-bit
 * sample value read from the data register.
 *
 * @return 16-bit instrument sample.
 */
static uint16_t read_instrument_val()
{
    uint32_t result;
    uint32_t read_start = (1 << INSTRUMENT_ENABLE_BIT);

    Xil_Out32(INSTRUMENT_CONTROL_ADDR, read_start);
    result = Xil_In32(INSTRUMENT_DATA_ADDR);
    read_start = 0;
    Xil_Out32(INSTRUMENT_CONTROL_ADDR, read_start);

    return (uint16_t)result;
}

/**
 * @brief Push a sample into the circular buffer.
 *
 * Writes the sample at head, advances head and adjusts tail/count/overflow
 * accordingly.
 *
 * @param sample 16-bit sample to store.
 */
static void ring_push(uint16_t sample)
{
    /* write sample at head */
    main_memory[head] = sample;

    /* advance head */
    head = (head + 1u) % BUFFER_CAPACITY;

    if (tail == head)
    {
        tail = (tail + 1u) % BUFFER_CAPACITY;
    }

    if (count == BUFFER_CAPACITY)
    {
        overflow = 1;
    }
    else
    {
        count++;
    }
}

/**
 * @brief Return the number of bytes currently stored in the buffer, capped to UINT8_MAX.
 *
 * @return Number of bytes stored (uint8_t, capped).
 */
static uint8_t bytes_read()
{
    uint32_t bytes = count * sizeof(uint16_t);

    if (bytes >= UINT8_MAX)
    {
        return UINT8_MAX;
    }
    return bytes;
}

/**
 * @brief Periodic instrument sampling function.
 *
 * If the instrument is enabled and TC receive state is active, read a sample
 * and push it into the circular buffer.
 */
void instrument_cyclic(void)
{
    if (tc_receive_state == 1u && instrument_enable == 1u)
    {
        uint16_t instrument_val = read_instrument_val();

        ring_push(instrument_val);
    }
}

/**
 * @brief Callback to enable or disable the instrument.
 *
 * @param enable_in Non-zero to enable, zero to disable.
 * @return ERR_OK on success.
 */
static uint32_t enable_instrument_callback(uint8_t enable_in)
{
    instrument_enable = enable_in;
    return ERR_OK;
}

/**
 * @brief Callback to set the TC receive state.
 *
 * Only updates the receive state if the instrument is enabled.
 *
 * @param recevie_state_in New receive state.
 * @return ERR_OK on success.
 */
static uint32_t tc_receive_state_callback(uint8_t recevie_state_in)
{
    if (instrument_enable == 1)
    {
        tc_receive_state = recevie_state_in;
    }
    return ERR_OK;
}

/**
 * @brief Callback to request a dump of instrument data.
 *
 * Sets a flag that will cause dump_instrument_data() to run in the main loop.
 *
 * @return ERR_OK on success.
 */
static uint32_t dump_instrument_data_callback(void)
{
    dump_instrument_data_flag = 1;
    return ERR_OK;
}

/**
 * @brief Perform a dump of the circular buffer and send it via TM messages.
 *
 * Copies the circular buffer into a contiguous dump buffer ordered from tail→head,
 * sends it using send_tm_instrument_data_message and resets buffer state.
 *
 * @return ERR_OK on success or an error code.
 */
uint32_t dump_instrument_data()
{
    if (instrument_enable != 1u || tc_receive_state != 1u || dump_instrument_data_flag != 1u)
    {
        return ERR_OK;
    }

    const uint32_t total_samples = BUFFER_CAPACITY;
    static uint16_t dump_buffer[BUFFER_CAPACITY];

    uint32_t pos = tail;
    uint32_t idx = 0;

    /* Copy block tail → end */
    uint32_t tail_to_end = BUFFER_CAPACITY - tail;
    memcpy(&dump_buffer[idx],
           &main_memory[pos],
           tail_to_end * sizeof(uint16_t));
    idx += tail_to_end;

    /* Copy block start → head */
    memcpy(&dump_buffer[idx],
           &main_memory[0],
           (BUFFER_CAPACITY - tail_to_end) * sizeof(uint16_t));

    /* At this point, dump_buffer contains the full memory ordered from tail→head */

    /* Hand off buffer to existing message-sending function */
    send_tm_instrument_data_message(dump_buffer, total_samples);

    /* Reset circular buffer state if desired */
    count = 0;
    overflow = 0;
    dump_instrument_data_flag = 0;

    return ERR_OK;
}

/**
 * @brief Initialize instrument subsystem and register TC callbacks.
 *
 * @return ERR_OK on success.
 */
uint32_t initialize_instrument()
{
    set_tc_set_receive_state_callback(&tc_receive_state_callback);
    set_tc_enable_instrument_callback(&enable_instrument_callback);
    set_tc_dump_instrument_data_callback(&dump_instrument_data_callback);
    return ERR_OK;
}

/**
 * @brief Send instrument housekeeping TM message if instrument enabled.
 *
 * @return ERR_OK on success.
 */
uint32_t instrument_housekeeping()
{
    if (instrument_enable == 1)
    {
        send_tm_instrument_housekeeping_message(tc_receive_state, bytes_read(), overflow);
    }
    return ERR_OK;
}
