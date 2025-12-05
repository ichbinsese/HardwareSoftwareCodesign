#include "arch/cc.h"
#include "scheduler.h"

#ifndef __PLATFORM_H_
#define __PLATFORM_H_

#ifdef __cplusplus
extern "C" {
#endif

void init_platform();
void cleanup_platform();
#ifdef SDT
void init_timer();
#endif
#ifdef __MICROBLAZE__
void timer_callback();
#endif
void platform_setup_timer();
void platform_enable_interrupts();
u64_t get_time_ms();

#ifdef __cplusplus
}
#endif

#endif
