#ifndef __TEMPERATURE_CONTROL_H_
#define __TEMPERATURE_CONTROL_H_

/**
 * @file temperature_control.h
 * @brief Temperature control module public interface.
 *
 * Exposes initialization and cyclic processing functions for the
 * temperature control subsystem. Callbacks used by the TM/TC message
 * handler are registered from the implementation.
 */

#include <stdint.h>

uint32_t initialize_temperature_control(void); /**< Initialize temperature control subsystem. @return ERR_OK on success or an error code. */
void     temperature_control_cyclic(void);     /**< Periodic processing for temperature control. */

#endif /* __TEMPERATURE_CONTROL_H_ */
