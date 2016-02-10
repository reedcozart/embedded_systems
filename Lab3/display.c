#include <stdint.h>
#include "../inc/tm4c123gh6pm.h"
#include "display.h"
#include "ST7735.h"

extern uint8_t alarm_mode;
extern uint8_t refresh;
extern uint8_t clock_mode;
extern uint8_t portE_flag;

extern uint8_t alarm_hours;
extern uint8_t alarm_minutes;
extern uint8_t alarm_seconds;

void Refresh_Screen(void){
	char time_str[9] = {'0','0',':','0','0',':','0','0',(char) 0};
	char alarm_on_str[19]  = {'A','L','A','R','M',' ','O','N',' ',' ','0','0',':','0','0',':','0','0', (char) 0};
	char alarm_off_str[19] = {'A','L','A','R','M',' ','O','F','F',' ','0','0',':','0','0',':','0','0', (char) 0};
	
		time_str[0] = (char) hours/10 + 0x30;
		time_str[1] = (char) hours%10 + 0x30;
		time_str[3] = (char) minutes/10 + 0x30;
		time_str[4] = (char) minutes%10 + 0x30;
		time_str[6] = (char) seconds/10 + 0x30;
		time_str[7] = (char) seconds%10 + 0x30;
		ST7735_DrawString(0,0, time_str, ST7735_YELLOW);			
	
	if(alarm_mode){
		alarm_on_str[10] = (char) alarm_hours/10 + 0x30;
		alarm_on_str[11] = (char) alarm_hours%10 + 0x30;
		alarm_on_str[13] = (char) alarm_minutes/10 + 0x30;
		alarm_on_str[14] = (char) alarm_minutes%10 + 0x30;
		alarm_on_str[16] = (char) alarm_seconds/10 + 0x30;
		alarm_on_str[17] = (char) alarm_seconds%10 + 0x30;
		ST7735_DrawString(0,15, alarm_on_str, ST7735_GREEN);
	}else{
		alarm_off_str[10] = (char) alarm_hours/10 + 0x30;
		alarm_off_str[11] = (char) alarm_hours%10 + 0x30;
		alarm_off_str[13] = (char) alarm_minutes/10 + 0x30;
		alarm_off_str[14] = (char) alarm_minutes%10 + 0x30;
		alarm_off_str[16] = (char) alarm_seconds/10 + 0x30;
		alarm_off_str[17] = (char) alarm_seconds%10 + 0x30;
		ST7735_DrawString(0,15, alarm_off_str, ST7735_RED);
	}
	if(portE_flag)
		ST7735_DrawString(0, 4, "PortE Interrupt!", ST7735_WHITE);
	else
		ST7735_DrawString(0, 4, "                 ", ST7735_WHITE);
	refresh = 0;
}

void Display_Init(void){
	ST7735_InitR(INITR_REDTAB);
}
