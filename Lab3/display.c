#include <stdint.h>
#include "../inc/tm4c123gh6pm.h"
#include "display.h"
#include "ST7735.h"
#include <math.h>

extern uint8_t alarm_mode;
extern uint8_t refresh;
extern uint8_t clear_screen;
extern uint8_t clock_mode;
extern uint8_t portE_flag;

extern uint8_t alarm_hours;
extern uint8_t alarm_minutes;
extern uint8_t alarm_seconds;

void Refresh_Screen(void){
	char time_str[9] = {'0','0',':','0','0',':','0','0',(char) 0};
	char alarm_on_str[19]  = {'A','L','A','R','M',' ','O','N',' ',' ','0','0',':','0','0',':','0','0', (char) 0};
	char alarm_off_str[19] = {'A','L','A','R','M',' ','O','F','F',' ','0','0',':','0','0',':','0','0', (char) 0};
		
	if(clock_mode){ //0 = digital, 1 = analog
		//ANALOG CLOCK DISPLAY CODE HERE
		
		int midx = ST7735_TFTWIDTH/2;
		int midy = ST7735_TFTHEIGHT/2;
		int secHandLength = 50;
		int minHandLength = 40;
		int hourHandLength = 30;
		
		int secx = midx + secHandLength * sin(2 * 3.14159 * ( seconds /60.0));
		int secy = midy + secHandLength * -1 * cos(2 * 3.14159 * (seconds / 60.0));
		int minx = midx + minHandLength * sin(2 * 3.14159 * (minutes /60.0));
		int miny = midy + minHandLength * -1 * cos(2 * 3.14159 * (minutes / 60.0));
		int hourx = midx + hourHandLength * sin(2 * 3.14159 * (hours /60.0));
		int houry = midy + hourHandLength * -1 * cos(2 * 3.14159 * (hours / 60.0));
		
		ST7735_FillScreen(0);
		
		//seconds
		ST7735_Line(midx, midy, secx, secy, ST7735_RED);
		//minutes
		ST7735_Line(midx, midy, minx, miny, ST7735_YELLOW);
		//hours
		ST7735_Line(midx, midy, hourx, houry, ST7735_BLUE);
		
		
		if(clear_screen){
			clear_screen = 0;
			ST7735_FillScreen(0); // reset the screen to black
		}
		ST7735_DrawString(0,0, "ANALOG CLOCK", ST7735_YELLOW);
	}else{
		//Digital Clock Display
		if(clear_screen){
			clear_screen = 0;
			ST7735_FillScreen(0); // reset the screen to black
		}
		time_str[0] = (char) hours/10 + 0x30;
		time_str[1] = (char) hours%10 + 0x30;
		time_str[3] = (char) minutes/10 + 0x30;
		time_str[4] = (char) minutes%10 + 0x30;
		time_str[6] = (char) seconds/10 + 0x30;
		time_str[7] = (char) seconds%10 + 0x30;
		ST7735_DrawString(0,0, time_str, ST7735_YELLOW);
	}		
	
	if(alarm_mode){
		//Alarm Mode on
		alarm_on_str[10] = (char) alarm_hours/10 + 0x30;
		alarm_on_str[11] = (char) alarm_hours%10 + 0x30;
		alarm_on_str[13] = (char) alarm_minutes/10 + 0x30;
		alarm_on_str[14] = (char) alarm_minutes%10 + 0x30;
		alarm_on_str[16] = (char) alarm_seconds/10 + 0x30;
		alarm_on_str[17] = (char) alarm_seconds%10 + 0x30;
		ST7735_DrawString(0,15, alarm_on_str, ST7735_GREEN);
	}else{
		//Alarm Mode off
		alarm_off_str[10] = (char) alarm_hours/10 + 0x30;
		alarm_off_str[11] = (char) alarm_hours%10 + 0x30;
		alarm_off_str[13] = (char) alarm_minutes/10 + 0x30;
		alarm_off_str[14] = (char) alarm_minutes%10 + 0x30;
		alarm_off_str[16] = (char) alarm_seconds/10 + 0x30;
		alarm_off_str[17] = (char) alarm_seconds%10 + 0x30;
		ST7735_DrawString(0,15, alarm_off_str, ST7735_RED);
	}
	//DISABLED AS THIS WAS MESSING UP THE ANALOG CLOCK
//	if(portE_flag)
//		ST7735_DrawString(0, 4, "PortE Interrupt!", ST7735_WHITE);
//	else
//		ST7735_DrawString(0, 4, "                 ", ST7735_WHITE);
		refresh = 0;
}

void Display_Init(void){
	ST7735_InitR(INITR_REDTAB);
}
