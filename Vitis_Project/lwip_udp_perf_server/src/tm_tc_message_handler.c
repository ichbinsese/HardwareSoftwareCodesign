#include "tm_tc_message_handler.h"
#include "errors.h"
#include "lwip/def.h"
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <xil_printf.h>

/**
 * @file tm_tc_message_handler.c
 * @brief TC message dispatching and TM message helpers.
 *
 * Implements the dispatcher that validates TC message payload lengths,
 * calls registered callbacks and provides helpers to send TM messages
 * such as instrument data, housekeeping and sensor replies.
 */

/* Expected data lengths for TC messages (bytes). */
#define TC_ENABLE_INSTRUMET_DATA_LENGHT 1 /**< Length for enable instrument command. */
#define TC_SET_RECEIVE_STATE_DATA_LENGHT 1 /**< Length for set receive state command. */
#define TC_DUMP_INSTRUMENT_DATA_DATA_LENGHT 0 /**< Length for dump instrument data command. */
#define TC_READ_LAST_TEMPERATURE_DATA_LENGHT 1 /**< Length for read last temperature command. */
#define TC_GET_AVERAGE_TEMPERATURE_DATA_LENGHT 1 /**< Length for get average temperature command. */
#define TC_SET_HEATER_STATE_DATA_LENGHT 2 /**< Length for set heater state command. */

/* TM data lengths (bytes). */
#define TM_ACK_DATA_LENGHT  0 /**< TM ACK has no payload. */
#define TM_EXEC_DATA_LENGHT  1 /**< TM EXEC contains a single status byte. */
#define TM_INSTRUMENT_HOUSEKEEPING_DATA_LENGHT 3 /**< Housekeeping payload length. */
#define TM_SENSOR_TEMPERATURE_REPLY_DATA_LENGHT 3 /**< Sensor temperature reply payload length. */

/* Callback function pointers (file-local). */
static tc_enable_instrument_function tc_enable_instrument_callback_function = NULL;
static tc_set_receive_state_function tc_set_receive_state_callback_function = NULL;
static tc_dump_instrument_data_function tc_dump_instrument_data_callback_function = NULL;
static tc_read_last_temperature_function tc_read_last_temperature_callback_function = NULL;
static tc_get_average_temperature_function tc_get_average_temperature_callback_function = NULL;
static tc_set_heater_state_function tc_set_heater_state_callback_function = NULL;

/* Internal handler prototypes (static) */
static uint32_t handle_tc_enable_instrument_callback(uint8_t *data, int data_lenght);
static uint32_t handle_tc_set_receive_state_callback(uint8_t *data, int data_lenght);
static uint32_t handle_tc_dump_instrument_data_callback(uint8_t *data, int data_lenght);
static uint32_t handle_tc_read_last_temperature_callback(uint8_t *data, int data_lenght);
static uint32_t handle_tc_get_average_temperature_callback(uint8_t *data, int data_lenght);
static uint32_t handle_tc_set_heater_state_callback(uint8_t *data, int data_lenght);
static uint32_t small_to_big_endian(uint8_t* data, int data_lenght);

/**
 * @brief Byte-order helper to reverse a small buffer in-place.
 *
 * Reverses the order of bytes in the provided buffer. Used when endianness
 * conversion is required by higher-level protocols.
 *
 * @param data Pointer to the buffer to reverse.
 * @param data_lenght Number of bytes in the buffer.
 * @return ERR_OK on success.
 */
static uint32_t small_to_big_endian(uint8_t* data, int data_lenght){
    uint8_t* temp = malloc(sizeof(uint8_t) * data_lenght);
    memcpy(temp,data,sizeof(uint8_t) * data_lenght);
    for(int i = 0; i < data_lenght; i++){
        data[i] = temp[data_lenght - 1 - i];
    }
    free(temp);
    return ERR_OK;
}

/**
 * @brief Dispatch a TC message to the appropriate handler.
 *
 * Validates the message type and forwards the payload to the corresponding
 * handler which will validate payload length and call the registered callback.
 *
 * @param message_type TC message type enum value.
 * @param data Pointer to payload bytes.
 * @param data_lenght Number of payload bytes.
 * @return ERR_OK on success or an error code.
 */
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
            return handle_tc_set_heater_state_callback(data, data_lenght);
        case TC_get_average_temperature:
            return handle_tc_get_average_temperature_callback(data, data_lenght);
      break;
    }
}

/**
 * @brief Register the enable instrument callback.
 *
 * @param function Callback function pointer.
 * @return ERR_OK on success.
 */
uint32_t set_tc_enable_instrument_callback(tc_enable_instrument_function function){
    tc_enable_instrument_callback_function = function;
    return ERR_OK;
}

