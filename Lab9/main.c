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


#define PF2             (*((volatile uint32_t *)0x40025010))
#define PF1             (*((volatile uint32_t *)0x40025008))
	
int UploadResult(char name[], char city[], char greet[], char data[]);

// prototypes for functions defined in startup.s
void DisableInterrupts(void); // Disable interrupts
void EnableInterrupts(void);  // Enable interrupts
long StartCritical (void);    // previous I bit, disable interrupts
void EndCritical(long sr);    // restore I bit to previous value
void WaitForInterrupt(void);  // low power mode
void Init_Plot(void);
void ST7735_DecOut2(int32_t n);
int get_temp(int adc_val);


int ADCvalue = -1;
int64_t samples = 0;
int refresh = 0;


char adcvalue_str[9] = {'A', 'D', 'C', ':', '!', '!', '!', '!', 0};
int fifo[100] = {0};
int fifo_producer_idx;
int fifo_consumer_idx;
int N = 16; 
int fs = 100;




int main(void){  
	char* lab9greeting = "Welcome to Lab 9!";
	int temp;
//	int Temperature = 100;
//  DisableInterrupts();
//  PLL_Init(Bus80MHz);
//	//ST7735_InitR(INITR_REDTAB);
//  Output_Init();       // UART0 only used for debugging
//	ST7735_Output_Init(); 
//	ADC0_InitSWTriggerSeq3_Ch9(); //initialize the ADC
//	Timer0A_Init20HzInt(); //initialize the timer
//	ST7735_DrawString(0,0, lab9greeting, ST7735_WHITE);
//	EnableInterrupts();
	
	PLL_Init(Bus80MHz);                   // 80 MHz
  SYSCTL_RCGCGPIO_R |= 0x20;            // activate port F
  ADC0_InitSWTriggerSeq3_Ch9();         // allow time to finish activating
  Timer0A_Init20HzInt();               // set up Timer0A for 100 Hz interrupts
  GPIO_PORTF_DIR_R |= 0x06;             // make PF2, PF1 out (built-in LED)
  GPIO_PORTF_AFSEL_R &= ~0x06;          // disable alt funct on PF2, PF1
  GPIO_PORTF_DEN_R |= 0x06;             // enable digital I/O on PF2, PF1
                                        // configure PF2 as GPIO
  GPIO_PORTF_PCTL_R = (GPIO_PORTF_PCTL_R&0xFFFFF00F)+0x00000000;
  GPIO_PORTF_AMSEL_R = 0;               // disable analog functionality on PF
  PF2 = 0;                      // turn off LED
	ST7735_Output_Init();
	ST7735_DrawString(0,0, lab9greeting, ST7735_WHITE);
	//Init_Plot();
	
	//ST7735_SetCursor(0,0); ST7735_OutString("Lab 9");
 ST7735_PlotClear(1000,4000);  // range from 0 to 4095
 ST7735_SetCursor(0,1); ST7735_OutString("N=");
 ST7735_SetCursor(0,2); ST7735_OutString("T="); //ST7735_DecOut2(2500);
                        ST7735_OutString(" C");
  EnableInterrupts();
	
  while(1){
						ST7735_SetCursor(3,1); ST7735_OutUDec(ADCvalue);            // 0 to 4095

		if(refresh){
				refresh = 0;
				samples++;
		    ST7735_PlotPoint(ADCvalue);  // Measured temperature
				if((samples&(N-1))==0){          // fs sampling, fs/N samples plotted per second
					ST7735_PlotNextErase();  // overwrites N points on same line
				}
				if((samples%fs)==0){    // fs sampling, 1 Hz display of numerical data
				//do conversion here, set it equal to temp.
				temp = get_temp(ADCvalue);
				ST7735_SetCursor(3,1); ST7735_OutUDec(ADCvalue);            // 0 to 4095
				ST7735_SetCursor(3,2);ST7735_DecOut2(temp); // 0.01 C 
			}

		}
	}

  
}


void ST7735_DecOut2(int32_t n){
	char thousands_c = '0';
	char hundreds_c = '0'; 
	char tens_c = '0';
	char units_c = '0';
	
	int thousands;
	int hundreds;
	int tens;
	int units;
	int negative = 0;
	
	
	
//	if(n>999 || n < -999){
//		printf(" *.**");
//		return;
//	}
//	if(n<0){ n = n*(-1);
//		negative = 1;
//	}
	thousands = n/1000;
	hundreds = (n%1000)/100;
	tens = (n%100)/10;
	units = n%10;
	thousands_c = ((char) (thousands)) + 0x30;
	hundreds_c = ((char) (hundreds)) + 0x30;
	tens_c = ((char) (tens)) + 0x30;
	units_c = ((char) (units)) + 0x30;
	
	ST7735_SetCursor(2,2); ST7735_OutChar(thousands_c);
	ST7735_SetCursor(3,2); ST7735_OutChar(hundreds_c);
	ST7735_SetCursor(4,2); ST7735_OutChar('.');
	ST7735_SetCursor(5,2); ST7735_OutChar(tens_c);
	ST7735_SetCursor(6,2); ST7735_OutChar(units_c);
	ST7735_SetCursor(7,2); ST7735_OutChar(' ');
	ST7735_SetCursor(8,2); ST7735_OutChar('C');
	
	return;
}

void Init_Plot(void){
ST7735_SetCursor(0,0); ST7735_OutString("Lab 9");
 ST7735_PlotClear(1000,4000);  // range from 0 to 4095
 ST7735_SetCursor(0,1); ST7735_OutString("N=");
 ST7735_SetCursor(0,2); ST7735_OutString("T="); ST7735_DecOut2(2500);
                        ST7735_OutString(" C");

}


int get_temp(int adc_val){
	int idx;
	for(idx = 10; idx<53; idx++){
		if(adc_val>=ADCdata[idx] && adc_val<=ADCdata[idx+1])
			break;
	}
	return Tdata[idx];
}


