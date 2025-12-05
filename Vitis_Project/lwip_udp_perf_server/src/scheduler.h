#pragma once

#include <stdio.h>
#include "arch/cc.h"

#define TIMER_INTERVAL_MS 10

void schedule_tasks();
void tasks_cyclical();