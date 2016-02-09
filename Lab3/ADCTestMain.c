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
#include <stdlib.h>
#include "ADCSWTrigger.h"
#include "../inc/tm4c123gh6pm.h"
#include "ST7735.h"
#include "PLL.h"
#include "Timer1.h"

#define PF2             (*((volatile uint32_t *)0x40025010))
#define PF1             (*((volatile uint32_t *)0x40025008))
void DisableInterrupts(void); // Disable interrupts
void EnableInterrupts(void);  // Enable interrupts
long StartCritical (void);    // previous I bit, disable interrupts
void EndCritical(long sr);    // restore I bit to previous value
void WaitForInterrupt(void);  // low power mode
void PortF_Init(void);


uint8_t hours;
uint8_t minutes;
uint8_t seconds;
uint8_t refresh = 0;
uint8_t set_time = 0;
uint8_t alarm_mode = 0;

// This debug function initializes Timer0A to request interrupts
// at a 100 Hz frequency.  It is similar to FreqMeasure.c.
void Timer0A_Init100HzInt(void){
  volatile uint32_t delay;
  DisableInterrupts();
  // **** general initialization ****
  SYSCTL_RCGCTIMER_R |= 0x01;      // activate timer0
  delay = SYSCTL_RCGCTIMER_R;      // allow time to finish activating
  TIMER0_CTL_R &= ~TIMER_CTL_TAEN; // disable timer0A during setup
  TIMER0_CFG_R = 0;                // configure for 32-bit timer mode
  // **** timer0A initialization ****
                                   // configure for periodic mode
  TIMER0_TAMR_R = TIMER_TAMR_TAMR_PERIOD;
  TIMER0_TAILR_R = 799999;         // start value for 100 Hz interrupts
  TIMER0_IMR_R |= TIMER_IMR_TATOIM;// enable timeout (rollover) interrupt
  TIMER0_ICR_R = TIMER_ICR_TATOCINT;// clear timer0A timeout flag
  TIMER0_CTL_R |= TIMER_CTL_TAEN;  // enable timer0A 32-b, periodic, interrupts
  // **** interrupt initialization ****
                                   // Timer0A=priority 2
  NVIC_PRI4_R = (NVIC_PRI4_R&0x00FFFFFF)|0x40000000; // top 3 bits
  NVIC_EN0_R = 1<<19;              // enable interrupt 19 in NVIC
}

void Timer2_Init1Hz(void){
  SYSCTL_RCGCTIMER_R |= 0x04;   // 0) activate TIMER2
  TIMER2_CTL_R = 0x00000000;    // 1) disable TIMER2 during setup
  TIMER2_CFG_R = 0x00000000;    // 2) configure for 32-bit mode
  TIMER2_TAMR_R = 0x00000002;   // 3) configure for periodic mode, default down-count settings
  TIMER2_TAILR_R = 80000000;      // 4) reload value - 1Hz intervals
  //TIMER2_TAPR_R = 0;            // 5) bus clock resolution
  TIMER2_ICR_R = 0x00000001;    // 6) clear TIMER1A timeout flag
  TIMER2_IMR_R = 0x00000001;    // 7) arm timeout interrupt
  NVIC_PRI5_R = (NVIC_PRI5_R&0x00FFFFFF)|0x10000000; // 8) priority 1 (I think)
  TIMER2_CTL_R = 0x00000001;    // 10) enable TIMER2
	NVIC_EN0_R = NVIC_EN0_R | 1<<23;        // enable interrupt 23 in NVIC
	refresh = 1; //tell main program to refresh the data on the screen.
}

void Timer2A_Handler(void){
  TIMER2_ICR_R = TIMER_ICR_TATOCINT;    // acknowledge timer0A timeout
	PF1 ^= 0x02;  // toggles when running in main RED LED
	seconds++;
	refresh = 1;
	if(seconds > 59){
		seconds = 0;
		minutes++;
		if(minutes>59){
			minutes = 0;
			hours++;
			if(hours>24){
				hours = 0;
			}
		}
	}
}


void Timer0A_Handler(void){
  TIMER0_ICR_R = TIMER_ICR_TATOCINT;    // acknowledge timer0A timeout
  //PF2 ^= 0x04;                   // profile

}
int main(void){
	int return_val;
	char time_str[8] = {'0','0',':','0','0',':','0','0'};
	int i;
	
  PLL_Init(Bus80MHz);                   // 80 MHz
 
  ADC0_InitSWTriggerSeq3_Ch9();         // allow time to finish activating
  Timer0A_Init100HzInt();               // set up Timer0A for 100 Hz interrupts
	Timer1_Init();
	ST7735_InitR(INITR_REDTAB);						//Initialize the Display
	Timer2_Init1Hz();
	PortF_Init();
	
	
	//PF2 = 0;                      // turn off LED
	
  EnableInterrupts();

  while(1){
    if(refresh){
			for(i=0; i<8; i++){
				time_str[0] = (char) hours/10 + 0x30;
				time_str[1] = (char) hours%10 + 0x30;
				time_str[3] = (char) minutes/10 + 0x30;
				time_str[4] = (char) minutes%10 + 0x30;
				time_str[6] = (char) seconds/10 + 0x30;
				time_str[7] = (char) seconds%10 + 0x30;
				return_val = ST7735_DrawString(0,0, time_str, ST7735_YELLOW);
			}
			if(alarm_mode){
					ST7735_DrawString(0,15, "ALARM ON ", ST7735_GREEN);
			}else{
					ST7735_DrawString(0,15, "ALARM OFF", ST7735_RED);
			}
			refresh = 0;
		}
		
  }
}

