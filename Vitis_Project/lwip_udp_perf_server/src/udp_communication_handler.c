#include "udp_communication_handler.h"
#include "lwip/err.h"
#include "lwip/pbuf.h"
#include <stdint.h>
#include <stdlib.h>
#include <xil_printf.h>
#include "tm_tc_protocol_handler.h"
#include "errors.h"

/**
 * @file udp_communication_handler.c
 * @brief lwIP UDP callback and send helper implementation.
 *
 * Receives incoming UDP packets via lwIP, copies the pbuf chain into a local
 * buffer and forwards it to the TM/TC protocol handler. Also provides a
 * helper to send packets back to the last known peer.
 */

/* Last peer address and port used for replies. */
static ip_addr_t last_received_address; /**< Last received peer IP address. */
static u16_t last_received_port;       /**< Last received peer port. */

static struct udp_pcb *pcb;            /**< UDP PCB used for sending. */

/**
 * @brief lwIP UDP receive callback.
 *
 * Copies the incoming pbuf chain into a contiguous buffer and forwards it to
 * the protocol receive handler. Updates the last peer address/port for replies.
 *
 * @param arg User argument (unused).
 * @param tpcb Pointer to the UDP PCB that received the packet.
 * @param p Pointer to the pbuf chain containing the packet.
 * @param addr Source IP address.
 * @param port Source UDP port.
 */
void udp_message_callback(void *arg, struct udp_pcb *tpcb, struct pbuf *p, const ip_addr_t *addr, u16_t port){

    if (p != NULL)
    {
        last_received_address = *addr;
        last_received_port = port;
        xil_printf("%d",addr->addr);

        struct pbuf *q;
        q = p;
        int offset = 0;
        uint8_t buffer[100];
        while (q != NULL) {
            memcpy(&buffer[offset], q->payload, q->len);
            offset +=  q->len;
            q = q->next;
        }
        pbuf_free(p);
        receive_message(&buffer[0], offset);
    }
}

/**
 * @brief Send a packet over UDP to the last known peer.
 *
 * Allocates a pbuf, copies the packet payload and uses udp_sendto to send it.
 * The packet buffer passed in is freed by this function.
 *
 * @param packet Pointer to the allocated packet buffer (will be freed).
 * @param packet_lenght Length of the packet in bytes.
 * @return ERR_OK on success or ERR_IP_NOT_INIT if no peer address is known.
 */
uint32_t udp_send_message(uint8_t *packet, int packet_lenght){
    xil_printf("\n");
    xil_printf("\n%u\n", packet_lenght);
    struct pbuf *p;
    p = pbuf_alloc(PBUF_TRANSPORT, packet_lenght, PBUF_RAM);
    memcpy(p->payload, packet, packet_lenght);
    free(packet);
    uint32_t err;
    err_t udp_error;
    if (last_received_address.addr != 0)
    {
        if(p != NULL ){
            udp_error = udp_sendto(pcb, p, &last_received_address, last_received_port);
        }
        err = ERR_OK;
    }
    else {
        err = ERR_IP_NOT_INIT;
    }
    pbuf_free(p);
    return (uint32_t) err;
}

/**
 * @brief Set the UDP PCB used for sending replies.
 *
 * @param init_pcb Pointer to the initialized UDP PCB.
 * @return ERR_OK on success.
 */
uint32_t set_pcb(struct udp_pcb *init_pcb){
    pcb = init_pcb;
    return ERR_OK;
}
