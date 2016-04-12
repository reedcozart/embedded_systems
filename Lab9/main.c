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

char Fetch[] = "GET /data/2.5/weather?q=Austin%20Texas&APPID=e18aa6ec1dab60a6867898c207404521 HTTP/1.1\r\nHost:api.openweathermap.org\r\n\r\n";
char ResponseJson[SERVER_RESPONSE_SIZE];
int ADCvalue = -1;

char temp_str[10] = {'T', 'e', 'm', 'p', ':', '!', '!', '!', 'K', 0};
char adcvalue_str[9] = {'A', 'D', 'C', ':', '!', '!', '!', '!', 0};
char voltage_str[14] = {'V', 'o', 'l', 't', 'a', 'g', 'e', ':', '!', '.', '!', '!', 'V', 0};

// 1) go to http://openweathermap.org/appid#use 
// 2) Register on the Sign up page
// 3) get an API key (APPID) replace the 1234567890abcdef1234567890abcdef with your APPID

int main(void){  
	char* lab4greeting = "Welcome to Lab 4!";
	
  DisableInterrupts();
  PLL_Init(Bus80MHz);
	//ST7735_InitR(INITR_REDTAB);
  LED_Init();  
  Output_Init();       // UART0 only used for debugging
	ST7735_Output_Init(); 
	ADC0_InitSWTriggerSeq3_Ch9(); //initialize the ADC
	Timer0A_Init100HzInt(); //initialize the timer
  printf("\n\r-----------\n\rSystem starting...\n\r");
	ST7735_DrawString(0,0, lab4greeting, ST7735_WHITE);
	ST7735_DrawString(0,1, "Fetching Weather Data...", ST7735_WHITE);
  ESP8266_Init(115200);      // connect to access point, set up as client
  ESP8266_GetVersionNumber();
	
  while(1){
    ESP8266_GetStatus();
    if(ESP8266_MakeTCPConnection("openweathermap.org")){ // open socket in server
      LED_GreenOn();
      ESP8266_SendTCP(Fetch);
    }
    ESP8266_CloseTCPConnection(); 
		ParseResponse(ResponseJson);
		printf(ResponseJson);
		printf("\n Hello!\n");
		UploadResult("Reed", "ATX", temp_str, adcvalue_str);
    while(Board_Input()==0){// wait for touch
    }; 
    LED_GreenOff();
    LED_RedToggle();
  }
}

// transparent mode for testing
void ESP8266SendCommand(char *);
int main2(void){  char data;
  DisableInterrupts();
  PLL_Init(Bus80MHz);
  LED_Init();  
  Output_Init();       // UART0 as a terminal
  printf("\n\r-----------\n\rSystem starting at 9600 baud...\n\r");
//  ESP8266_Init(38400);
  ESP8266_InitUART(9600,true);
  ESP8266_EnableRXInterrupt();
  EnableInterrupts();
  ESP8266SendCommand("AT+RST\r\n");
  data = UART_InChar();
//  ESP8266SendCommand("AT+UART=115200,8,1,0,3\r\n");
//  data = UART_InChar();
//  ESP8266_InitUART(115200,true);
//  data = UART_InChar();
  
  while(1){
// echo data back and forth
    data = UART_InCharNonBlock();
    if(data){
      ESP8266_PrintChar(data);
    }
  }
}

int UploadResult(char name[], char city[], char greet[], char data[]) {
	char* ur = "kylepolansky.dyndns.org/api/EE445L_Lab4?name=&city=&greet=&data=";
	char* base = "GET /api/EE445L_Lab4?name=";
	char* uploadrequest;
	//uploadrequest = malloc(strlen(ur)+strlen(name)+strlen(city)+strlen(greet)+strlen(data)+1);
	uploadrequest = malloc(1000);
	strcpy(uploadrequest, base);
	strcat(uploadrequest, name);
	strcat(uploadrequest, "&city=");
	strcat(uploadrequest, city);
	strcat(uploadrequest, "&greet=");
	strcat(uploadrequest, greet);
	strcat(uploadrequest, "&data=");
	strcat(uploadrequest, data);
	strcat(uploadrequest, " HTTP/1.1\r\nHost:kylepolansky.dyndns.org\r\n\r\n");
	ST7735_DrawString(0,4, "Uploading Request!", ST7735_WHITE);
	//uploadreqest = " HTTP/1.1\r\nHost:kylepolansky.dyndns.org\r\n\r\n";
	
	ESP8266_GetStatus();
    if(ESP8266_MakeTCPConnection("kylepolansky.dyndns.org")){ // open socket in server
      LED_GreenOn();
      ESP8266_SendTCP(uploadrequest);
    }
    ESP8266_CloseTCPConnection();
		free(uploadrequest);
		return 1;
}



int ParseResponse(char* resp){
	char* sub_str;
	uint32_t offs;
	uint32_t temp;
	
	
	
	
	sub_str = strstr(ResponseJson, "temp");
	offs = (int) ((int) sub_str - (int)ResponseJson);
	
	temp = ((int) ResponseJson[offs+6] - 0x30)*100;
	temp += ((int) ResponseJson[offs+7] -0x30)*10;
	temp += ((int) ResponseJson[offs+8] -0x30);
	
	temp_str[5] = ResponseJson[offs+6];
	temp_str[6] = ResponseJson[offs+7];
	temp_str[7] = ResponseJson[offs+8];
	
	adcvalue_str[4] = ((char) (ADCvalue/1000)) + 0x30;
	adcvalue_str[5] = ((char) (ADCvalue%1000)/100) + 0x30;
	adcvalue_str[6] = ((char) (ADCvalue%100)/10) + 0x30;
	adcvalue_str[7] = ((char) (ADCvalue%10)) + 0x30;
	
	voltage_str[8] = ((char) (((ADCvalue *80)/1000)/100)+ 0x30);
	voltage_str[10] =  ((char) ((((ADCvalue *80)/1000)%100)/10)+ 0x30);
	voltage_str[11] = ((char) ((((ADCvalue *80)/1000)%10))+ 0x30);
	
	
	
	ST7735_DrawString(0,1, "                        ", ST7735_WHITE);
	ST7735_DrawString(0,1, temp_str, ST7735_WHITE);
	ST7735_DrawString(0,2, adcvalue_str, ST7735_WHITE);
	ST7735_DrawString(0,3, voltage_str, ST7735_WHITE);
	
	return 0;
}
