#ifndef __TM_TC_PROTOCOL_HANDER_H_
#define __TM_TC_PROTOCOL_HANDER_H_

#include <stdint.h>
#include "message_types.h"

uint32_t subscribe_to_message(enum tc_message_type subscribed_message, tc_subscriber_function subscriber);



uint32_t send_tm_instrument_data_message(uint8_t *data, int data_lenght);
uint32_t send_tm_instrument_housekeeping_message(uint8_t receive_state, uint8_t number_bytes_received, uint8_t buffer_overflow);
uint32_t send_tm_instrument_data_reply(uint8_t sensor_id, uint16_t temp_value);

#endif 