#include "scheduler.h"
#include "platform.h"
#include <stdint.h>
#include <xil_printf.h>
#include "instrument_control.h"
#include "temperature_control.h"

/**
 * @file scheduler.c
 * @brief Simple cooperative scheduler implementation.
 *
 * Tracks elapsed ticks and sets flags to run periodic tasks at 10ms, 500ms
 * and 1000ms intervals. Only one periodic task is executed per cycle in
 * priority order (1000ms, 500ms, 10ms).
 */

#define PERIOD_10MS 10    /**< 10 ms period for high-rate tasks. */
#define PERIOD_500MS 500  /**< 500 ms period for medium-rate tasks. */
#define PERIOD_1000MS 1000 /**< 1000 ms period for low-rate tasks. */

static uint8_t period_10ms_passed = 0;   /**< Flag set when 10ms period elapsed. */
static uint8_t period_500ms_passed = 0;  /**< Flag set when 500ms period elapsed. */
static uint8_t period_1000ms_passed = 0; /**< Flag set when 1000ms period elapsed. */

/**
 * @brief Execute cyclical tasks based on period flags.
 *
 * Dumps instrument data if requested and executes one periodic task per call
 * in the order: 1000ms tasks, 500ms tasks, 10ms tasks.
 */
void tasks_cyclical(){

    dump_instrument_data();

    /* else if => only do one task each cycle */
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

/**
 * @brief Update internal tick counters and set period flags when thresholds reached.
 *
 * Called from a timer interrupt or main loop at TIMER_INTERVAL_MS intervals.
 */
void schedule_tasks(){
    static uint8_t ticks_10ms = 0;
    static uint8_t ticks_500ms = 0;
    static uint8_t ticks_1000ms = 0;

    ticks_10ms++;
    if (ticks_10ms * TIMER_INTERVAL_MS >= PERIOD_10MS) {
        ticks_10ms = 0;
        period_10ms_passed = 1;
        /* sets 100hz tasks to be performed next cycle */
    }

    ticks_500ms++;
    if (ticks_500ms * TIMER_INTERVAL_MS >= PERIOD_500MS) {
        ticks_500ms = 0;
        period_500ms_passed = 1;
        /* sets 2hz tasks to be performed next cycle */
    }

    ticks_1000ms++;
    if (ticks_1000ms * TIMER_INTERVAL_MS >= PERIOD_1000MS) {
        ticks_1000ms = 0;
        period_1000ms_passed = 1;
    }
}
