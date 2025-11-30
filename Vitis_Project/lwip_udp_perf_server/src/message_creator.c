#include "message_creator.h"
#include <string.h>
#include <stdint.h>
#include <stdlib.h>

struct pbuf* create_message(enum tm_message_type type, uint8_t* data, uint16_t data_lenght,uint8_t sequence_counter){
    uint8_t* packet = malloc(sizeof(uint8_t) * (data_lenght + PREAMBLE_LENGHT));    
    packet[0] = START_0;
    packet[1] = START_1;
    packet[2] = TM_PACKAGE_TYPE;
    packet[3] = (uint8_t) type;
    packet[4] = sequence_counter;
    packet[5] = (data_lenght + PREAMBLE_LENGHT) & 0xFF;        
    packet[6] = ((data_lenght + PREAMBLE_LENGHT)>> 8) & 0xFF;
    memcpy(packet + PREAMBLE_LENGHT + 1, data, data_lenght * sizeof(uint8_t));
                            //maybe + 0 idk
    struct pbuf *p;

    p = pbuf_alloc(PBUF_TRANSPORT, PREAMBLE_LENGHT + data_lenght, PBUF_RAM);
    memcpy(p->payload, packet, PREAMBLE_LENGHT + data_lenght);

    free(packet);
    //remember to free
    return p;
}

void small_to_big_endian(uint8_t* data, int data_lenght){
    uint8_t* temp = malloc(sizeof(uint8_t) * data_lenght);    
    memcpy(temp,data,sizeof(uint8_t) * data_lenght);
    for(int i = 0; i < data_lenght; i++){
        data[i] = temp[data_lenght - 1 - i];
    }
    free(temp);
}