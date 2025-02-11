/*
 *
 * Xilinx, Inc.
 * XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" AS A 
 * COURTESY TO YOU.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION AS
 * ONE POSSIBLE   IMPLEMENTATION OF THIS FEATURE, APPLICATION OR 
 * STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION 
 * IS FREE FROM ANY CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE 
 * FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION
 * XILINX EXPRESSLY DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO 
 * THE ADEQUACY OF THE IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO 
 * ANY WARRANTIES OR REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE 
 * FROM CLAIMS OF INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY 
 * AND FITNESS FOR A PARTICULAR PURPOSE.
 */

/*
 * 
 *
 * This file is a generated sample test application.
 *
 * This application is intended to test and/or illustrate some 
 * functionality of your system.  The contents of this file may
 * vary depending on the IP in your system and may use existing
 * IP driver functions.  These drivers will be generated in your
 * SDK application project when you run the "Generate Libraries" menu item.
 *
 */

#include <stdio.h>
#include "xparameters.h"
#include "xil_cache.h"
#include "xintc.h"
#include "intc_header.h"
#include "PmodGYRO.h"
#include "sleep.h"

volatile unsigned int* gyro_spi_base = (unsigned int*) XPAR_PMODGYRO_0_AXI_LITE_SPI_BASEADDR;
volatile unsigned int* gyro_gpio_base = (unsigned int*) XPAR_PMODGYRO_0_AXI_LITE_GPIO_BASEADDR;
volatile unsigned int* gyro_spi_who = (unsigned int*) 0x0001000F;
volatile unsigned int* gyro_gpio_who = (unsigned int*) 0x0000800F;

void EnableCaches() {
#ifdef __MICROBLAZE__
#ifdef XPAR_MICROBLAZE_USE_DCACHE
   Xil_DCacheEnable();
#endif
#ifdef XPAR_MICROBLAZE_USE_ICACHE
   Xil_ICacheEnable();
#endif
#endif
}

int main () 
{
   static XIntc intc;
   Xil_ICacheEnable();
   Xil_DCacheEnable();
   print("---Entering main---\n\r");


   {
      int status;

      print("\r\n Running IntcSelfTestExample() for microblaze_0_axi_intc...\r\n");

      status = IntcSelfTestExample(XPAR_MICROBLAZE_0_AXI_INTC_DEVICE_ID);

      if (status == 0) {
         print("IntcSelfTestExample PASSED\r\n");
      }
      else {
         print("IntcSelfTestExample FAILED\r\n");
      }
   }

   {
       int Status;

       Status = IntcInterruptSetup(&intc, XPAR_MICROBLAZE_0_AXI_INTC_DEVICE_ID);
       if (Status == 0) {
          print("Intc Interrupt Setup PASSED\r\n");
       }
       else {
         print("Intc Interrupt Setup FAILED\r\n");
      }
   }


   /*
    * Peripheral SelfTest will not be run for axi_uartlite_0
    * because it has been selected as the STDOUT device
    */

   /*
       * test which gyro addr is the correct one
   */
   print("Test read gyro spi\n");
   uint8_t val=0x1;
   //unsigned int offset = 0xF;
   val = *(gyro_spi_who);
   xil_printf("Addr: %x\n",(gyro_spi_who));
   xil_printf("Val: %x\n",val);

   print("Test gyro gpio?\n");
   uint8_t val2=0x1;
   val2 = *(gyro_gpio_who);
   xil_printf("Addr: %x\n",(gyro_gpio_who));
   xil_printf("Val: %x\n",val2);


   print("Test using digilent's functions\n");
   //make object
   PmodGYRO myDevice;
   EnableCaches();
   GYRO_begin(&myDevice, XPAR_PMODGYRO_0_AXI_LITE_SPI_BASEADDR,
            XPAR_PMODGYRO_0_AXI_LITE_GPIO_BASEADDR);

  uint8_t whoami = 0;
  GYRO_ReadReg(&myDevice, GYRO_WHO_AM_I, &whoami, 1);
  xil_printf("whoami Val: %x\n",whoami);

  // Set Threshold Registers
    GYRO_setThsXH(&myDevice, 0x0F);
    GYRO_setThsYH(&myDevice, 0x0F);
    GYRO_setThsZH(&myDevice, 0x0F);

    GYRO_enableInt1(&myDevice, GYRO_INT1_XHIE);    // Threshold interrupt
    GYRO_enableInt2(&myDevice, GYRO_REG3_I2_DRDY); // Data Rdy/FIFO interrupt

    int16_t xAxis = 0;
       int16_t yAxis = 0;
       int16_t zAxis = 0;
       int8_t temp = 0;
       int trig = 0;

       print("Starting...\n\r");
       while (1) {
          usleep(500000);

          if (GYRO_Int1Status(&myDevice) != 0) {
             xil_printf("\x1B[2J");
             xil_printf("\x1B[H");
             xil_printf("Threshold reached\n\r");
             trig = 1;
          }
          if (GYRO_Int2Status(&myDevice) != 0) {
             if (trig == 1) {
                trig = 0;
             } else {
                //xil_printf("\x1B[2J"); // Clear screen
                //xil_printf("\x1B[H");  // Reset cursor to 0,0
            	 xil_printf("trig=0");
             }
             xil_printf("Data is ready\n\r\n\r");

             xAxis = GYRO_getX(&myDevice);
             yAxis = GYRO_getY(&myDevice);
             zAxis = GYRO_getZ(&myDevice);
             temp = GYRO_getTemp(&myDevice);

             xil_printf("X Axis: 0x%04x\n\r", xAxis & 0xFFFF);
             xil_printf("Y Axis: 0x%04x\n\r", yAxis & 0xFFFF);
             xil_printf("Z Axis: 0x%04x\n\r", zAxis & 0xFFFF);

             xil_printf("\n\r");

             xil_printf("Temperature: %d deg F\n\r", temp);
             //break;
          }
       }

   print("---Exiting main---\n\r");
   Xil_DCacheDisable();
   Xil_ICacheDisable();
   return 0;
}
