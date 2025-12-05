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

#define KILOBYTE 1000
#define MEMORYSIZE 20 //200 * KILOBYTE


static uint16_t main_memory[MEMORYSIZE / 2];
static uint8_t instrument_enable = 0;
static uint8_t tc_receive_state = 0;
static uint8_t overflow = 0;
static uint8_t bytes_read = 0;

static uint16_t* oldest_data_addr;
static uint16_t* neweset_data_addr;

uint16_t read_instrument_val()
{
    uint32_t result;
    uint32_t read_start = 0;

    read_start = read_start | (1 << INSTRUMENT_ENABLE_BIT);
    Xil_Out32(INSTRUMENT_CONTROL_ADDR, read_start);
    result = Xil_In32(INSTRUMENT_DATA_ADDR);

    return (uint16_t)result;
}

void instrument_cyclic()
{
    if (tc_receive_state == 1 && instrument_enable == 1)
    {
        static uint32_t cur_memory_location = UINT32_MAX;
        cur_memory_location += 1;

        if (cur_memory_location == MEMORYSIZE/2)
        {
            cur_memory_location = 0;
            overflow = 1;
        }

        uint16_t instrument_val = read_instrument_val();
        main_memory[cur_memory_location] = instrument_val; 

        if (bytes_read == UINT8_MAX - 1)
        {
            bytes_read = UINT8_MAX;
        }
        else 
        {
            bytes_read += 2;
        }
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

uint32_t dump_instrument_data_callback()
{

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
        send_tm_instrument_housekeeping_message(tc_receive_state, bytes_read, overflow);
    }
    return ERR_OK;
}