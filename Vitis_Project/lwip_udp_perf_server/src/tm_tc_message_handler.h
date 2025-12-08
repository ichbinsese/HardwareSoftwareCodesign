#ifndef __TM_TC_PROTOCOL_HANDER_H_
#define __TM_TC_PROTOCOL_HANDER_H_

/**
 * @file tm_tc_message_handler.h
 * @brief TM/TC message handler callback registration and TM send helpers.
 *
 * Declares the callback types used by the TC message dispatcher and the
 * functions used to register callbacks and send TM messages.
 */

#include <stdint.h>
#include "message_types.h"
#include "tm_tc_protocol_handler.h"

#define TM_INSTRUMENT_DATA_MAX_LENGHT (1472 - 8) /**< Maximum payload length for instrument data TM packets. */

typedef uint32_t (*tc_enable_instrument_function) (uint8_t cmd_state); /**< Callback type for enabling instrument. */
typedef uint32_t (*tc_set_receive_state_function) (uint8_t cmd_state); /**< Callback type for setting receive state. */
typedef uint32_t (*tc_dump_instrument_data_function) (void); /**< Callback type for dumping instrument data. */
typedef uint32_t (*tc_read_last_temperature_function) (uint8_t sensor_id); /**< Callback type for reading last temperature. */
typedef uint32_t (*tc_get_average_temperature_function) (uint8_t sensor_id); /**< Callback type for getting average temperature. */
typedef uint32_t (*tc_set_heater_state_function) (uint8_t heater_id,uint8_t heater_state); /**< Callback type for setting heater state. */

uint32_t set_tc_enable_instrument_callback(tc_enable_instrument_function function); /**< Register enable instrument callback. */
uint32_t set_tc_set_receive_state_callback(tc_set_receive_state_function function); /**< Register set receive state callback. */
uint32_t set_tc_dump_instrument_data_callback(tc_dump_instrument_data_function function); /**< Register dump instrument data callback. */
uint32_t set_tc_read_last_temperature_callback(tc_read_last_temperature_function function); /**< Register read last temperature callback. */
uint32_t set_tc_get_average_temperature_callback(tc_read_last_temperature_function function); /**< Register get average temperature callback. */
uint32_t set_tc_set_heater_state_callback(tc_set_heater_state_function function); /**< Register set heater state callback. */

uint32_t send_tm_instrument_data_message(uint16_t *data, int data_lenght); /**< Send instrument data TM messages (may be split). */
uint32_t send_tm_instrument_housekeeping_message(uint8_t receive_state, uint8_t number_bytes_received, uint8_t buffer_overflow); /**< Send housekeeping TM. */
uint32_t send_tm_sensor_temperature_reply(uint8_t sensor_id, uint16_t temp_value); /**< Send sensor temperature reply TM. */

uint32_t tc_message_callback(enum tc_message_type message_type,  uint8_t *data, int data_lenght); /**< Dispatch a TC message to registered callbacks. */

#endif /* __TM_TC_PROTOCOL_HANDER_H_ */
