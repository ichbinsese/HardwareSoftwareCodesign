#include "udp_communication_handler.h"

//static struct udp_pcb *pcb;

void udp_message_callback(void *arg, struct udp_pcb *tpcb, struct pbuf *p, const ip_addr_t *addr, u16_t port){
    if (p != NULL) 
	{
        // send received data back to sender
       // udp_sendto(pcb, p, addr, port);
       // pbuf_free(p); // free the received buffer
    }
}