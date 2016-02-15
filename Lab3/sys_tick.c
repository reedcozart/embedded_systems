#include "sys_tick.h"
#include "../inc/tm4c123gh6pm.h"
#include <stdint.h>

#define PE2  (*((volatile uint32_t *)0x40024020))


extern uint8_t refresh;
extern uint8_t seconds;
extern uint8_t minutes;
extern uint8_t hours;
extern uint8_t alarm_mode;
extern uint64_t timeout;

void Timer1_Init(void){   //This is the alarm timer!
  SYSCTL_RCGCTIMER_R |= 0x02;   // 0) activate TIMER1
  //PeriodicTask = task;          // user function
  TIMER1_CTL_R = 0x00000000;    // 1) disable TIMER1A during setup
  TIMER1_CFG_R = 0x00000000;    // 2) configure for 32-bit mode
  TIMER1_TAMR_R = 0x00000002;   // 3) configure for periodic mode, default down-count settings
  TIMER1_TAILR_R = 80000;    // 4) reload value - 1k Hz
  //TIMER1_TAPR_R = 0;            // 5) bus clock resolution
  TIMER1_ICR_R = 0x00000001;    // 6) clear TIMER1A timeout flag
  TIMER1_IMR_R = 0x00000001;    // 7) arm timeout interrupt
  NVIC_PRI5_R = (NVIC_PRI5_R&0xFFFF00FF)|0x00008000; // 8) priority 4
// interrupts enabled in the main program after all devices initialized
// vector number 37, interrupt number 21
  NVIC_EN0_R = 1<<21;           // 9) enable IRQ 21 in NVIC
  TIMER1_CTL_R = 0x00000001;    // 10) enable TIMER1A
}

// This debug function initializes Timer0A to request interrupts
// at a 100 Hz frequency.  It is similar to FreqMeasure.c.
void Timer0A_Init100HzInt(void){
  volatile uint32_t delay;
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

void Timer2_Init1Hz(void){ //this is the seconds counter
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
	timeout+=1;
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

void Timer1A_Handler(void){      //alarm handler!
  TIMER1_ICR_R = TIMER_ICR_TATOCINT;    // acknowledge timer1A timeout
	if(alarm_mode){
		GPIO_PORTE_DATA_R ^= 0x04; //sound alarm!
		GPIO_PORTF_DATA_R ^= 0x08; //toggle LED to show that the alarm is supposed to sound
	}
}


void Timer0A_Handler(void){
  TIMER0_ICR_R = TIMER_ICR_TATOCINT;    // acknowledge timer0A timeout
  //PF2 ^= 0x04;                   // profile

}
