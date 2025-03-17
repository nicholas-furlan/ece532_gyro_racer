/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "sleep.h"
#include "test3.h"

#define X0_REG (XPAR_TEST3_0_S00_AXI_BASEADDR + TEST3_S00_AXI_SLV_REG1_OFFSET)
#define Y0_REG (XPAR_TEST3_0_S00_AXI_BASEADDR + TEST3_S00_AXI_SLV_REG2_OFFSET)
#define Z0_REG (XPAR_TEST3_0_S00_AXI_BASEADDR + TEST3_S00_AXI_SLV_REG3_OFFSET)

#define X1_REG (XPAR_TEST3_1_S00_AXI_BASEADDR + TEST3_S00_AXI_SLV_REG1_OFFSET)
#define Y1_REG (XPAR_TEST3_1_S00_AXI_BASEADDR + TEST3_S00_AXI_SLV_REG2_OFFSET)
#define Z1_REG (XPAR_TEST3_1_S00_AXI_BASEADDR + TEST3_S00_AXI_SLV_REG3_OFFSET)

volatile unsigned int* x0_val = (unsigned int*) X0_REG;
volatile unsigned int* y0_val = (unsigned int*) Y0_REG;
volatile unsigned int* z0_val = (unsigned int*) Z0_REG;

volatile unsigned int* x1_val = (unsigned int*) X1_REG;
volatile unsigned int* y1_val = (unsigned int*) Y1_REG;
volatile unsigned int* z1_val = (unsigned int*) Z1_REG;

int main()
{
    init_platform();

    print("Hello World\n\r");

    while(1){
        	usleep(500000);
        	xil_printf("\n\n\nx0 reg: %x\n",*x0_val);
        	xil_printf("y0 reg: %x\n",*y0_val);
        	xil_printf("z0 reg: %x\n",*z0_val);
        	xil_printf("x1 reg: %x\n",*x1_val);
        	xil_printf("y1 reg: %x\n",*y1_val);
        	xil_printf("z1 reg: %x",*z1_val);
        }

    cleanup_platform();
    return 0;
}
