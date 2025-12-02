#include "udp_communication_handler.h"
#include "lwip/err.h"
#include "lwip/pbuf.h"
#include <stdint.h>
#include <stdlib.h>
#include <xil_printf.h>
#include "tm_tc_protocol_handler.h"
#include "errors.h"


ip_addr_t *last_received_address;
u16_t last_received_port;

struct udp_pcb *pcb;



void udp_message_callback(void *arg, struct udp_pcb *tpcb, struct pbuf *p, const ip_addr_t *addr, u16_t port){
    
    if (p != NULL) 
	{
        last_received_address = addr;
        last_received_port = port;
        xil_printf("%d",addr->addr);

        struct pbuf *q;
        q = p;
        int offset = 0;
        uint8_t buffer[100];
        while (q != NULL) {
            memcpy(&buffer[offset], q->payload, q->len);
            offset +=  q->len;
            q = q->next;
        }
        pbuf_free(p);
        receive_message(&buffer[0], offset);
    }
}

uint32_t udp_send_message(struct pbuf *p){
    uint32_t err;
    err_t udp_error;
    if (last_received_address != NULL) 
	{
        if(p != NULL ){
            udp_error = udp_sendto(pcb, p, last_received_address, last_received_port);
            xil_printf("%d",udp_error);
        }
        err = ERR_OK;
    }
    else {
        err = ERR_IP_NOT_INIT;
    }
    pbuf_free(p);
    return (uint32_t) err;
}


uint32_t set_pcb(struct udp_pcb *init_pcb){
    pcb = init_pcb;
    return ERR_OK;
}

