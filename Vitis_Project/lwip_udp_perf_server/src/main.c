#include "platform.h"
#include "udp_protocol_handler.h"


#include "scheduler.h"
#include "instrument_control.h"
#include "temperature_control.h"

/**
 * @file main.c
 * @brief Application entry point.
 *
 * Initializes subsystems and enters the main loop where scheduled tasks
 * and server processing are executed cyclically.
 */

int main(void)

{
    initialize_instrument();
    initialize_temperature_control();

    initialize_server();
    while (1) {
        tasks_cyclical();
        server_cyclical();
    }

    /* never reached */
    cleanup_platform();

    return 0;
}
