#ifndef __MESSAGE_CREATOR_H_
#define __MESSAGE_CREATOR_H_
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

#define PREAMBLE_LENGHT 6

enum tm_message_type{
    TM_Ack = 0x01,
    TM_Exec = 0x02,
    TM_instrument_data = 0x03,
    TM_instrument_housekeeping = 0x04,
    TM_sensor_tempertature_reply = 0x05

};


void create_message(struct pbuf* p, enum tm_message_type type, uint8_t* data, uint16_t data_lenght,uint8_t sequence_counter);
void small_to_big_endian(uint8_t* data, int data_lenght);

#endif