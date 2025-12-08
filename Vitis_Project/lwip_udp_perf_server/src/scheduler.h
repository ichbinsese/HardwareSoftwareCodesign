#ifndef __SCHEDULER_H_
#define __SCHEDULER_H_

/**
 * @file scheduler.h
 * @brief Task scheduler interface and timing configuration.
 *
 * Provides the periodic timer interval used by the scheduler and the
 * declarations for scheduling and executing cyclical tasks.
 */

#include <stdio.h>
#include "arch/cc.h"

#define TIMER_INTERVAL_MS 10 /**< Timer tick interval in milliseconds. */

void schedule_tasks();
void tasks_cyclical();

#endif /* __SCHEDULER_H_ */
