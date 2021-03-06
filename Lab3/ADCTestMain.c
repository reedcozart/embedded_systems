// ADCTestMain.c
// Runs on TM4C123
// This program periodically samples ADC channel 0 and stores the
// result to a global variable that can be accessed with the JTAG
// debugger and viewed with the variable watch feature.
// Daniel Valvano	
// September 5, 2015

/* This example accompanies the book
   "Embedded Systems: Real Time Interfacing to Arm Cortex M Microcontrollers",
   ISBN: 978-1463590154, Jonathan Valvano, copyright (c) 2015

 Copyright 2015 by Jonathan W. Valvano, valvano@mail.utexas.edu
    You may use, edit, run or distribute this file
    as long as the above copyright notice remains
 THIS SOFTWARE IS PROVIDED "AS IS".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED
 OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF
 MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE.
 VALVANO SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL,
 OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
 For more information about my classes, my research, and my books, see
 http://users.ece.utexas.edu/~valvano/
 */

// center of X-ohm potentiometer connected to PE3/AIN0
// bottom of X-ohm potentiometer connected to ground
// top of X-ohm potentiometer connected to +3.3V 
#include <stdint.h>
#include "../inc/tm4c123gh6pm.h"
#include "PLL.h"
#include "sound.h"
#include "sys_tick.h"
#include "switch.h"
#include "display.h"
#include "ST7735.h"
#include "Timer1.h"

#define PE2  (*((volatile uint32_t *)0x40024020))

void DisableInterrupts(void); // Disable interrupts
void EnableInterrupts(void);  // Enable interrupts
long StartCritical (void);    // previous I bit, disable interrupts
void EndCritical(long sr);    // restore I bit to previous value
void WaitForInterrupt(void);  // low power mode
void PortF_Init(void);



uint8_t hours;
uint8_t minutes;
uint8_t seconds;

//GLOBAL FLAGS 
uint8_t refresh = 0;
uint8_t clear_screen = 0; // Used when switching from analog to digital mode, will tell the screen clear everything
uint8_t set_time = 0;
uint8_t alarm_mode = 0;
uint8_t clock_mode = 0; //Digital/analog mode 0 = Digital; 1 = Analog
uint8_t portE_flag = 0;
uint8_t time_set = 0; //Flag for time set mode 0 = off 1 = on
uint8_t alarm_set = 0; //Flag for Alarm set mode 0 = off 1 = on
uint8_t alarm_on = 0;

uint64_t timeout = 11;

uint8_t alarm_hours = 0; // global variables where the time for alarm is stored.
uint8_t alarm_minutes = 0;
uint8_t alarm_seconds = 0;

int main(void){
	
  PLL_Init(Bus80MHz);                   // 80 MHz
	DisableInterrupts();
  //ADC0_InitSWTriggerSeq3_Ch9();         // allow time to finish activating
  Timer0A_Init100HzInt();               // set up Timer0A for 100 Hz interrupts
	Timer1_Init();
	Display_Init();						//initialize display
	Timer2_Init1Hz();		
	PortF_Init(); //initialize portf with onboard switches
	PortE_Init(); // initialize port e as breadboard switches.
	
  EnableInterrupts();

  while(1){
		if( !alarm_mode || alarm_hours!= hours || alarm_minutes != minutes){ //if the alarm mode is turned off, disable timer1
			TIMER1_CTL_R = 0x00000000;
			GPIO_PORTF_DATA_R &= ~0x08; //make sure alarm LED is off
		}
		if(timeout>10){
			time_set = 0;
			alarm_set = 0;
		}
    if(refresh){
			Refresh_Screen();
		}
		if(alarm_hours == hours && alarm_minutes == minutes && alarm_mode == 1){
			alarm_on = 1;
			TIMER1_CTL_R = 0x00000001;
		}
	}
}