/**
 * @brief Register the set receive state callback.
 *
 * @param function Callback function pointer.
 * @return ERR_OK on success.
 */
uint32_t set_tc_set_receive_state_callback(tc_set_receive_state_function function){
    tc_set_receive_state_callback_function = function;
    return ERR_OK;
}

/**
 * @brief Register the dump instrument data callback.
 *
 * @param function Callback function pointer.
 * @return ERR_OK on success.
 */
uint32_t set_tc_dump_instrument_data_callback(tc_dump_instrument_data_function function){
    tc_dump_instrument_data_callback_function = function;
    return ERR_OK;
}

/**
 * @brief Register the read last temperature callback.
 *
 * @param function Callback function pointer.
 * @return ERR_OK on success.
 */
uint32_t set_tc_read_last_temperature_callback(tc_read_last_temperature_function function){
    tc_read_last_temperature_callback_function = function;
    return ERR_OK;
}

/**
 * @brief Register the get average temperature callback.
 *
 * @param function Callback function pointer.
 * @return ERR_OK on success.
 */
uint32_t set_tc_get_average_temperature_callback(tc_read_last_temperature_function function){
    tc_get_average_temperature_callback_function = function;
    return ERR_OK;
}

/**
 * @brief Register the set heater state callback.
 *
 * @param function Callback function pointer.
 * @return ERR_OK on success.
 */
uint32_t set_tc_set_heater_state_callback(tc_set_heater_state_function function){
    tc_set_heater_state_callback_function = function;
    return ERR_OK;
}

/**
 * @brief Handle TC enable instrument command.
 *
 * Validates payload length and calls the registered callback.
 *
 * @param data Pointer to payload bytes.
 * @param data_lenght Number of payload bytes.
 * @return ERR_OK on success or an error code.
 */
static uint32_t handle_tc_enable_instrument_callback(uint8_t *data, int data_lenght){
    if(data_lenght != TC_ENABLE_INSTRUMET_DATA_LENGHT){
        return ERR_WRONG_TC_PACKAGE_LENGHT;
    }
    if(tc_enable_instrument_callback_function == NULL){
        return ERR_TC_MESSAGE_NOT_BOUND;
    }
    return tc_enable_instrument_callback_function(data[0]);
}

/**
 * @brief Handle TC set receive state command.
 *
 * @param data Pointer to payload bytes.
 * @param data_lenght Number of payload bytes.
 * @return ERR_OK on success or an error code.
 */
static uint32_t handle_tc_set_receive_state_callback(uint8_t *data, int data_lenght){
    if(data_lenght != TC_SET_RECEIVE_STATE_DATA_LENGHT){
        return ERR_WRONG_TC_PACKAGE_LENGHT;
    }
    if(tc_set_receive_state_callback_function == NULL){
        return ERR_TC_MESSAGE_NOT_BOUND;
    }
    return tc_set_receive_state_callback_function(data[0]);
}

/**
 * @brief Handle TC dump instrument data command.
 *
 * @param data Pointer to payload bytes.
 * @param data_lenght Number of payload bytes.
 * @return ERR_OK on success or an error code.
 */
static uint32_t handle_tc_dump_instrument_data_callback(uint8_t *data, int data_lenght){
    if(data_lenght != TC_DUMP_INSTRUMENT_DATA_DATA_LENGHT){
        return ERR_WRONG_TC_PACKAGE_LENGHT;
    }
    if(tc_dump_instrument_data_callback_function == NULL){
        return ERR_TC_MESSAGE_NOT_BOUND;
    }
    return tc_dump_instrument_data_callback_function();
}

/**
 * @brief Handle TC read last temperature command.
 *
 * @param data Pointer to payload bytes.
 * @param data_lenght Number of payload bytes.
 * @return ERR_OK on success or an error code.
 */
static uint32_t handle_tc_read_last_temperature_callback(uint8_t *data, int data_lenght){
    if(data_lenght != TC_READ_LAST_TEMPERATURE_DATA_LENGHT){
        return ERR_WRONG_TC_PACKAGE_LENGHT;
    }
    if(tc_read_last_temperature_callback_function == NULL){
        return ERR_TC_MESSAGE_NOT_BOUND;
    }
    return tc_read_last_temperature_callback_function(data[0]);
}

/**
 * @brief Handle TC get average temperature command.
 *
 * @param data Pointer to payload bytes.
 * @param data_lenght Number of payload bytes.
 * @return ERR_OK on success or an error code.
 */
