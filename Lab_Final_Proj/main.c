//***********************  main.c  ***********************
// Program written by:
// - Steven Prickett  steven.prickett@gmail.com
//
// Brief desicription of program:
// - Initializes an ESP8266 module to act as a WiFi client
//   and fetch weather data from openweathermap.org
//
//*********************************************************
/* Modified by Jonathan Valvano
 Feb 3, 2016
 Out of the box: to make this work you must
 Step 1) Set parameters of your AP in lines 59-60 of esp8266.c
 Step 2) Change line 39 with directions in lines 40-42
 Step 3) Run a terminal emulator like Putty or TExasDisplay at
         115200 bits/sec, 8 bit, 1 stop, no flow control
 Step 4) Set line 50 to match baud rate of your ESP8266 (9600 or 115200)
 */
#include <stdio.h>
#include <stdbool.h>
#include <stdint.h>
#include <string.h>
#include <stdlib.h>

#include "../inc/tm4c123gh6pm.h"

#include "pll.h"
#include "UART.h"
#include "esp8266.h"
#include "LED.h"
#include "ST7735.h"
#include "switch.h"
#include "adc.h"
#include "ADCSWTrigger.h"

int UploadResult(char name[], char city[], char greet[], char data[]);

// prototypes for functions defined in startup.s
void DisableInterrupts(void); // Disable interrupts
void EnableInterrupts(void);  // Enable interrupts
long StartCritical (void);    // previous I bit, disable interrupts
void EndCritical(long sr);    // restore I bit to previous value
void WaitForInterrupt(void);  // low power mode


int ParseResponse(char* resp); //subroutine for parsing the openweather.org json string
int ParseTime(char* resp);
int ParseReminders(char* resp);
int ParseStock(char* resp);
char Fetch_Weather[] = "GET /data/2.5/weather?q=Austin%20Texas&APPID=76ad1ded99f42564a9bdbaebfea50e56 HTTP/1.1\r\nHost:api.openweathermap.org\r\n\r\n";
char Fetch_Kyle[] = "GET /ee445lapi.ashx HTTP/1.1\r\nHost:kylepolansky.dyndns.org\r\n\r\n";
char ResponseJson[SERVER_RESPONSE_SIZE];
int ADCvalue = -1;
int mode = 0;
int last_mode = 0;
int refresh = 1;



// 1) go to http://openweathermap.org/appid#use 
// 2) Register on the Sign up page
// 3) get an API key (APPID) replace the 1234567890abcdef1234567890abcdef with your APPID

int main(void){  
	char* lab_greeting = "Smart \"Mirror\"!";
	
	
  DisableInterrupts();
  PLL_Init(Bus80MHz);
  Output_Init();       // UART0 only used for debugging
	ST7735_Output_Init(); 
	PortF_Init();
	PortE_Init();
  printf("\n\r-----------\n\rSystem starting...\n\r");
	
	
  ESP8266_Init(115200);      // connect to access point, set up as client
  ESP8266_GetVersionNumber();
	
  while(1){
		if(last_mode != mode){
			refresh =1;
			last_mode = mode;
			memset(ResponseJson, 0, SERVER_RESPONSE_SIZE * sizeof(ResponseJson[0]));
		}
		
		if(mode==0&&refresh){
			refresh = 0;
			ST7735_FillScreen(0);
			ST7735_DrawString(0,0, lab_greeting, ST7735_WHITE);
			ST7735_DrawString(0,1, "MODE: WEATHER", ST7735_GREEN);
			ESP8266_GetStatus();
			if(ESP8266_MakeTCPConnection("kylepolansky.dyndns.org")){ // open socket in server
				LED_GreenOn();
				ESP8266_SendTCP(Fetch_Kyle);
			}
			ESP8266_CloseTCPConnection(); 				
			ParseWeather(ResponseJson);
			printf("START RESPONSE\n");
			printf(ResponseJson);
			printf("STOP RESPONSE\n");
			
		}
		else if(mode==1&&refresh){
			refresh = 0;
			ST7735_FillScreen(0);
			ST7735_DrawString(0,0, lab_greeting, ST7735_WHITE);
			ST7735_DrawString(0,1, "MODE: TIME", ST7735_GREEN);
			ESP8266_GetStatus();
			if(ESP8266_MakeTCPConnection("kylepolansky.dyndns.org")){ // open socket in server
				LED_GreenOn();
				ESP8266_SendTCP(Fetch_Kyle);
			}
			ESP8266_CloseTCPConnection(); 				
			ParseTime(ResponseJson);
			printf("START RESPONSE\n");
			printf(ResponseJson);
			printf("STOP RESPONSE\n");
			
		}
		else if(mode==2&&refresh){
			refresh = 0;
		ST7735_FillScreen(0);
			ST7735_DrawString(0,0, lab_greeting, ST7735_WHITE);
			ST7735_DrawString(0,1, "MODE: REMINDERS", ST7735_GREEN);
		ESP8266_GetStatus();
			if(ESP8266_MakeTCPConnection("kylepolansky.dyndns.org")){ // open socket in server
				LED_GreenOn();
				ESP8266_SendTCP(Fetch_Kyle);
			}
			ESP8266_CloseTCPConnection(); 				
			ParseReminders(ResponseJson);
			printf("START RESPONSE\n");
			printf(ResponseJson);
			printf("STOP RESPONSE\n");
		}	
		else if(mode==3&&refresh){
			refresh = 0;
		ST7735_FillScreen(0);
			ST7735_DrawString(0,0, lab_greeting, ST7735_WHITE);
			ST7735_DrawString(0,1, "MODE: NEWS", ST7735_GREEN);
		ESP8266_GetStatus();
			if(ESP8266_MakeTCPConnection("kylepolansky.dyndns.org")){ // open socket in server
				LED_GreenOn();
				ESP8266_SendTCP(Fetch_Kyle);
			}
			ESP8266_CloseTCPConnection(); 				
			ParseHeadline(ResponseJson);
			printf("START RESPONSE\n");
			printf(ResponseJson);
			printf("STOP RESPONSE\n");
		}
		else if(mode==4&&refresh){
			refresh = 0;
		ST7735_FillScreen(0);
			ST7735_DrawString(0,0, lab_greeting, ST7735_WHITE);
			ST7735_DrawString(0,1, "MODE: STOCK", ST7735_GREEN);
		ESP8266_GetStatus();
			if(ESP8266_MakeTCPConnection("kylepolansky.dyndns.org")){ // open socket in server
				LED_GreenOn();
				ESP8266_SendTCP(Fetch_Kyle);
			}
			ESP8266_CloseTCPConnection(); 				
			ParseStock(ResponseJson);
			printf("START RESPONSE\n");
			printf(ResponseJson);
			printf("STOP RESPONSE\n");
		}
		

  }
}

