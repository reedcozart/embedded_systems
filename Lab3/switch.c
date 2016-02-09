#include <stdint.h>
#include "../inc/tm4c123gh6pm.h"
#include "switch.h"

extern uint8_t alarm_mode;
extern uint8_t refresh;

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
	refresh = 1;
}
