#include "instrument_control.h"
#include <stdint.h>
#include <xil_io.h>
#include "xparameters.h"
#include "errors.h"

#define INSTRUMENT_CONTROL_OFFSET 0x00
#define INSTRUMENT_DATA_OFFSET 0x04

#define INSTRUMENT_CONTROL_ADDR XPAR_IP_INSTRUMENTREADER_0_BASEADDR + INSTRUMENT_CONTROL_OFFSET
#define INSTRUMENT_DATA_ADDR XPAR_IP_INSTRUMENTREADER_0_BASEADDR + INSTRUMENT_DATA_OFFSET

#define INSTRUMENT_ENABLE_BIT 0

#define KILOBYTE 1000
#define MEMORYSIZE 20 //200 * KILOBYTE

static uint16_t main_memory[MEMORYSIZE / 2];
static uint8_t control_enable = 1;
static uint8_t overflow = 0;
static uint8_t bytes_read = 0;

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
    if (control_enable == 1)
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
    control_enable = enable_in;
    return ERR_OK;
}