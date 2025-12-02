/*
 * Copyright (C) 2017 - 2022 Xilinx, Inc.
 * Copyright (C) 2022 - 2024 Advanced Micro Devices, Inc.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 * 3. The name of the author may not be used to endorse or promote products
 *    derived from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR IMPLIED
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT
 * SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT
 * OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING
 * IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY
 * OF SUCH DAMAGE.
 *
 */

#include <stdio.h>
#include <xil_io.h>
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
#include "udp_protocol_handler.h"
#include "udp_communication_handler.h"
#include "lwip/netif.h"

#define DEBUG

#define AXI_ADDER_BASE_ADDRESS XPAR_TWO_BIT_ADDER_0_BASEADDR
#define AXI_COUNTER_BASE_ADDRESS XPAR_INSTRUMENTS_0_BASEADDR
#define REG1_OFFSET 0x0
#define REG2_OFFSET 0x4
#define REG3_OFFSET 0x8

int test_my_adder() {
    uint32_t operand1 = 123;
    uint32_t operand2 = 456;
    uint32_t result;

    xil_printf("--- AXI Adder Test ---\n");
    Xil_Out32(AXI_ADDER_BASE_ADDRESS + REG1_OFFSET, operand1);
    Xil_Out32(AXI_ADDER_BASE_ADDRESS + REG2_OFFSET, operand2);
    result = Xil_In32(AXI_ADDER_BASE_ADDRESS + REG3_OFFSET);

    // 4. Verify the result
    if (result == (operand1 + operand2)) {
        xil_printf("Success! The result is correct: %u + %u = %u\n", operand1, operand2, result);
    } else {
        xil_printf("Error! The result is incorrect. Expected: %u, Got: %u\n", (operand1 + operand2), result);
    }

    return 0;
}

int test_my_counter()
{
    uint32_t result;
    result = Xil_In32(AXI_COUNTER_BASE_ADDRESS + REG2_OFFSET);
    xil_printf("Counter Value: %u\n", result);
    return 0;
}

int main(void)
{	
	initialize_server();
	initialize_comm_handler();

    test_my_adder();
    test_my_counter();

	while (1) {
		server_cyclical();

        static int loop_counter = 1000;
        if (loop_counter >= 1000000) 
        {
            test_my_counter();
            loop_counter = 0;
        }
        loop_counter++;
	}

	//never reached 
	cleanup_platform();

	return 0;
} 


