#ifndef __UDP_COMMUNICATION_HANDLER_H_
#define __UDP_COMMUNICATION_HANDLER_H_

#include "lwipopts.h"
#include "lwip/ip_addr.h"
#include "lwip/err.h"
#include "lwip/udp.h"
#include "lwip/inet.h"
#include "xil_printf.h"
#include "platform.h"
#include "lwip/def.h"
#include <stdint.h>

#define TC_PACKET_TYPE 0x01

#define TC_PREAMBLE_LENGHT 6


void udp_message_callback(void *arg, struct udp_pcb *tpcb, struct pbuf *p, const ip_addr_t *addr, u16_t port);
uint32_t receive_message(uint8_t *package, int package_lenght);
uint32_t udp_send_message(uint8_t *package, int package_lenght);
uint32_t set_pcb(struct udp_pcb *init_pcb);


#endif