// transparent mode for testing
void ESP8266SendCommand(char *);
int main2(void){  char data;
  DisableInterrupts();
  PLL_Init(Bus80MHz);
 // LED_Init();  
  Output_Init();       // UART0 as a terminal
  printf("\n\r-----------\n\rSystem starting at 9600 baud...\n\r");

  ESP8266_InitUART(9600,true);
  ESP8266_EnableRXInterrupt();
  EnableInterrupts();
  ESP8266SendCommand("AT+RST\r\n");
  data = UART_InChar();

  
  while(1){
// echo data back and forth
    data = UART_InCharNonBlock();
    if(data){
      ESP8266_PrintChar(data);
    }
  }
}



int ParseTime(char* resp){
	char* sub_str;
	uint32_t offs;
	int i;
	int j = 0;
	
	sub_str = strstr(ResponseJson, "time:");
	offs = (int) ((int) sub_str - (int)ResponseJson );
	
	for(int i = offs; ResponseJson[i] != '\n'; i++){
		ST7735_SetCursor(j,4);
		ST7735_OutChar(ResponseJson[i]);
		j++;
		
	}
	
	return 0;
}

int ParseStock(char* resp){
	char* sub_str;
	uint32_t offs;
	int i;
	int j = 0;
	int k = 4;
	
	sub_str = strstr(ResponseJson, "stock:");
	offs = (int) ((int) sub_str - (int)ResponseJson );
	
	for(int i = offs; ResponseJson[i] != '\n'; i++){
		ST7735_SetCursor(j,k);
		ST7735_OutChar(ResponseJson[i]);
		j++;
		if(j>=20){
			j = 0;
			k++;
		}
	}
	
	return 0;
}
int ParseReminders(char* resp){
	char* sub_str;
	uint32_t offs;
	int i;
	int j = 0;
	int k = 4;
	
	sub_str = strstr(ResponseJson, "reminder:");
	offs = (int) ((int) sub_str - (int)ResponseJson );
	
	for(int i = offs; ResponseJson[i] != '\n'; i++){
		ST7735_SetCursor(j,k);
		ST7735_OutChar(ResponseJson[i]);
		j++;
		if(j>=20){
			j = 0;
			k++;
		}
	}
	
	return 0;
}

int ParseHeadline(char* resp){
	char* sub_str;
	uint32_t offs;
	int i;
	int j = 0;
	int k = 4;
	
	sub_str = strstr(ResponseJson, "headline:");
	offs = (int) ((int) sub_str - (int)ResponseJson );
	
	for(int i = offs; ResponseJson[i] != '\n'; i++){
		ST7735_SetCursor(j,k);
		ST7735_OutChar(ResponseJson[i]);
		j++;
		if(j>=20){
			j = 0;
			k++;
		}
	}
	
	return 0;
}
int ParseWeather(char* resp){
	char* sub_str;
	uint32_t offs;
	int i;
	int j = 0;
	
	sub_str = strstr(ResponseJson, "conds:");
	offs = (int) ((int) sub_str - (int)ResponseJson );
	
	for(int i = offs; ResponseJson[i] != '\n'; i++){
		ST7735_SetCursor(j,4);
		ST7735_OutChar(ResponseJson[i]);
		j++;
	}
	j = 0;
	
	sub_str = strstr(ResponseJson, "temp:");
	offs = (int) ((int) sub_str - (int)ResponseJson );
	
	for(int i = offs; ResponseJson[i] != '\n'; i++){
		ST7735_SetCursor(j,5);
		ST7735_OutChar(ResponseJson[i]);
		j++;
	}
	
	return 0;
}
