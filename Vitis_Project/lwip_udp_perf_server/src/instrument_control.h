#ifndef __INSTRUMENT_CONTROL_H_
#define __INSTRUMENT_CONTROL_H_

/**
 * @file instrument_control.h
 * @brief Instrument reader and circular buffer interface.
 *
 * Declares the public functions used to initialize and run the instrument
 * sampling, housekeeping and data dump functionality.
 */

#include <stdint.h>

void instrument_cyclic();                                      /**< Periodic sampling function for the instrument. */
uint32_t initialize_instrument();                              /**< Initialize instrument subsystem and bind callbacks. @return ERR_OK on success. */
uint32_t instrument_housekeeping();                             /**< Send housekeeping telemetry if enabled. @return ERR_OK on success. */
uint32_t dump_instrument_data();                                /**< Trigger a dump of the instrument circular buffer. @return ERR_OK on success. */

#endif /* __INSTRUMENT_CONTROL_H_ */
