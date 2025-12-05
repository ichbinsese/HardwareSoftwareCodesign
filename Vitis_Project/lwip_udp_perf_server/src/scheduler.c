#include "scheduler.h"
#include "platform.h"
#include <stdint.h>
#include <xil_printf.h>
#include "instrument_control.h"

#define PERIOD_10MS 10
#define PERIOD_500MS 500

static uint8_t period_10ms_passed = 0;
static uint8_t period_500ms_passed = 0;

void tasks_cyclical(){
    // else if => only do one task each cycle
	if (period_500ms_passed == 1)
	{
		period_500ms_passed = 0;
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
}