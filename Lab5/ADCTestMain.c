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
#include "DAC.h"

#define PE2  (*((volatile uint32_t *)0x40024020))

// this is a table of Timer delays needed to output
// the next sine point for the given note
// Each element corresponds to an actual note,
// starting with C_2 and ending with C2, by half steps


void DisableInterrupts(void); // Disable interrupts
void EnableInterrupts(void);  // Enable interrupts
long StartCritical(void);    // previous I bit, disable interrupts
void EndCritical(long sr);    // restore I bit to previous value
void WaitForInterrupt(void);  // low power mode
void PortF_Init(void);

//Global Data structures


//GLOBAL FLAGS 


int main(void) {

	PLL_Init(Bus80MHz);                   // 80 MHz
	DisableInterrupts();
	//ADC0_InitSWTriggerSeq3_Ch9();         // allow time to finish activating
	//Display_Init();						//initialize display	
	PortF_Init(); //initialize portf with onboard switches
	PortE_Init(); // initialize port e as breadboard switches.

	Timer0A_SongTimer();
	Timer1_N1_Init();
	Timer2_N2_Init();
	Timer3_N3_Init();
	DACInit();


	EnableInterrupts();

	while (1) {

	}
}








