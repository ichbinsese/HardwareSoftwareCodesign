#ifndef __UDP_PROTOCOL_HANDLER_H_
#define __UDP_PROTOCOL_HANDLER_H_

/**
 * @file udp_protocol_handler.h
 * @brief Network initialization and server cyclic processing.
 *
 * Declares functions to initialize the lwIP-based UDP server and to be
 * called periodically to process lwIP timers and input.
 */

#include <stdio.h>
#include "xparameters.h"
#include "netif/xadapter.h"
#include "platform.h"
#include "platform_config.h"
#include "lwipopts.h"
#include "xil_printf.h"
#include "sleep.h"
#include "lwip/priv/tcp_priv.h"
#include "lwip/init.h"
#include "lwip/inet.h"
#include "xil_cache.h"
#include "lwip/netif.h"

extern volatile int TcpFastTmrFlag; /**< Flag set by timer to indicate fast TCP timer. */
extern volatile int TcpSlowTmrFlag; /**< Flag set by timer to indicate slow TCP timer. */

void platform_enable_interrupts(void); /**< Platform-specific interrupt enable. */
void start_application(void);          /**< Start the application-level UDP/TCP services. */
void print_app_header(void);           /**< Print application header to console. */

#define DEFAULT_IP_ADDRESS  "192.168.1.10" /**< Default static IP address. */
#define DEFAULT_IP_MASK     "255.255.255.0" /**< Default network mask. */
#define DEFAULT_GW_ADDRESS  "192.168.1.1" /**< Default gateway address. */

typedef struct netif Netif;

int initialize_server(); /**< Initialize network stack and start server. @return 0 on success, negative on error. */
void server_cyclical();  /**< Periodic processing to be called from main loop. */

#endif /* __UDP_PROTOCOL_HANDLER_H_ */
