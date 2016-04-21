// PWMtest.c
// Runs on TM4C123
// Use PWM0/PB6 and PWM1/PB7 to generate pulse-width modulated outputs.
// Daniel Valvano
// March 28, 2014

/* This example accompanies the book
   "Embedded Systems: Real Time Interfacing to Arm Cortex M Microcontrollers",
   ISBN: 978-1463590154, Jonathan Valvano, copyright (c) 2015
   Program 6.8, section 6.3.2

   "Embedded Systems: Real-Time Operating Systems for ARM Cortex M Microcontrollers",
   ISBN: 978-1466468863, Jonathan Valvano, copyright (c) 2015
   Program 8.4, Section 8.3

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
#include <stdint.h>
#include "PLL.h"
#include "PWM.h"
#include "switch.h"
#include "tach.h"
#include "motor.h"
#include "ST7735.h"
#include "../inc/tm4c123gh6pm.h"

#define PF2             (*((volatile uint32_t *)0x40025010))

int motor_rpm = 0;
int tach_count = 0;
int set_speed = 25;
char speed_str[16] = {'S','p', 'e', 'e', 'd', ' ', '=', ' ', '0', '!', '!', ' ', 'r', 'p', 's', 0};
char desired_str[17] = {'d', 'e', 's', 'i', 'r', 'e', 'd', '=', ' ', '0', '!', '!', ' ', 'r', 'p', 's',0 };
int times=0;
int refresh = 0;
int N = 2; 
int fs = 10;
int samples = 0;
int change_duty_cnt = 0;
int change_duty = 0;
	
int period = 40000;
int duty = 30000;

void WaitForInterrupt(void);  // low power mode
void Timer0A_Init10HzInt(void){
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
  TIMER0_TAILR_R = 7999999;        // start value for 10 Hz interrupts
  TIMER0_IMR_R |= TIMER_IMR_TATOIM;// enable timeout (rollover) interrupt
  TIMER0_ICR_R = TIMER_ICR_TATOCINT;// clear timer0A timeout flag
  TIMER0_CTL_R |= TIMER_CTL_TAEN;  // enable timer0A 32-b, periodic, interrupts
  // **** interrupt initialization ****
                                   // Timer0A=priority 2
  NVIC_PRI4_R = (NVIC_PRI4_R&0x00FFFFFF)|0x40000000; // top 3 bits
  NVIC_EN0_R = 1<<19;              // enable interrupt 19 in NVIC
}

void Timer0A_Handler(void){
	int error;
  TIMER0_ICR_R = TIMER_ICR_TATOCINT;    // acknowledge timer0A timeout
                    // profile
	times++;
	change_duty_cnt++;
	if(times == 10){
		PF2 ^= 0x04; 
		motor_rpm = tach_count/4; 
		tach_count = 0;
		times = 0;
		refresh = 1;
		

	}
		error = set_speed - motor_rpm;
		duty = duty+(20*error)/10;
		if(duty <40) duty = 40;
		if(duty>39960) duty = 39960;
		PWM0A_Duty(duty);
}


int main(void){
	char* lab10greeting = "Welcome to Lab 10!";
  PLL_Init(Bus80MHz);               // bus clock at 80 MHz
	PortF_Init();
	PortE_Init();
	Timer0A_Init10HzInt();
  PWM0A_Init(period, duty);         // initialize PWM0, 100 Hz, 75% duty
  PWM0B_Init(40000, 10000);         // initialize PWM0, 100 Hz, 25% duty
//  PWM0_Duty(4000);    // 10%
//  PWM0_Duty(10000);   // 25%
//  PWM0_Duty(30000);   // 75%

//  PWM0_Init(4000, 2000);         // initialize PWM0, 10000 Hz, 50% duty
//  PWM0_Init(1000, 900);          // initialize PWM0, 40000 Hz, 90% duty
//  PWM0_Init(1000, 100);          // initialize PWM0, 40000 Hz, 10% duty
//  PWM0_Init(40, 20);             // initialize PWM0, 1 MHz, 50% duty
	
	Output_Init();
	ST7735_DrawString(0,0, lab10greeting, ST7735_WHITE);
	//Init_Plot();
	
	//ST7735_SetCursor(0,0); ST7735_OutString("Lab 9");
 ST7735_PlotClear(0,100);  // range from 0 to 4095
 EnableInterrupts();

  while(1){
		
		
		speed_str[8] = motor_rpm/100 + 0x30;
		speed_str[9] = (motor_rpm%100)/10+ 0x30;
		speed_str[10] = motor_rpm%10+ 0x30;
    ST7735_SetCursor(0,1); ST7735_OutString(speed_str);
		desired_str[9] = set_speed/100+ 0x30;
		desired_str[10] = (set_speed%100)/10+ 0x30;
		desired_str[11] = set_speed%10+ 0x30;
		ST7735_SetCursor(0,2); ST7735_OutString(desired_str);
		
		if(1){
			refresh = 0;
			samples++;
			ST7735_PlotPoint(motor_rpm);
			ST7735_PlotPoint(set_speed);
			if((samples&(N-1))==0){          // fs sampling, fs/N samples plotted per second
				ST7735_PlotNextErase();  // overwrites N points on same line
			}
			if((samples%fs)==0){    // fs sampling, 1 Hz display of numerical data
			
			}
//			if(change_duty){
//				change_duty = 0;
//				if( set_speed > motor_rpm + 3){
//					//duty = duty -(duty*5)/100;
//					PWM0A_Duty(duty);
//				}
//				if(set_speed < motor_rpm -3){
//					//duty = duty + (duty*5)/100;
//					PWM0A_Duty(duty);
//				}
//			}
		}
	}
}

