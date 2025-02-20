/******************************************************************************/
/*                                                                            */
/* main.c -- Example program using the PmodGYRO IP                            */
/*                                                                            */
/******************************************************************************/
/* Author: Mikel Skreen                                                       */
/*                                                                            */
/******************************************************************************/
/* File Description:                                                          */
/*                                                                            */
/* This demo continuously polls the PmodGYRO for its angular momentum and     */
/* prints those values to the terminal.                                       */
/*                                                                            */
/******************************************************************************/
/* Revision History:                                                          */
/*                                                                            */
/*    06/15/2016(MikelS):   Created                                           */
/*    10/02/2017(atangzwj): Validated for Vivado 2015.4                       */
/*    10/27/2017(artvvb):   Validated for Vivado 2016.4                       */
/*    02/17/2018(atangzwj): Validated for Vivado 2017.4                       */
/*                                                                            */
/******************************************************************************/

/************ Include Files ************/

#include "PmodGYRO.h"
#include "sleep.h"
#include "xil_cache.h"
#include "xil_printf.h"


/************ Function Prototypes ************/

void DemoInitialize();

void DemoRun();

void DemoCleanup();

void EnableCaches();

void DisableCaches();

//new!
//uint8_t GYRO_getStatus(PmodGYRO *InstancePtr);

/************ Global Variables ************/

PmodGYRO myDevice;

/************ Function Definitions ************/

int main() {
   DemoInitialize();
   DemoRun();
   DemoCleanup();
   return 0;
}

void DemoInitialize() {
   EnableCaches();
   GYRO_begin(&myDevice, XPAR_PMODGYRO_0_AXI_LITE_SPI_BASEADDR,
         XPAR_PMODGYRO_0_AXI_LITE_GPIO_BASEADDR);

   // Set Threshold Registers
   GYRO_setThsXH(&myDevice, 0x0F);
   GYRO_setThsYH(&myDevice, 0x0F);
   GYRO_setThsZH(&myDevice, 0x0F);

   GYRO_enableInt1(&myDevice, GYRO_INT1_XHIE);    // Threshold interrupt
   GYRO_enableInt2(&myDevice, GYRO_REG3_I2_DRDY); // Data Rdy/FIFO interrupt
}

