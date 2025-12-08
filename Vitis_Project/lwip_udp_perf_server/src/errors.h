#ifndef __ERRRORS_H_
#define __ERRRORS_H_

/**
 * @file errors.h
 * @brief Error code definitions used across the project.
 *
 * Defines numeric error codes returned by functions throughout the
 * firmware. Most functions return one of these codes to indicate status.
 */

#define ERR_OK 0x00                      /**< No error. */
#define ERR_WRONG_PACKAGE_TYPE 0x01      /**< Packet type did not match expected value. */
#define ERR_WRONG_PACKAGE_LENGHT 0x02    /**< Packet length mismatch. */
#define ERR_IP_NOT_INIT 0x03             /**< IP address / network not initialized. */
#define ERR_TC_MESSAGE_NOT_BOUND 0x04    /**< TC message callback not bound. */
#define ERR_ILLEGAL_MESSAGE 0x05         /**< Illegal message type attempted to be sent. */
#define ERR_CALLBACK_DOUBLE_SET 0x06     /**< Callback was set twice unexpectedly. */
#define ERR_WRONG_TM_PACKAGE_LENGHT 0x07 /**< TM package length mismatch. */
#define ERR_WRONG_TC_PACKAGE_LENGHT 0x08 /**< TC package length mismatch. */

#define ERR_GENERAL 0xFF                 /**< General unspecified error. */

#endif /* __ERRRORS_H_ */
