#include <stdint.h>
#include "../inc/tm4c123gh6pm.h"
#include "display.h"
#include "ST7735.h"

extern uint8_t alarm_mode;
extern uint8_t refresh;

void Refresh_Screen(void){
	int i;
	char time_str[8] = {'0','0',':','0','0',':','0','0'};
	for(i=0; i<8; i++){
		time_str[0] = (char) hours/10 + 0x30;
		time_str[1] = (char) hours%10 + 0x30;
		time_str[3] = (char) minutes/10 + 0x30;
		time_str[4] = (char) minutes%10 + 0x30;
		time_str[6] = (char) seconds/10 + 0x30;
		time_str[7] = (char) seconds%10 + 0x30;
		ST7735_DrawString(0,0, time_str, ST7735_YELLOW);			
	}
	if(alarm_mode){
		ST7735_DrawString(0,15, "ALARM ON ", ST7735_GREEN);
	}else{
		ST7735_DrawString(0,15, "ALARM OFF", ST7735_RED);
	}
	refresh = 0;
}

void Display_Init(void){
	ST7735_InitR(INITR_REDTAB);
}
