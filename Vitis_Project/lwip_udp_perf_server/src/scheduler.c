#include "scheduler.h"
#include "platform.h"
#include <stdint.h>
#include <xil_printf.h>
#include "instrument_control.h"
#include "temperature_control.h"

#define PERIOD_10MS 10
#define PERIOD_500MS 500
#define PERIOD_1000MS 1000

static uint8_t period_10ms_passed = 0;
static uint8_t period_500ms_passed = 0;
static uint8_t period_1000ms_passed = 0;

void tasks_cyclical(){

    dump_instrument_data();

    // else if => only do one task each cycle
	if (period_1000ms_passed == 1)
	{
		period_1000ms_passed = 0;
        instrument_housekeeping();
	}

    else if(period_500ms_passed == 1)
	{
		period_500ms_passed = 0;
        temperature_control_cyclic();

	}

	else if(period_10ms_passed == 1)
	{
		period_10ms_passed = 0;
        instrument_cyclic();
	}
}

void schedule_tasks(){
	static uint8_t ticks_10ms = 0;
    static uint8_t ticks_500ms = 0;
    static uint8_t ticks_1000ms = 0;

    ticks_10ms++;
    if (ticks_10ms * TIMER_INTERVAL_MS >= PERIOD_10MS) {
        ticks_10ms = 0;
        period_10ms_passed = 1;
        // sets 100hz tasks to be performed next cycle
    }

    ticks_500ms++;
    if (ticks_500ms * TIMER_INTERVAL_MS >= PERIOD_500MS) {
        ticks_500ms = 0;
        period_500ms_passed = 1;
        // sets 2hz tasks to be performed next cycle
    }

    ticks_1000ms++;
    if (ticks_1000ms * TIMER_INTERVAL_MS >= PERIOD_1000MS) {
        ticks_1000ms = 0;
        period_1000ms_passed = 1;
    }
}