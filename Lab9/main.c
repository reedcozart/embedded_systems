//***********************  main.c  ***********************
// Program written by:
// - Steven Prickett  steven.prickett@gmail.com
//
// Brief desicription of program:
// - Initializes an ESP8266 module to act as a WiFi client
//   and fetch weather data from openweathermap.org
//
//*********************************************************
/* Modified by Jonathan Valvano
 Feb 3, 2016
 Out of the box: to make this work you must
 Step 1) Set parameters of your AP in lines 59-60 of esp8266.c
 Step 2) Change line 39 with directions in lines 40-42
 Step 3) Run a terminal emulator like Putty or TExasDisplay at
         115200 bits/sec, 8 bit, 1 stop, no flow control
 Step 4) Set line 50 to match baud rate of your ESP8266 (9600 or 115200)
 */
#include <stdio.h>
#include <stdbool.h>
#include <stdint.h>
#include <string.h>
#include <stdlib.h>

#include "../inc/tm4c123gh6pm.h"

#include "pll.h"
#include "UART.h"
#include "ST7735.h"
#include "adc.h"
#include "ADCSWTrigger.h"
#include "calib.h"

int UploadResult(char name[], char city[], char greet[], char data[]);

// prototypes for functions defined in startup.s
void DisableInterrupts(void); // Disable interrupts
void EnableInterrupts(void);  // Enable interrupts
long StartCritical (void);    // previous I bit, disable interrupts
void EndCritical(long sr);    // restore I bit to previous value
void WaitForInterrupt(void);  // low power mode




int ADCvalue = -1;
int64_t samples = 0;
int refresh = 0;


char adcvalue_str[9] = {'A', 'D', 'C', ':', '!', '!', '!', '!', 0};
int fifo[100] = {0};
int fifo_producer_idx;
int fifo_consumer_idx;
int N = 8; 
int fs = 20;




int main(void){  
	char* lab9greeting = "Welcome to Lab 9!";
	int Temperature = 100;
  DisableInterrupts();
  PLL_Init(Bus80MHz);
	//ST7735_InitR(INITR_REDTAB);
  Output_Init();       // UART0 only used for debugging
	ST7735_Output_Init(); 
	ADC0_InitSWTriggerSeq3_Ch9(); //initialize the ADC
	Timer0A_Init20HzInt(); //initialize the timer
	ST7735_DrawString(0,0, lab9greeting, ST7735_WHITE);
	
  while(1){
		if(refresh){
				refresh = 0;
				samples++;
		    ST7735_PlotPoint(ADCvalue);  // Measured temperature
				if((samples&(N-1))==0){          // fs sampling, fs/N samples plotted per second
					ST7735_PlotNextErase();  // overwrites N points on same line
				}
				if((samples%fs)==0){    // fs sampling, 1 Hz display of numerical data
				//do conversion here, set it equal to temp.
				ST7735_SetCursor(3,1); ST7735_OutUDec(ADCvalue);            // 0 to 4095
				ST7735_SetCursor(3,2); ST7735_DecOut2(Temperature/10); // 0.01 C 
			}

		}
	}

  
}


void ST7735_DecOut2(int32_t n){

	int32_t hundreds;
	int32_t tens;
	int32_t units;
	int32_t negative = 0;
	
	
	
	if(n>999 || n < -999){
		printf(" *.**");
		return;
	}
	if(n<0){ n = n*(-1);
		negative = 1;
	}
	hundreds = n/100;
	tens = (n%100)/10;
	units = n%10;
	
	if(negative){
		printf("-%d.%d%d", hundreds, tens, units);
	}else{
		printf(" %d.%d%d", hundreds, tens, units);
	}
	return;
}

void Init_Plot(void){
ST7735_SetCursor(0,0); ST7735_OutString("Lab 9");
 ST7735_PlotClear(1000,4000);  // range from 0 to 4095
 ST7735_SetCursor(0,1); ST7735_OutString("N=");
 ST7735_SetCursor(0,2); ST7735_OutString("T="); ST7735_sDecOut2(2500);
                        ST7735_OutString(" C");

}





