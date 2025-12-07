#include "instrument_control.h"
#include <stdint.h>
#include <xil_io.h>
#include "xparameters.h"
#include "errors.h"
#include "tm_tc_message_handler.h"

#define INSTRUMENT_CONTROL_OFFSET 0x00
#define INSTRUMENT_DATA_OFFSET 0x04

#define INSTRUMENT_CONTROL_ADDR (XPAR_INSTRUMENT_READER_0_BASEADDR + INSTRUMENT_CONTROL_OFFSET)
#define INSTRUMENT_DATA_ADDR (XPAR_INSTRUMENT_READER_0_BASEADDR + INSTRUMENT_DATA_OFFSET)

#define INSTRUMENT_ENABLE_BIT 0


#define MEMORYSIZE  (200000U)               // example: bytes
#define BUFFER_CAPACITY (MEMORYSIZE / 2)  // number of uint16_t entries


static uint16_t main_memory[BUFFER_CAPACITY];

static uint32_t head = 0;   // index where next write will go (0..BUFFER_CAPACITY-1)
static uint32_t tail = 0;   // index of oldest element (0..BUFFER_CAPACITY-1)
static uint32_t count = 0;  // number of elements currently stored (0..BUFFER_CAPACITY)

static uint8_t instrument_enable = 0;
static uint8_t tc_receive_state = 0;
static uint8_t overflow = 0;        // true if at least one overwrite has occurred

uint16_t read_instrument_val()
{
    uint32_t result;
    uint32_t read_start = (1 << INSTRUMENT_ENABLE_BIT);

    Xil_Out32(INSTRUMENT_CONTROL_ADDR, read_start);
    result = Xil_In32(INSTRUMENT_DATA_ADDR);
    Xil_Out32(INSTRUMENT_CONTROL_ADDR, read_start);

    return (uint16_t)result;
}

static void ring_push(uint16_t sample)
{
    // write sample at head
    main_memory[head] = sample;

    // advance head
    head = (head + 1u) % BUFFER_CAPACITY;

    if (count == BUFFER_CAPACITY)
    {
        overflow = 1;
        tail = (tail + 1u) % BUFFER_CAPACITY;
    }
    else
    {
        count++;
    }
}

static uint8_t bytes_read()
{
    uint32_t bytes = count * sizeof(uint16_t);

    if (bytes >= UINT8_MAX)
    {
        return UINT8_MAX;
    }
    return bytes;
}

void instrument_cyclic(void)
{
    if (tc_receive_state == 1u && instrument_enable == 1u)
    {
        uint16_t instrument_val = read_instrument_val(); 

        ring_push(instrument_val);
    }
}

uint32_t enable_instrument_callback(uint8_t enable_in)
{
    instrument_enable = enable_in;
    return ERR_OK;
}

uint32_t tc_receive_state_callback(uint8_t recevie_state_in)
{
    if (instrument_enable == 1)
    {
        tc_receive_state = recevie_state_in;
    }
    return ERR_OK;
}

uint32_t dump_instrument_data_callback(void)
{
    if (instrument_enable != 1u || tc_receive_state != 1u)
    {
        return ERR_OK;
    }

    const uint32_t total_samples = BUFFER_CAPACITY;
    static uint16_t dump_buffer[BUFFER_CAPACITY];

    uint32_t pos = tail;
    uint32_t idx = 0;

    // Copy block tail → end
    uint32_t tail_to_end = BUFFER_CAPACITY - tail;
    memcpy(&dump_buffer[idx],
           &main_memory[pos],
           tail_to_end * sizeof(uint16_t));
    idx += tail_to_end;

    // Copy block start → head
    memcpy(&dump_buffer[idx],
           &main_memory[0],
           (BUFFER_CAPACITY - tail_to_end) * sizeof(uint16_t));

    // At this point, dump_buffer contains the full memory ordered from tail→head

    // Hand off buffer to existing message-sending function
    send_tm_instrument_data_message(dump_buffer, total_samples);

    // Reset circular buffer state if desired
    head = 0;
    tail = 0;
    count = 0;
    overflow = 0;

    return ERR_OK;
}

uint32_t initialize_instrument()
{
    set_tc_set_receive_state_callback(&tc_receive_state_callback);
    set_tc_enable_instrument_callback(&enable_instrument_callback);
    set_tc_dump_instrument_data_callback(&dump_instrument_data_callback);
    return ERR_OK;
}

uint32_t instrument_housekeeping()
{
    if (instrument_enable == 1)
    {
        send_tm_instrument_housekeeping_message(tc_receive_state, bytes_read(), overflow);
    }
    return ERR_OK;
}