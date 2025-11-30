#ifndef __UDP_COMMUNICATION_HANDLER_H_
#define __UDP_COMMUNICATION_HANDLER_H_

#include "lwipopts.h"
#include "lwip/ip_addr.h"
#include "lwip/err.h"
#include "lwip/udp.h"
#include "lwip/inet.h"
#include "xil_printf.h"
#include "platform.h"

enum tc_message_type{
    TC_enable_instrument = 0x01,
    TC_set_receive_state = 0x02,
    TC_dump_instrument_data = 0x03,
    TC_read_last_temperature_value = 0x04,
    TC_set_heater_state = 0x05,
    TC_get_average_temperature = 0x06
};

typedef void (*tc_subscriber_function) (uint8_t sequence_counter,uint8_t *data);

void udp_message_callback(void *arg, struct udp_pcb *tpcb, struct pbuf *p, const ip_addr_t *addr, u16_t port);
void initialize_comm_handler();
void subscribe(enum tc_message_type subscribed_message, tc_subscriber_function subscriber);

#endif