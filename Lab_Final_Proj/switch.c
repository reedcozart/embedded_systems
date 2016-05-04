#include <stdint.h>
#include "../inc/tm4c123gh6pm.h"
#include "switch.h"

extern int mode;

void PortF_Init(void){

	
	// initialize built-in switches and LEDs on Port F
  SYSCTL_RCGCGPIO_R |= 0x00000020; // (a) activate clock for port F
	int delay = 0;
	GPIO_PORTF_LOCK_R = 0x4C4F434B ;    //unlock GPIO Portf F
	GPIO_PORTF_CR_R = 0x1F;							//allows changes to port f
	GPIO_PORTF_DIR_R |= 0x0E;         // (c) make PF3, PF2, PF1 out (built-in LED) PF4, PF0 in (SW1, SW2), PF3 is wired to the 1N2222 transister for the sound output.
  GPIO_PORTF_AFSEL_R &= ~0x11;  //     disable alt funct on PF4, PF0
  GPIO_PORTF_DEN_R |= 0x1F;     //     enable digital I/O on PF4 - PF0 
  //GPIO_PORTF_PCTL_R &= ~0x000F0000; // configure PF4 as GPIO
	GPIO_PORTF_PCTL_R = 0x00000000; // configure PF4-0 as GPIO
  GPIO_PORTF_AMSEL_R = 0;       //     disable analog functionality on PF0, PF4
  GPIO_PORTF_PUR_R |= 0x11;     //     enable weak pull-up on PF4, PF0
  GPIO_PORTF_IS_R &= ~0x11;     // (d) PF4, PF0 is edge-sensitive
  GPIO_PORTF_IBE_R &= ~0x11;    //     PF4, PF0 is not both edges
  GPIO_PORTF_IEV_R &= ~0x11;    //     PF4, PF0 falling edge event
  GPIO_PORTF_ICR_R = 0x11;      // (e) clear flag4, flag0
  GPIO_PORTF_IM_R |= 0x11;      // (f) arm interrupt on PF4 *** No IME bit as mentioned in Book ***
  NVIC_PRI7_R = (NVIC_PRI7_R&0xFF00FFFF)|0x00A00000; // (g) priority 5
  NVIC_EN0_R |= 0x40000000;      // (h) enable interrupt 30 in NVIC
}

void PortE_Init(void){

	
	// initialize built-in switches and LEDs on Port E
  SYSCTL_RCGCGPIO_R |= 0x00000010; // (a) activate clock for port E
	GPIO_PORTE_DIR_R &= ~0x03;         // (c) make PE0, PE1 Breadboard switch in(SWL, SWR) PE2 connects 1N2222 transister
  GPIO_PORTE_AFSEL_R &= ~0x7;  //     disable alt funct on PE2, PE1, PE0
  GPIO_PORTE_DEN_R |= 0x07;     //     enable digital I/O on PE2, PE1, PE0   
  //GPIO_PORTE_PCTL_R &= ~0x000F0000; // configure PE2, PE0, PE1 as GPIO
	GPIO_PORTE_PCTL_R = 0x00000000; // configure PE2, PE0, PE1 as GPIO
  GPIO_PORTE_AMSEL_R = 0;       //     disable analog functionality on PE
  //GPIO_PORTE_PUR_R |= 0x03;     //     enable weak pull-up on PE0, PE1
  GPIO_PORTE_IS_R &= ~0x03;     // (d) PE0, PE1 is edge-sensitive
  GPIO_PORTE_IBE_R &= ~0x03;    //     PE0, PE1 is not both edges
  GPIO_PORTE_IEV_R &= ~0x03;    //     PE0, PE1 falling edge event
  GPIO_PORTE_ICR_R = 0x03;      // (e) clear flag0,1
	GPIO_PORTE_IM_R |= 0x03;      // (f) arm interrupt on PE0, PE1 *** No IME bit as mentioned in Book ***
  NVIC_PRI7_R = (NVIC_PRI1_R&0xFFFFFF00)|0x00000040; // (g) priority 2
  NVIC_EN0_R |= 0x00000010;      // (h) enable interrupt 4 in NVIC
}


void GPIOPortF_Handler(void){ //Currently this is called when SW1 or SW2 are pressed

		if(GPIO_PORTF_RIS_R&0x01){ //SW2 was pressed toggle clock_mode
			GPIO_PORTF_ICR_R |= 0x01; //acknowledge flag 0
			//mode++;
		}
		if(GPIO_PORTF_RIS_R&0x10){ //SW1 as pressed toggle alarm
			GPIO_PORTF_ICR_R |= 0x10; //acknowledge flag4
			//mode--;
		}
		return;
	
}

void GPIOPortE_Handler(void){
		if(GPIO_PORTE_RIS_R&0x01){
			GPIO_PORTE_ICR_R |= 0x01; //acknowledge flag0
			mode++;
			if (mode>4) mode = 4;
		}
		if(GPIO_PORTE_RIS_R&0x02){
			GPIO_PORTE_ICR_R |= 0x02;
			mode--;
			if(mode<0) mode = 0;
		}
		
		return;
	

}
