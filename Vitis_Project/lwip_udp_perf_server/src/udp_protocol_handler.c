#include "udp_protocol_handler.h"
#include "lwip/netif.h"

/**
 * @file udp_protocol_handler.c
 * @brief Network initialization and periodic processing implementation.
 *
 * Implements board network initialization, default IP assignment and the
 * server cyclical function that must be called regularly from the main loop.
 */

/* Netif instances used by the network stack. */
struct netif server_netif; /**< Storage for the server network interface. */
struct netif *netif;       /**< Pointer to the active network interface. */

/**
 * @brief Print an IP address with a message.
 *
 * @param msg Message prefix to print.
 * @param ip Pointer to the IP address to print.
 */
static void print_ip(char *msg, ip_addr_t *ip)
{
    print(msg);
    xil_printf("%d.%d.%d.%d\r\n", ip4_addr1(ip), ip4_addr2(ip),
            ip4_addr3(ip), ip4_addr4(ip));
}

/**
 * @brief Print IP, netmask and gateway settings.
 *
 * @param ip Pointer to IP address.
 * @param mask Pointer to netmask.
 * @param gw Pointer to gateway address.
 */
static void print_ip_settings(ip_addr_t *ip, ip_addr_t *mask, ip_addr_t *gw)
{
    print_ip("Board IP:       ", ip);
    print_ip("Netmask :       ", mask);
    print_ip("Gateway :       ", gw);
}

/**
 * @brief Assign default static IP, mask and gateway from macros.
 *
 * @param ip Pointer to ip_addr_t to populate.
 * @param mask Pointer to netmask to populate.
 * @param gw Pointer to gateway to populate.
 */
static void assign_default_ip(ip_addr_t *ip, ip_addr_t *mask, ip_addr_t *gw)
{
    int err;

    xil_printf("Configuring default IP %s \r\n", DEFAULT_IP_ADDRESS);

    err = inet_aton(DEFAULT_IP_ADDRESS, ip);
    if (!err)
        xil_printf("Invalid default IP address: %d\r\n", err);

    err = inet_aton(DEFAULT_IP_MASK, mask);
    if (!err)
        xil_printf("Invalid default IP MASK: %d\r\n", err);

    err = inet_aton(DEFAULT_GW_ADDRESS, gw);
    if (!err)
        xil_printf("Invalid default gateway address: %d\r\n", err);
}

/**
 * @brief Initialize the lwIP stack, network interface and start the application.
 *
 * Configures MAC address, initializes lwIP, sets the default netif and starts
 * the application-level services.
 *
 * @return 0 on success, negative on error.
 */
int initialize_server(){


    /* the mac address of the board. this should be unique per board */
    unsigned char mac_ethernet_address[] = {
        0x00, 0x0a, 0x35, 0x00, 0x01, 0x02 };

    netif = &server_netif;
#if defined (__arm__) && !defined (ARMR5)
#if XPAR_GIGE_PCS_PMA_SGMII_CORE_PRESENT == 1 || \
        XPAR_GIGE_PCS_PMA_1000BASEX_CORE_PRESENT == 1
    ProgramSi5324();
    ProgramSfpPhy();
#endif
#endif

    /* Define this board specific macro in order perform PHY reset
     * on ZCU102
     */
#ifdef XPS_BOARD_ZCU102
    IicPhyReset();
#endif

    init_platform();

    xil_printf("\r\n\r\n");
    xil_printf("-----lwIP RAW Mode UDP Server Application-----\r\n");

    /* initialize lwIP */
    lwip_init();

    /* Add network interface to the netif_list, and set it as default */
    if (!xemac_add(netif, NULL, NULL, NULL, mac_ethernet_address,
                PLATFORM_EMAC_BASEADDR)) {
        xil_printf("Error adding N/W interface\r\n");
        return -1;
    }
    netif_set_default(netif);

#ifndef SDT
    /* now enable interrupts */
    platform_enable_interrupts();
#endif

    /* specify that the network if is up */
    netif_set_up(netif);

    assign_default_ip(&(netif->ip_addr), &(netif->netmask), &(netif->gw));

    print_ip_settings(&(netif->ip_addr), &(netif->netmask), &(netif->gw));

    xil_printf("\r\n");

    /* print app header */
    print_app_header();

    /* start the application*/
    start_application();
    xil_printf("\r\n");

}

/**
 * @brief Periodic server processing to be called from main loop.
 *
 * Processes TCP fast/slow timers and input from the Ethernet MAC.
 */
void server_cyclical(){
        if (TcpFastTmrFlag) {
            tcp_fasttmr();
            TcpFastTmrFlag = 0;
        }
        if (TcpSlowTmrFlag) {
            tcp_slowtmr();
            TcpSlowTmrFlag = 0;
        }
        xemacif_input(netif);
}
