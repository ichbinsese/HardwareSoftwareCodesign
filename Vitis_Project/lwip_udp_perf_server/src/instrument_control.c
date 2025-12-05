#include "instrument_control.h"
#include <stdint.h>
#include <xil_io.h>
#include "xparameters.h"
#include "errors.h"
#include "tm_tc_message_handler.h"

#define INSTRUMENT_CONTROL_OFFSET 0x00
#define INSTRUMENT_DATA_OFFSET 0x04

#define INSTRUMENT_CONTROL_ADDR XPAR_IP_INSTRUMENTREADER_0_BASEADDR + INSTRUMENT_CONTROL_OFFSET
#define INSTRUMENT_DATA_ADDR XPAR_IP_INSTRUMENTREADER_0_BASEADDR + INSTRUMENT_DATA_OFFSET

#define INSTRUMENT_ENABLE_BIT 0


#define MEMORYSIZE  (1024U)               // example: bytes
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
    uint32_t read_start = 0;

    read_start = read_start | (1 << INSTRUMENT_ENABLE_BIT);
    Xil_Out32(INSTRUMENT_CONTROL_ADDR, read_start);
    result = Xil_In32(INSTRUMENT_DATA_ADDR);

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

    if (count == 0u)
    {
        return ERR_OK;
    }

    const uint32_t max_samples_per_msg = TM_INSTRUMENT_DATA_MAX_LENGHT / sizeof(uint16_t);

    while (count > 0u)
    {
        uint32_t samples_to_send = count;

        // Limit to message capacity
        if (samples_to_send > max_samples_per_msg)
        {
            samples_to_send = max_samples_per_msg;
        }

        uint32_t tail_to_end = BUFFER_CAPACITY - tail; // samples until wrap

        if (samples_to_send <= tail_to_end)
        {
            // Contiguous region: direct send
            send_tm_instrument_data_message(&main_memory[tail],
                                            (int)(samples_to_send * sizeof(uint16_t)));
        }
        else
        {
            // Wrapped region: need a temporary buffer to linearize
            static uint16_t transmit_buffer[TM_INSTRUMENT_DATA_MAX_LENGHT / 2];

            uint32_t first_part = tail_to_end;
            uint32_t second_part = samples_to_send - first_part;

            memcpy(transmit_buffer,
                   &main_memory[tail],
                   first_part * sizeof(uint16_t));

            memcpy(transmit_buffer + first_part,
                   &main_memory[0],
                   second_part * sizeof(uint16_t));

            send_tm_instrument_data_message(transmit_buffer,
                                            (int)(samples_to_send * sizeof(uint16_t)));
        }

        // Advance tail by the number of samples sent
        tail = (tail + samples_to_send) % BUFFER_CAPACITY;
        count -= samples_to_send;
    }
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