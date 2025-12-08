#ifndef __TM_TC_PROTOCOL_HANDER_H_
#define __TM_TC_PROTOCOL_HANDER_H_

/**
 * @file tm_tc_protocol_handler.h
 * @brief TM/TC protocol framing and send/receive declarations.
 *
 * Provides framing constants and the public functions used to send TM
 * messages and receive TC packages from the UDP layer.
 */

#include "message_types.h"
#include "udp_communication_handler.h"
#include <string.h>
#include <stdint.h>
#include <stdlib.h>

#define START_0 0xAF /**< Start byte 0 for packet preamble. */
#define START_1 0xFE /**< Start byte 1 for packet preamble. */
#define TM_PACKAGE_TYPE 0x00 /**< Package type value for TM packets. */

#define TM_PREAMBLE_LENGHT 7 /**< Length of TM preamble in bytes. */

uint32_t send_tm_message(enum tm_message_type type, uint8_t *data, int data_lenght); /**< Send a TM message. @return ERR_OK or error code. */
uint32_t receive_message(uint8_t *package, int package_lenght);                      /**< Handle a received TC package. @return ERR_OK or error code. */

#endif /* __TM_TC_PROTOCOL_HANDER_H_ */
