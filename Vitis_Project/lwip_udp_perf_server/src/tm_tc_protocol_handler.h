#ifndef __TM_TC_PROTOCOL_HANDER_H_
#define __TM_TC_PROTOCOL_HANDER_H_
#include "message_creator.h"
#include "udp_communication_handler.h"
#include "lwip/pbuf.h"
#include "lwip/udp.h"
#include <string.h>
#include <stdint.h>
#include <stdlib.h>

#define START_0 0xAF
#define START_1 0xFE
#define TM_PACKAGE_TYPE 0x00

#define TM_ACK_LENGHT  0x07
#define TM_EXEC_LENGHT  0x08
#define TM_INSTRUMENT_DATA_MAX_LENGHT  0xFE
#define TM_INSTRUMENT_HOUSEKEEPING_LENGHT  0x0A
#define TM_SENSOR_TEMPERATURE_REPLY_LENGHT  0x0A

#define TM_PREAMBLE_LENGHT 6

enum tm_message_type{
    TM_Ack = 0x01,
    TM_Exec = 0x02,
    TM_instrument_data = 0x03,
    TM_instrument_housekeeping = 0x04,
    TM_sensor_tempertature_reply = 0x05

};


enum tc_message_type{
    TC_enable_instrument = 0x01,
    TC_set_receive_state = 0x02,
    TC_dump_instrument_data = 0x03,
    TC_read_last_temperature_value = 0x04,
    TC_set_heater_state = 0x05,
    TC_get_average_temperature = 0x06
};
typedef uint32_t (*tc_subscriber_function) (uint8_t sequence_counter,uint8_t *data, int data_lenght);

uint32_t send_tm_message(enum tm_message_type type, uint8_t *data, int data_lenght);
uint32_t subscribe(enum tc_message_type subscribed_message, tc_subscriber_function subscriber);
uint32_t receive_message(uint8_t *package, int package_lenght);

#endif