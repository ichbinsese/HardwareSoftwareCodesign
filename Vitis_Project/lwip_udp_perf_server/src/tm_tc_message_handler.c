
#include "tm_tc_message_handler.h"
#include "errors.h"
#include <stdint.h>
#include <stdlib.h>
#include <string.h>

#define TC_ENABLE_INSTRUMET_DATA_LENGHT 1
#define TC_SET_RECEIVE_STATE_DATA_LENGHT 1
#define TC_DUMP_INSTRUMENT_DATA_DATA_LENGHT 0
#define TC_READ_LAST_TEMPERATURE_DATA_LENGHT 1
#define TC_GET_AVERAGE_TEMPERATURE_DATA_LENGHT 1
#define TC_SET_HEATER_STATE_DATA_LENGHT 2

#define TM_ACK_DATA_LENGHT  0
#define TM_EXEC_DATA_LENGHT  1
#define TM_INSTRUMENT_DATA_MAX_LENGHT 248
#define TM_INSTRUMENT_HOUSEKEEPING_DATA_LENGHT 3
#define TM_SENSOR_TEMPERATURE_REPLY_DATA_LENGHT 3


tc_enable_instrument_function tc_enable_instrument_callback_function = NULL;
tc_set_receive_state_function tc_set_receive_state_callback_function = NULL;
tc_dump_instrument_data_function tc_dump_instrument_data_callback_function = NULL;
tc_read_last_temperature_function tc_read_last_temperature_callback_function = NULL;
tc_get_average_temperature_function tc_get_average_temperature_callback_function = NULL;
tc_set_heater_state_function tc_set_heater_state_callback_function = NULL;

uint32_t handle_tc_enable_instrument_callback(uint8_t *data, int data_lenght);
uint32_t handle_tc_set_receive_state_callback(uint8_t *data, int data_lenght);
uint32_t handle_tc_dump_instrument_data_callback(uint8_t *data, int data_lenght);
uint32_t handle_tc_read_last_temperature_callback(uint8_t *data, int data_lenght);
uint32_t handle_tc_get_average_temperature_callback(uint8_t *data, int data_lenght);
uint32_t handle_tc_set_heater_state_callback(uint8_t *data, int data_lenght);

uint32_t small_to_big_endian(uint8_t* data, int data_lenght){
    uint8_t* temp = malloc(sizeof(uint8_t) * data_lenght);    
    memcpy(temp,data,sizeof(uint8_t) * data_lenght);
    for(int i = 0; i < data_lenght; i++){
        data[i] = temp[data_lenght - 1 - i];
    }
    free(temp);
    return ERR_OK;
}

uint32_t tc_message_callback(enum tc_message_type message_type,  uint8_t *data, int data_lenght){
    switch (message_type) {
        case TC_enable_instrument:
            return handle_tc_enable_instrument_callback(data, data_lenght);
        case TC_set_receive_state:
            return handle_tc_set_receive_state_callback(data, data_lenght);
        case TC_dump_instrument_data:
            return handle_tc_dump_instrument_data_callback(data, data_lenght);
        case TC_read_last_temperature_value:
            return handle_tc_read_last_temperature_callback(data, data_lenght);
        case TC_set_heater_state:
            return handle_tc_get_average_temperature_callback(data, data_lenght);
        case TC_get_average_temperature:
            return handle_tc_set_heater_state_callback(data, data_lenght);
      break;
    }
}





uint32_t set_tc_enable_instrument_callback(tc_enable_instrument_function function){
    tc_enable_instrument_callback_function = function;
    return ERR_OK;
}
uint32_t set_tc_set_receive_state_callback(tc_set_receive_state_function function){
    tc_set_receive_state_callback_function = function;
    return ERR_OK;
}
uint32_t set_tc_dump_instrument_data_callback(tc_dump_instrument_data_function function){
    tc_dump_instrument_data_callback_function = function;
    return ERR_OK;
}
uint32_t set_tc_read_last_temperature_callback(tc_read_last_temperature_function function){
    tc_read_last_temperature_callback_function = function;
    return ERR_OK;
}
uint32_t set_tc_get_average_temperature_callback(tc_read_last_temperature_function function){
    tc_get_average_temperature_callback_function = function;
    return ERR_OK;
}
uint32_t set_tc_sensor_temperature_reply_callback(tc_set_heater_state_function function){
    tc_set_heater_state_callback_function = function;
    return ERR_OK;
}

