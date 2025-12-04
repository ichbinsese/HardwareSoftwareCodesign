#ifndef __TM_TC_PROTOCOL_HANDER_H_
#define __TM_TC_PROTOCOL_HANDER_H_

#include <stdint.h>
#include "message_types.h"
#include "tm_tc_protocol_handler.h"





typedef uint32_t (*tc_enable_instrument_function) (uint8_t cmd_state);
typedef uint32_t (*tc_set_receive_state_function) (uint8_t cmd_state); 
typedef uint32_t (*tc_dump_instrument_data_function) (void); 
typedef uint32_t (*tc_read_last_temperature_function) (uint8_t sensor_id);  
typedef uint32_t (*tc_get_average_temperature_function) (uint8_t sensor_id); 
typedef uint32_t (*tc_set_heater_state_function) (uint8_t heater_id,uint8_t heater_state);   

uint32_t set_tc_enable_instrument_callback(tc_enable_instrument_function function);
uint32_t set_tc_set_receive_state_callback(tc_set_receive_state_function function);
uint32_t set_tc_dump_instrument_data_callback(tc_dump_instrument_data_function function);
uint32_t set_tc_read_last_temperature_callback(tc_read_last_temperature_function function);
uint32_t set_tc_get_average_temperature_callback(tc_read_last_temperature_function function);
uint32_t set_tc_sensor_temperature_reply_callback(tc_set_heater_state_function function);


uint32_t send_tm_instrument_data_message(uint16_t *data, int data_lenght);
uint32_t send_tm_instrument_housekeeping_message(uint8_t receive_state, uint8_t number_bytes_received, uint8_t buffer_overflow);
uint32_t send_tm_sensor_temperature_reply(uint8_t sensor_id, uint16_t temp_value);


uint32_t tc_message_callback(enum tc_message_type message_type,  uint8_t *data, int data_lenght);
#endif 