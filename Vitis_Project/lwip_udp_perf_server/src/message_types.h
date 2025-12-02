#ifndef __MESSAGE_TYPES_H_
#define __MESSAGE_TYPES_H_

#include <stdint.h>

enum tm_message_type{
    TM_Ack = 0x01,
    TM_Exec = 0x02,
    TM_instrument_data = 0x03,
    TM_instrument_housekeeping = 0x04,
    TM_sensor_tempertature_reply = 0x05

};

enum tc_message_type{
    TC_enable_instrument = 0x01,
    TC_set_receive_state = 0x02,
    TC_dump_instrument_data = 0x03,
    TC_read_last_temperature_value = 0x04,
    TC_set_heater_state = 0x05,
    TC_get_average_temperature = 0x06
};

typedef uint32_t (*tc_subscriber_function) (uint8_t sequence_counter,uint8_t *data, int data_lenght);

#endif 