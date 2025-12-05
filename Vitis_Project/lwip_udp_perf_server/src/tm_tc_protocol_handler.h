#ifndef __TM_TC_PROTOCOL_HANDER_H_
#define __TM_TC_PROTOCOL_HANDER_H_

#include "message_types.h"
#include "udp_communication_handler.h"
#include <string.h>
#include <stdint.h>
#include <stdlib.h>


#define START_0 0xAF
#define START_1 0xFE
#define TM_PACKAGE_TYPE 0x00


#define TM_PREAMBLE_LENGHT 7



uint32_t send_tm_message(enum tm_message_type type, uint8_t *data, int data_lenght);
uint32_t receive_message(uint8_t *package, int package_lenght);

#endif