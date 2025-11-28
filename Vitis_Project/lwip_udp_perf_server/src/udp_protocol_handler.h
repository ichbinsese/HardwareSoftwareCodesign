#ifndef __UDP_PROTOCOL_HANDLER_H_
#define __UDP_PROTOCOL_HANDLER_H_

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

extern volatile int TcpFastTmrFlag;
extern volatile int TcpSlowTmrFlag;

void platform_enable_interrupts(void);
void start_application(void);
void print_app_header(void);

#if defined (__arm__) && !defined (ARMR5)
#if XPAR_GIGE_PCS_PMA_SGMII_CORE_PRESENT == 1 || \
		 XPAR_GIGE_PCS_PMA_1000BASEX_CORE_PRESENT == 1
int ProgramSi5324(void);
int ProgramSfpPhy(void);
#endif
#endif

#ifdef XPS_BOARD_ZCU102
#if defined (XPAR_XIICPS_0_DEVICE_ID) || defined (XPAR_XIICPS_0_BASEADDR)
int IicPhyReset(void);
#endif
#endif

#define DEFAULT_IP_ADDRESS	"192.168.1.10"
#define DEFAULT_IP_MASK		"255.255.255.0"
#define DEFAULT_GW_ADDRESS	"192.168.1.1"

typedef struct netif Netif;

int initialize_server();
void server_cyclical();

#endif