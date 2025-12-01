#include "udp_communication_handler.h"


tc_subscriber_function subscribers[7] = {NULL,NULL,NULL,NULL,NULL,NULL,NULL};

void udp_message_callback(void *arg, struct udp_pcb *tpcb, struct pbuf *p, const ip_addr_t *addr, u16_t port,struct udp_pcb *pcb){
    
    if (p != NULL) 
	{
        


        // send received data back to sender
        udp_sendto(pcb, p, addr, port);
        pbuf_free(p); // free the received buffer
        
        //call provide function with correct data, message, sequence counter extracted from message

       
    }
}

void initialize_comm_handler(){
    
}

void subscribe(enum tc_message_type subscribed_message, tc_subscriber_function subscriber){
    subscribers[(int) subscribed_message] = subscriber;
}

void provide(enum tc_message_type message, uint8_t sequence_counter, uint8_t *data){
    tc_subscriber_function subscriber = subscribers[(int) message];
    if(subscriber != NULL) {
        (subscriber)(sequence_counter,data);
    }

}