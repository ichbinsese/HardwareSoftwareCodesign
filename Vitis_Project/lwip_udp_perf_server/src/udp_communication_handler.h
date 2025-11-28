#ifndef __UDP_COMMUNICATION_HANDLER_H_
#define __UDP_COMMUNICATION_HANDLER_H_

#include "lwipopts.h"
#include "lwip/ip_addr.h"
#include "lwip/err.h"
#include "lwip/udp.h"
#include "lwip/inet.h"
#include "xil_printf.h"
#include "platform.h"

void udp_message_callback(void *arg, struct udp_pcb *tpcb, struct pbuf *p, const ip_addr_t *addr, u16_t port);

#endif