uint32_t handle_tc_enable_instrument_callback(uint8_t *data, int data_lenght){
    if(data_lenght != TC_ENABLE_INSTRUMET_DATA_LENGHT){
        return ERR_WRONG_TC_PACKAGE_LENGHT;
    }
    if(tc_enable_instrument_callback_function == NULL){
        return ERR_TC_MESSAGE_NOT_BOUND;
    }
    return tc_enable_instrument_callback_function(data[0]);
}
uint32_t handle_tc_set_receive_state_callback(uint8_t *data, int data_lenght){
    if(data_lenght != TC_SET_RECEIVE_STATE_DATA_LENGHT){
        return ERR_WRONG_TC_PACKAGE_LENGHT;
    }
    if(tc_set_receive_state_callback_function == NULL){
        return ERR_TC_MESSAGE_NOT_BOUND;
    }
    return tc_set_receive_state_callback_function(data[0]);
}
uint32_t handle_tc_dump_instrument_data_callback(uint8_t *data, int data_lenght){
    if(data_lenght != TC_DUMP_INSTRUMENT_DATA_DATA_LENGHT){
        return ERR_WRONG_TC_PACKAGE_LENGHT;
    }
    if(tc_dump_instrument_data_callback_function == NULL){
        return ERR_TC_MESSAGE_NOT_BOUND;
    }
    return tc_dump_instrument_data_callback_function();
}
uint32_t handle_tc_read_last_temperature_callback(uint8_t *data, int data_lenght){
    if(data_lenght != TC_READ_LAST_TEMPERATURE_DATA_LENGHT){
        return ERR_WRONG_TC_PACKAGE_LENGHT;
    }
    if(tc_read_last_temperature_callback_function == NULL){
        return ERR_TC_MESSAGE_NOT_BOUND;
    }
    return tc_read_last_temperature_callback_function(data[0]);
}
uint32_t handle_tc_get_average_temperature_callback(uint8_t *data, int data_lenght){
    if(data_lenght != TC_GET_AVERAGE_TEMPERATURE_DATA_LENGHT){
        return ERR_WRONG_TC_PACKAGE_LENGHT;
    }
    if(tc_get_average_temperature_callback_function == NULL){
        return ERR_TC_MESSAGE_NOT_BOUND;
    }
    return tc_get_average_temperature_callback_function(data[0]);
}
uint32_t handle_tc_set_heater_state_callback(uint8_t *data, int data_lenght){
    if(data_lenght != TC_SET_HEATER_STATE_DATA_LENGHT){
        return ERR_WRONG_TC_PACKAGE_LENGHT;
    }
    if(tc_set_heater_state_callback_function == NULL){
        return ERR_TC_MESSAGE_NOT_BOUND;
    }
    return tc_set_heater_state_callback_function(data[0],data[1]);
}


uint32_t send_tm_instrument_data_message(uint8_t *data, int data_lenght){
    uint32_t err;
    int reps = data_lenght / TM_INSTRUMENT_DATA_MAX_LENGHT;
    uint8_t last_lenght = data_lenght % TM_INSTRUMENT_DATA_MAX_LENGHT;
    int offset = 1;
    uint8_t* data_packet;
    data_packet = malloc(sizeof(uint8_t) * (TM_INSTRUMENT_DATA_MAX_LENGHT + 1));
    data_packet[0] = 0x00;
    for(int i = 0; i < reps; i++){
        memcpy(data_packet + 1, data + offset, sizeof(uint8_t) * TM_INSTRUMENT_DATA_MAX_LENGHT);
        err = send_tm_message(TM_instrument_data,data_packet,TM_INSTRUMENT_DATA_MAX_LENGHT);
        if(err != ERR_OK){
            free(data_packet);
            return err;
        }
        offset += TM_INSTRUMENT_DATA_MAX_LENGHT + 1;
        data_packet[0] = 0x01;
    }
    memcpy(data_packet + 1, data + offset, sizeof(uint8_t) * last_lenght);
    data_packet[0] = 0xFF;
    err = send_tm_message(TM_instrument_data,data_packet,last_lenght);
    free(data_packet);
    return err;
}

uint32_t send_tm_instrument_housekeeping_message(uint8_t receive_state, uint8_t number_bytes_received, uint8_t buffer_overflow){
    uint8_t data[] = {receive_state,number_bytes_received,buffer_overflow};
    return send_tm_message(TM_instrument_housekeeping, data, TM_INSTRUMENT_HOUSEKEEPING_DATA_LENGHT);

}
uint32_t send_tm_sensor_temperature_reply(uint8_t sensor_id, uint16_t temp_value){
    uint8_t data[] = {sensor_id,(uint8_t)(temp_value >> 8),(uint8_t)(temp_value & 0xFF)};
    return send_tm_message(TM_instrument_housekeeping, data, TM_SENSOR_TEMPERATURE_REPLY_DATA_LENGHT);;
}

uint32_t initialize_message_hander();