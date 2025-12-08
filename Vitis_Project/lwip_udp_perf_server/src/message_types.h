#ifndef __MESSAGE_TYPES_H_
#define __MESSAGE_TYPES_H_

/**
 * @file message_types.h
 * @brief Definitions of TM and TC message type enums.
 *
 * Enumerates the message types used by the TM/TC protocol for both
 * telemetry (TM) and telecommand (TC) messages.
 */

#include <stdint.h>

enum tm_message_type{
    TM_Ack = 0x01,                    /**< Telemetry ACK message. */
    TM_Exec = 0x02,                   /**< Telemetry EXEC (status) message. */
    TM_instrument_data = 0x03,        /**< Telemetry instrument data message. */
    TM_instrument_housekeeping = 0x04,/**< Telemetry housekeeping message. */
    TM_sensor_tempertature_reply = 0x05/**< Telemetry sensor temperature reply. */
};

enum tc_message_type{
    TC_enable_instrument = 0x01,      /**< TC: enable/disable instrument. */
    TC_set_receive_state = 0x02,      /**< TC: set receive state for instrument. */
    TC_dump_instrument_data = 0x03,   /**< TC: request dump of instrument data. */
    TC_read_last_temperature_value = 0x04, /**< TC: request last temperature reading. */
    TC_set_heater_state = 0x05,       /**< TC: set heater state. */
    TC_get_average_temperature = 0x06 /**< TC: request average temperature. */
};

#endif /* __MESSAGE_TYPES_H_ */