void Timer1_Init(void){
  SYSCTL_RCGCTIMER_R |= 0x02;   // 0) activate TIMER1
  //PeriodicTask = task;          // user function
  TIMER1_CTL_R = 0x00000000;    // 1) disable TIMER1A during setup
  TIMER1_CFG_R = 0x00000000;    // 2) configure for 32-bit mode
  TIMER1_TAMR_R = 0x00000002;   // 3) configure for periodic mode, default down-count settings
  TIMER1_TAILR_R = 0xFFFFFFFF;    // 4) reload value
  TIMER1_TAPR_R = 0;            // 5) bus clock resolution
  TIMER1_ICR_R = 0x00000001;    // 6) clear TIMER1A timeout flag
  TIMER1_IMR_R = 0x00000001;    // 7) arm timeout interrupt
  NVIC_PRI5_R = (NVIC_PRI5_R&0xFFFF00FF)|0x00008000; // 8) priority 4
// interrupts enabled in the main program after all devices initialized
// vector number 37, interrupt number 21
  //NVIC_EN0_R = 1<<21;           // 9) enable IRQ 21 in NVIC
  TIMER1_CTL_R = 0x00000001;    // 10) enable TIMER1A
}

void PortF_Init(void){
	//PORTF SWITCH INITIZLISATION
//	SYSCTL_RCGCGPIO_R |= 0x20;            // activate port F
//	GPIO_PORTF_DIR_R |= 0x0E;             // make PF3, PF2, PF1 out (built-in LED) PF4, PF0 in (SW1, SW2)
//  GPIO_PORTF_AFSEL_R &= ~0x06;          // disable alt funct on PF2, PF1
//  GPIO_PORTF_DEN_R |= 0x1F;             // enable digital I/O on PF4, PF3, PF2, PF1, PF0
//                                        // configure PF2 as GPIO
//	GPIO_PORTF_PUR_R |= 0x000000011; //turns on swtiches on launchpad Switch 1 = PF0 Switch2 = PF4;
//	GPIO_PORTF_LOCK_R = 0x4C4F434B; 				// UNLOCK PORT F
//	GPIO_PORTF_CR_R = 0x1F;
//  GPIO_PORTF_PCTL_R = (GPIO_PORTF_PCTL_R&0xFFFFF00F)+0x00000000;
//  GPIO_PORTF_AMSEL_R = 0;               // disable analog functionality on PF
//	GPIO_PORTF_IS_R &= 0xFE; 							//clear interrupt sense bit PF0
//	GPIO_PORTF_IBE_R &= 0xFE;							// clear Interrupt both edges
//	GPIO_PORTF_IEV_R &= 0xFE; 						// clear interrupt event for falling edge on PF0
//	GPIO_PORTF_IM_R |= 0x01; 							//SET Interrupt Mask Enable bit for PF0
//  GPIO_PORTF_ICR_R = 0x01; 							//clear the flag
//	NVIC_PRI7_R = (NVIC_PRI7_R&0xFF00FFFF)|0x00A00000; //Priority 5
//	NVIC_EN0_R = 4;  											//Enable interrupt 30 in NVIC
	// END PORTF INITIALIZATION
	
	// initialize built-in switches and LEDs on Port F
  SYSCTL_RCGCGPIO_R |= 0x00000020; // (a) activate clock for port F
	GPIO_PORTF_DIR_R |= 0x0E;         // (c) make PF3, PF2, PF1 out (built-in LED) PF4, PF0 in (SW1, SW2)
  GPIO_PORTF_AFSEL_R &= ~0x10;  //     disable alt funct on PF4
  GPIO_PORTF_DEN_R |= 0x1F;     //     enable digital I/O on PF4   
  GPIO_PORTF_PCTL_R &= ~0x000F0000; // configure PF4 as GPIO
  GPIO_PORTF_AMSEL_R = 0;       //     disable analog functionality on PF
  GPIO_PORTF_PUR_R |= 0x10;     //     enable weak pull-up on PF4
  GPIO_PORTF_IS_R &= ~0x10;     // (d) PF4 is edge-sensitive
  GPIO_PORTF_IBE_R &= ~0x10;    //     PF4 is not both edges
  GPIO_PORTF_IEV_R &= ~0x10;    //     PF4 falling edge event
  GPIO_PORTF_ICR_R = 0x10;      // (e) clear flag4
  GPIO_PORTF_IM_R |= 0x10;      // (f) arm interrupt on PF4 *** No IME bit as mentioned in Book ***
  NVIC_PRI7_R = (NVIC_PRI7_R&0xFF00FFFF)|0x00A00000; // (g) priority 5
  NVIC_EN0_R = 0x40000000;      // (h) enable interrupt 30 in NVIC
}

void GPIOPortF_Handler(void){
	GPIO_PORTF_ICR_R = 0x10;      // acknowledge flag4
	alarm_mode^=1;
}