static uint32_t handle_tc_get_average_temperature_callback(uint8_t *data, int data_lenght){
    if(data_lenght != TC_GET_AVERAGE_TEMPERATURE_DATA_LENGHT){
        return ERR_WRONG_TC_PACKAGE_LENGHT;
    }
    if(tc_get_average_temperature_callback_function == NULL){
        return ERR_TC_MESSAGE_NOT_BOUND;
    }
    return tc_get_average_temperature_callback_function(data[0]);
}

/**
 * @brief Handle TC set heater state command.
 *
 * @param data Pointer to payload bytes.
 * @param data_lenght Number of payload bytes.
 * @return ERR_OK on success or an error code.
 */
static uint32_t handle_tc_set_heater_state_callback(uint8_t *data, int data_lenght){
    if(data_lenght != TC_SET_HEATER_STATE_DATA_LENGHT){
        return ERR_WRONG_TC_PACKAGE_LENGHT;
    }
    if(tc_set_heater_state_callback_function == NULL){
        return ERR_TC_MESSAGE_NOT_BOUND;
    }
    return tc_set_heater_state_callback_function(data[0],data[1]);
}

/**
 * @brief Send instrument data TM messages, splitting into multiple packets if needed.
 *
 * The function converts the 16-bit samples into bytes and sends them in chunks
 * respecting TM_INSTRUMENT_DATA_MAX_LENGHT. Returns the first error encountered.
 *
 * @param data Pointer to 16-bit sample array.
 * @param data_lenght Number of samples in the array.
 * @return ERR_OK on success or an error code.
 */
uint32_t send_tm_instrument_data_message(uint16_t *data, int data_lenght){
    uint32_t err;
    int reps = (data_lenght * 2) / TM_INSTRUMENT_DATA_MAX_LENGHT;
    uint16_t last_lenght = (data_lenght * 2) % TM_INSTRUMENT_DATA_MAX_LENGHT;
    if(data_lenght * 2 < TM_INSTRUMENT_DATA_MAX_LENGHT){
        reps = 0;
        last_lenght = data_lenght * 2;
    }
    if(last_lenght == 0 && reps > 1){
        reps--;
        last_lenght = TM_INSTRUMENT_DATA_MAX_LENGHT;
    }
    int offset = 0;
    uint8_t* data_packet;
    data_packet = malloc(sizeof(uint8_t) * (TM_INSTRUMENT_DATA_MAX_LENGHT + 1));

    for(int i = 0; i < reps; i++){
        if(i == 0) data_packet[0] = 0x00;
        else data_packet[0] = 0x01;
        for(int j = 1; j < TM_INSTRUMENT_DATA_MAX_LENGHT + 1;j += 2){
            data_packet[j+1] = (uint8_t)(data[offset] >> 8);
            data_packet[j] = (uint8_t)(data[offset] & 0xFF);
            offset++;
        }
        err = send_tm_message(TM_instrument_data,data_packet,TM_INSTRUMENT_DATA_MAX_LENGHT + 1);
        if(err != ERR_OK){
            free(data_packet);
            return err;
        }
    }
    data_packet[0] = 0xFF;
    for(int j = 1; j < last_lenght + 1;j += 2){
        data_packet[j+1] = (uint8_t)(data[offset] >> 8);
        data_packet[j] = (uint8_t)(data[offset] & 0xFF);
        offset++;
    }
    err = send_tm_message(TM_instrument_data,data_packet,last_lenght);
    free(data_packet);
    return err;
}

/**
 * @brief Send instrument housekeeping TM message.
 *
 * @param receive_state Current receive state.
 * @param number_bytes_received Number of bytes received in buffer.
 * @param buffer_overflow Overflow flag.
 * @return ERR_OK on success or an error code.
 */
uint32_t send_tm_instrument_housekeeping_message(uint8_t receive_state, uint8_t number_bytes_received, uint8_t buffer_overflow){
    uint8_t data[] = {receive_state,number_bytes_received,buffer_overflow};
    return send_tm_message(TM_instrument_housekeeping, data, TM_INSTRUMENT_HOUSEKEEPING_DATA_LENGHT);

}

/**
 * @brief Send sensor temperature reply TM message.
 *
 * @param sensor_id Sensor identifier.
 * @param temp_value 16-bit temperature value.
 * @return ERR_OK on success or an error code.
 */
uint32_t send_tm_sensor_temperature_reply(uint8_t sensor_id, uint16_t temp_value){
    uint8_t data[] = {sensor_id,(uint8_t)(temp_value & 0xFF),(uint8_t)(temp_value >> 8)};
    return send_tm_message(TM_instrument_housekeeping, data, TM_SENSOR_TEMPERATURE_REPLY_DATA_LENGHT);;
}