void DemoRun() {
   int16_t xAxis = 0;
   int16_t yAxis = 0;
   int16_t zAxis = 0;

   print("Starting calibration in 10 seconds \nPlease place the gyro flat facing the monitor\n\n");
   usleep(10000000);
   // should be triggered by a button press or keyboard input
   // technically we are right now (by reset)

   int16_t xAdjust, yAdjust, zAdjust;
   // min and max values measured while at rest
   int16_t xMax = 0;
   int16_t yMax = 0;
   int16_t zMax = 0;
   int16_t xMin = 0;
   int16_t yMin = 0;
   int16_t zMin = 0;
   print("Calibration starting!\nPlease leave the gyro at rest.\n");
   {
	   int16_t calibrateX[100];
	   int16_t calibrateY[100];
	   int16_t calibrateZ[100];
	   for (int i = 0; i < 100; i++){
		   calibrateX[i] = GYRO_getX(&myDevice);
		   calibrateY[i] = GYRO_getY(&myDevice);
		   calibrateZ[i] = GYRO_getZ(&myDevice);
		   usleep(100000);
	   }
	   float calX, calY, calZ;
	   for (int i = 0; i < 100; i++){
		   calX += calibrateX[i];
		   calY += calibrateY[i];
		   calZ += calibrateZ[i];

		   if (calibrateX[i] < xMin) xMin = calibrateX[i];
		   if (calibrateX[i] > xMax) xMax = calibrateX[i];
		   if (calibrateY[i] < yMin) yMin = calibrateY[i];
		   if (calibrateY[i] > yMax) yMax = calibrateY[i];
		   if (calibrateZ[i] < zMin) zMin = calibrateZ[i];
		   if (calibrateZ[i] > zMax) zMax = calibrateZ[i];
	   }
	   xAdjust = calX / 100;
	   yAdjust = calY / 100;
	   zAdjust = calZ / 100;
   }

   int loop = 0;
   float currentX = 0;
   float currentY = 0;
   float currentZ = 0;
   float adjustedX = 0;
   float adjustedY = 0;
   float adjustedZ = 0;

   // current sensitivity, in degrees per second
   float dps = 250;
   // manually calculated, converts sensor units to degrees
   // would probably need to change is we tried
   float outputAdjust = 3.15 / dps;

   print("Starting...\n\r");
   while (1) {
      usleep(1000);

	 xAxis = GYRO_getX(&myDevice);
	 yAxis = GYRO_getY(&myDevice);
	 zAxis = GYRO_getZ(&myDevice);

	 // filter out small values (tend to fluctuate here when at rest)
	 if (xAxis > xMin && xAxis < xMax){
		 adjustedX = 0;
	 }
	 else adjustedX = xAxis - xAdjust;
	 if (yAxis > yMin && yAxis < yMax){
		 adjustedY = 0;
	 }
	 else adjustedY =  yAxis - yAdjust;
	 if (zAxis > -100 && zAxis < 100){
		 adjustedZ = 0;
	 }
	 else adjustedZ = zAxis - zAdjust;


	 // integrate to get our current angle
	 currentX += (float)adjustedX * 0.001 * outputAdjust;	// 0.005 of a second has passed since our last measurement
	 currentY += (float)adjustedY * 0.001 * outputAdjust;
	 currentZ += (float)adjustedZ * 0.001 * outputAdjust;

	 // don't print after every cycle
	 if (loop == 1000){
		 print("\n\n\n\n\n\n");	// clear previous values off screen (control codes don't seem to work)
		 print("Raw values:\n");
		 xil_printf("X Axis: %i\n", xAxis);
		 xil_printf("Y Axis: %i\n", yAxis);
		 xil_printf("Z Axis: %i\n\n", zAxis);

		 print("Adjusted values:\n");
		 xil_printf("X Axis: %i\n", adjustedX);
		 xil_printf("Y Axis: %i\n",adjustedY);
		 xil_printf("Z Axis: %i\n\n", adjustedZ);

		 print("Expected angles:\n");
		 xil_printf("X Axis: %i\n", (int)currentX);
		 xil_printf("Y Axis: %i\n", (int)currentY);
		 xil_printf("Z Axis: %i\n\n", (int)currentZ);

//		 uint8_t ctrlRegOut = 0;
//		 GYRO_ReadReg(&myDevice, GYRO_CTRL_REG4, &ctrlRegOut, 1);
//		 print("Control Register: ");
//		 xil_printf("%i\n", ctrlRegOut);

		 loop = 0;
	 }
	 loop++;

   }

//   unused version of loop I made
//   leaving just in case some of this might be useful in the future
//   // use to read the status register
//   uint8_t current_status = 0;
//   // boolean, store if there is new data to be read for a given axis
//   uint8_t x_new = 0;
//   uint8_t y_new = 0;
//   uint8_t z_new = 0;
//
//   int64_t time = 0;
//   while (1){
//	   current_status = GYRO_getStatus(&myDevice);
//	   x_new = (current_status >> 0) & 1;
//	   y_new = (current_status >> 1) & 1;
//	   z_new = (current_status >> 2) & 1;
//	   if (x_new == 1){
//		   xAxis = GYRO_getX(&myDevice);
//		   currentX += xAxis;
//	   }
//	   if (y_new == 1){
//		   yAxis = GYRO_getY(&myDevice);
//		   currentY += yAxis;
//	   }
//	   if (z_new == 1){
//		   zAxis = GYRO_getZ(&myDevice);
//		   currentZ += zAxis;
//	   }
//
//	   if ((current_status >> 7) & 1 == 1){
//		   print("Missed a value...\n");
//	   }
//
//	   time++;
//	   if (time % 100000 == 0){
//		   xil_printf("X: %i \tY: %i \tZ: %i\n\r", currentX, currentY, currentZ);
//	   }
//
//
//   }

   // old version of loop
//   print("Starting...\n\r");
//   while (1) {
//      usleep(500000);
//
//      if (GYRO_Int1Status(&myDevice) != 0) {
//         xil_printf("\x1B[2J");
//         xil_printf("\x1B[H");
//         xil_printf("Threshold reached\n\r");
//         trig = 1;
//      }
//      if (GYRO_Int2Status(&myDevice) != 0) {
//         if (trig == 1) {
//            trig = 0;
//         } else {
//            xil_printf("\x1B[2J"); // Clear screen
//            xil_printf("\x1B[H");  // Reset cursor to 0,0
//         }
//         xil_printf("Data is ready\n\r\n\r");
//
//         xAxis = GYRO_getX(&myDevice);
//         yAxis = GYRO_getY(&myDevice);
//         zAxis = GYRO_getZ(&myDevice);
//         temp = GYRO_getTemp(&myDevice);
//
//         xil_printf("X Axis: 0x%04x\n\r", xAxis & 0xFFFF);
//         xil_printf("Y Axis: 0x%04x\n\r", yAxis & 0xFFFF);
//         xil_printf("Z Axis: 0x%04x\n\r", zAxis & 0xFFFF);
//
//         xil_printf("\n\r");
//
//         xil_printf("Temperature: %d deg F\n\r", temp);
//      }
//   }
}


//uint8_t GYRO_getStatus(PmodGYRO *InstancePtr){
//	uint8_t status_reg = 0;
//	// read from the status register, and write results to status_reg
//	GYRO_ReadReg(InstancePtr, GYRO_STATUS_REG, &status_reg, 1);
//	return status_reg;
//}

void DemoCleanup() {
   GYRO_end(&myDevice);
   DisableCaches();
}

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

void DisableCaches() {
#ifdef __MICROBLAZE__
#ifdef XPAR_MICROBLAZE_USE_DCACHE
   Xil_DCacheDisable();
#endif
#ifdef XPAR_MICROBLAZE_USE_ICACHE
   Xil_ICacheDisable();
#endif
#endif
}
