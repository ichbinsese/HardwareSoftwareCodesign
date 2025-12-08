#ifndef __UDP_COMMUNICATION_HANDLER_H_
#define __UDP_COMMUNICATION_HANDLER_H_

/**
 * @file udp_communication_handler.h
 * @brief UDP communication glue between lwIP and the TM/TC protocol layer.
 *
 * Declares the callback used by lwIP for incoming UDP packets and the
 * functions used by the protocol layer to send packets back over UDP.
 */

#include "lwipopts.h"
#include "lwip/ip_addr.h"
#include "lwip/err.h"
#include "lwip/udp.h"
#include "lwip/inet.h"
#include "xil_printf.h"
#include "platform.h"
#include "lwip/def.h"
#include <stdint.h>

#define TC_PACKET_TYPE 0x01 /**< Packet type value for TC packets. */

#define TC_PREAMBLE_LENGHT 7 /**< Length of TC preamble in bytes. */

void udp_message_callback(void *arg, struct udp_pcb *tpcb, struct pbuf *p, const ip_addr_t *addr, u16_t port); /**< lwIP UDP receive callback. */
uint32_t receive_message(uint8_t *package, int package_lenght); /**< Forward declaration to protocol handler (implemented elsewhere). */
uint32_t udp_send_message(uint8_t *package, int packet_lenght); /**< Send a packet over UDP to the last known peer. @return ERR_OK or error code. */
uint32_t set_pcb(struct udp_pcb *init_pcb); /**< Set the UDP PCB used for sending. @return ERR_OK on success. */

#endif /* __UDP_COMMUNICATION_HANDLER_H_ */
