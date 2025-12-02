#include "tm_tc_protocol_handler.h"
#include <stdint.h>
#include "lwip/err.h"
#include "lwip/ip4_addr.h"
#include "udp_protocol_handler.h"
#include "errors.h"

tc_subscriber_function subscribers[7] = {NULL,NULL,NULL,NULL,NULL,NULL,NULL};
//uint8_t sequence_counters[7] = {0,0,0,0,0,0,0};

uint32_t provide(enum tc_message_type message, uint8_t sequence_counter, uint8_t *data, int data_lenght);
uint32_t send_tm_ack_message(uint8_t sequence_counter);
uint32_t send_tm_exec_message(uint8_t status,uint8_t sequence_counter);
uint8_t get_sequence_counter(enum tm_message_type message);

uint32_t receive_message(uint8_t *package, int package_lenght){
        uint32_t err;
        if(package[2] != TC_PACKET_TYPE){
            xil_printf("received corrupt or wrong package, package type not 0x01");
            return ERR_WRONG_PACKAGE_TYPE;
        }
        enum tc_message_type message_type = (enum tc_message_type) package[3];
        uint8_t sequence_counter = package[4];
        uint16_t nominal_package_lenght = ((uint16_t)package[5] << 8) | package[6];
        if(nominal_package_lenght!= package_lenght){
            xil_printf("received corrupt or wrong package, stated package lenght does not match actual lenght");
            return ERR_WRONG_PACKAGE_LENGHT;
        }
        int data_lenght = package_lenght - TC_PREAMBLE_LENGHT;
        err = send_tm_ack_message(sequence_counter);
        if(err != ERR_OK) {
            send_tm_exec_message(err, sequence_counter);
            return err;
        }
        err = provide(message_type, sequence_counter, &package[7], data_lenght);
        err = send_tm_exec_message(1, sequence_counter);
        return  err;
}

 uint32_t create_message(struct pbuf** p, enum tm_message_type type, uint8_t* data, uint16_t data_lenght,uint8_t sequence_counter){
    uint8_t* packet = malloc(sizeof(uint8_t) * (data_lenght + TM_PREAMBLE_LENGHT));    
    packet[0] = START_0;
    packet[1] = START_1;
    packet[2] = TM_PACKAGE_TYPE;
    packet[3] = (uint8_t) type;
    packet[4] = sequence_counter;
    packet[6] = (data_lenght + TM_PREAMBLE_LENGHT) & 0xFF;        
    packet[5] = ((data_lenght + TM_PREAMBLE_LENGHT)>> 8) & 0xFF;
    for(int i = 0; i < 7; i++){
        xil_printf("%x", packet[i]);
    }

    if(data_lenght > 0){
          memcpy(packet + TM_PREAMBLE_LENGHT , data, data_lenght * sizeof(uint8_t));
                                     //maybe + 0 idk
    }               
    *p = pbuf_alloc(PBUF_TRANSPORT, TM_PREAMBLE_LENGHT + data_lenght, PBUF_RAM);
    memcpy((*p)->payload, packet, TM_PREAMBLE_LENGHT + data_lenght);
    free(packet);


    return ERR_OK;
}

uint32_t send_tm_message(enum tm_message_type type, uint8_t *data, int data_lenght,uint8_t sequence_counter){
    uint32_t err;
    struct pbuf *p;

    if(type == TM_Ack || type == TM_Exec) return ERR_ILLEGAL_MESSAGE;

    //uint8_t sequence_counter = sequence_counters[(int) type];
    err = create_message(&p, type, data, data_lenght,sequence_counter);
    err = udp_send_message(p);
    //sequence_counters[(int) type] = sequence_counters[(int) type] + 1;
    return err;
}

uint32_t send_tm_ack_message(uint8_t sequence_counter){
    uint32_t err;
    struct pbuf *p;
    err = create_message(&p, TM_Ack, NULL, 0, sequence_counter);

    err = udp_send_message(p);
    return err;
}

uint32_t send_tm_exec_message(uint8_t status,uint8_t sequence_counter){
    uint32_t err;
    struct pbuf *p;
    err = create_message(&p, TM_Exec, &status, 1, sequence_counter);
    err = udp_send_message(p);
    return err;
}

uint32_t small_to_big_endian(uint8_t* data, int data_lenght){
    uint8_t* temp = malloc(sizeof(uint8_t) * data_lenght);    
    memcpy(temp,data,sizeof(uint8_t) * data_lenght);
    for(int i = 0; i < data_lenght; i++){
        data[i] = temp[data_lenght - 1 - i];
    }
    free(temp);
    return ERR_OK;
}

uint32_t subscribe(enum tc_message_type subscribed_message, tc_subscriber_function subscriber){
    subscribers[(int) subscribed_message] = subscriber;
}

uint32_t provide(enum tc_message_type message, uint8_t sequence_counter, uint8_t *data, int data_lenght){
    tc_subscriber_function subscriber = subscribers[(int) message];
    if(subscriber != NULL) {
       return (subscriber)(sequence_counter,data,data_lenght);
    }
    else return ERR_TC_MESSAGE_NOT_BOUND;
}