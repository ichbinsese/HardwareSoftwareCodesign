#include "tm_tc_protocol_handler.h"
#include <stdint.h>
#include "errors.h"
#include "tm_tc_message_handler.h"


uint8_t global_sequence_counter = 0;

uint32_t execute_callback(enum tc_message_type message, uint8_t *data, int data_lenght);
uint32_t send_tm_ack_message(uint8_t sequence_counter);
uint32_t send_tm_exec_message(uint8_t status,uint8_t sequence_counter);


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
        global_sequence_counter = sequence_counter;
        err = send_tm_ack_message(sequence_counter);
        if(err != ERR_OK) {
            send_tm_exec_message(err, sequence_counter);
            return err;
        }
        err = tc_message_callback(message_type, &package[7], data_lenght);
        err = send_tm_exec_message(err, sequence_counter);
        return  err;
}

 uint32_t create_message( uint8_t** packet, enum tm_message_type type, uint8_t* data, uint16_t data_lenght,uint8_t sequence_counter){
    *packet = malloc(sizeof(uint8_t) * (data_lenght + TM_PREAMBLE_LENGHT));    
    (*packet)[0] = START_0;
    (*packet)[1] = START_1;
    (*packet)[2] = TM_PACKAGE_TYPE;
    (*packet)[3] = (uint8_t) type;
    (*packet)[4] = sequence_counter;
    (*packet)[6] = (data_lenght + TM_PREAMBLE_LENGHT) & 0xFF;        
    (*packet)[5] = ((data_lenght + TM_PREAMBLE_LENGHT)>> 8) & 0xFF;
     
    if(data_lenght > 0){
          memcpy((*packet) + TM_PREAMBLE_LENGHT , data, data_lenght * sizeof(uint8_t));
    }               
    return ERR_OK;
}

uint32_t send_tm_message(enum tm_message_type type, uint8_t *data, int data_lenght){
    uint32_t err;
    uint8_t* packet = NULL;
    if(type == TM_Ack || type == TM_Exec) return ERR_ILLEGAL_MESSAGE;
    err = create_message(&packet,type, data, data_lenght,global_sequence_counter);
    err = udp_send_message(packet,TM_PREAMBLE_LENGHT + data_lenght);
    global_sequence_counter++;
    return err;
}

uint32_t send_tm_ack_message(uint8_t sequence_counter){ 
    uint32_t err;
    uint8_t* packet = NULL;
    err = create_message(&packet, TM_Ack, NULL, 0, sequence_counter);
    err = udp_send_message(packet,TM_PREAMBLE_LENGHT);
    return err;
}

uint32_t send_tm_exec_message(uint8_t status,uint8_t sequence_counter){
    uint32_t err;
    uint8_t* packet = NULL;
    err = create_message(&packet, TM_Exec, &status, 1, sequence_counter);
    err = udp_send_message(packet,TM_PREAMBLE_LENGHT + 1);
    return err;
}


