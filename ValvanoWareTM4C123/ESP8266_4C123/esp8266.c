// esp8266.c
// Brief desicription of program:
// - Initializes an ESP8266 module to act as a WiFi client
//   and fetch weather data from openweathermap.org
//
/* 
  Author: Steven Prickett (steven.prickett@gmail.com)
 
  THIS SOFTWARE IS PROVIDED "AS IS".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED
  OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF
  MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE.
  VALVANO SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL,
  OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.

*/

// NOTE: ESP8266 resources below:
// General info and AT commands: http://nurdspace.nl/ESP8266
// General info and AT commands: http://www.electrodragon.com/w/Wi07c
// Community forum: http://www.esp8266.com/
// Offical forum: http://bbs.espressif.com/
// example http://zeflo.com/2014/esp8266-weather-display/

/* Modified by Jonathan Valvano
 Sept 17, 2015
 Hardware connections
 Vcc is a separate regulated 3.3V supply with at least 500mA
 /------------------------------\
 |              chip      1   8 |
 | Ant                    2   7 |
 | enna       processor   3   6 |
 |                        4   5 |
 \------------------------------/ 
ESP8266    TM4C123 
  1 URxD    PB1   UART out of TM4C123, 115200 baud
  2 GPIO0         +3.3V for normal operation (ground to flash)
  3 GPIO2         +3.3V
  4 GND     Gnd   GND (500mA)
  5 UTxD    PB0   UART out of ESP8266, 115200 baud
  6 Ch_PD         chip select, 10k resistor to 3.3V
  7 Reset   PB5   TM4C123 can issue output low to cause hardware reset
  8 Vcc           regulated 3.3V supply with at least 500mA
 */

/*
===========================================================
==========          CONSTANTS                                              ==========
===========================================================
*/
#include <stdio.h>
#include <stdbool.h>
#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include "../inc/tm4c123gh6pm.h"
#include "esp8266.h"
#include "UART.h"

#define ESP8266_RXBuffer_SIZE 1024
#define MAXTRY 10
// prototypes for functions defined in startup.s
void DisableInterrupts(void); // Disable interrupts
void EnableInterrupts(void);  // Enable interrupts
long StartCritical (void);    // previous I bit, disable interrupts
void EndCritical(long sr);    // restore I bit to previous value
void WaitForInterrupt(void);  // low power mode
void DelayMs(uint32_t delay);
void ESP8266ProcessInput(const char* buffer);
void ESP8266HandleInputCommands(const char* input);
void ESP8266ParseSettingPointers(char* timePtr, char* shotsPtr, char* distPtr);

// uart related commands
void ESP8266InitUART(void);
void ESP8266PrintChar(char iput);
void ESP8266EnableRXInterrupt(void);
void ESP8266DisableRXInterrupt(void);
void ESP8266SendCommand(const char* inputString);
void ESP8266FIFOtoBuffer(void);
void UART1_Handler(void);

/*
=============================================================
==========            GLOBAL VARIABLES                                          ==========
=============================================================
*/

uint32_t ESP8266_RXBufferIndex = 0;
char ESP8266_RXBuffer[ESP8266_RXBuffer_SIZE];
char ESP8266_TXBuffer[ESP8266_RXBuffer_SIZE];

volatile bool ESP8266_ProcessBuffer = false;
volatile bool ESP8266_EchoResponse = false;
volatile bool ESP8266_ResponseComplete = false;    
volatile bool ESP8266_APEnabled = false;
volatile bool ESP8266_ClientEnabled = false;
volatile bool ESP8266_ServerEnabled = false;
volatile bool ESP8266_InputProcessingEnabled = false;
volatile bool ESP8266_PageRequested = false;

uint16_t ESP8266_ServerPort = 80;
uint16_t ESP8266_ServerTimeout = 28800; 

// parse return data for information
char SearchString[32];
volatile bool SearchLooking = false;
volatile bool SearchFound = false;
/*
=======================================================================
==========           USB UART FUNCTIONS                                         ==========
=======================================================================
*/

/*
==============================================================
  ESP8266 :: ESP8266InitUART
  
   - intializes uart and gpio needed to communicate with esp8266
=====================================================================
*/
void ESP8266InitUART(void){
  volatile int delay;
    
    // Enable UART1
  SYSCTL_RCGCUART_R |= 0x02;
  delay++; delay++;
    
    // Enable PORT B clock gating
  SYSCTL_RCGCGPIO_R |= 0x02;
  delay++; delay++;
    // Enable UART1 
  GPIO_PORTB_AFSEL_R |= 0x03;
  GPIO_PORTB_DIR_R |= 0x20; // PB5 output to reset
  GPIO_PORTB_PCTL_R =(GPIO_PORTB_PCTL_R&0xFF0FFF00)|0x00000011;
  GPIO_PORTB_DEN_R   |= 0x23; //23 
  GPIO_PORTB_DATA_R |= 0x20; // reset high
    // Configure UART1 for 115200bps operation
  UART1_CTL_R &= ~UART_CTL_UARTEN;                  // Clear UART1 enable bit during config
//  UART1_IBRD_R = 27;                                // Set integer portion of BRD
//  UART1_FBRD_R =  8;                                // Set fraction portion of BRD
  UART1_IBRD_R = 43;                    // IBRD = int(80,000,000 / (16 * 115,200)) = int(43.403)
  UART1_FBRD_R = 26;                    // FBRD = round(0.4028 * 64 ) = 26
  UART1_LCRH_R = (UART_LCRH_WLEN_8|UART_LCRH_FEN);  // 8 bit word length, 1 stop, no parity, FIFOs enabled
  UART1_IFLS_R &= ~0x3F;                            // Clear TX and RX interrupt FIFO level fields
  UART1_IFLS_R += UART_IFLS_RX1_8 ;                 // RX FIFO interrupt threshold >= 1/8th full
  UART1_IM_R  |= UART_IM_RXIM | UART_IM_RTIM;       // Enable interupt on RX and RX transmission end
  UART1_CTL_R |= UART_CTL_UARTEN;                   // Set UART1 enable bit    
}

//-------------------ESP8266_Init --------------
// initializes the module as a client
// Inputs: none
// Outputs: none
#define SSID_NAME  "ValvanoAP"        /* Access point name to connect to. */
#define SEC_TYPE   ESP8266_ENCRYPT_MODE_WPA_WPA2_PSK
#define PASSKEY    "12345678"         /* Password in case of secure AP */
void ESP8266_Init(void){
  ESP8266InitUART();
  ESP8266EnableRXInterrupt();
  SearchLooking = false;
  SearchFound = false;
  EnableInterrupts();
  // step 1: reset module
  printf("ESP8266 Initialization:\n\r");
  printf("Reset module... ");
  ESP8266_EchoResponse = true; // debugging
  if(ESP8266_Reset()==0){ 
    printf("Reset failure, could not reset\n\r");
    while(1){};
  }

  if(ESP8266_SetWifiMode(ESP8266_WIFI_MODE_AP_AND_CLIENT)==0){ 
    printf("SetWifiMode, could not set mode\n\r");
    while(1){};
  }


//  if(ESP8266_ConfigureAccessPoint(SSID_NAME,PASSKEY,1,SEC_TYPE)==0){ 
//    printf("ConfigureAccessPoint error, could not configure AP\n\r");
//    while(1){};
//  }

  if(ESP8266_JoinAccessPoint(SSID_NAME,PASSKEY)==0){ 
    printf("JoinAccessPoint error, could not join AP\n\r");
    while(1){};
  }
  

  if(ESP8266_GetIPAddress()==0){ // data streamed to UART0, OK
    printf("GetIPAddress error, could not get IP address\n\r");
    while(1){};
  } 

  if(ESP8266_SetConnectionMux(0)==0){ // single OK
    printf("SetConnectionMux error, could not set connection mux\n\r");
    while(1){};
  } 
  
  if(ESP8266_ListAccessPoints()==0){ // data streamed to UART0, OK
    printf("ListAccessPoints, could not list access points\n\r");
    while(1){};
  }
  if(ESP8266_SetDataTransmissionMode(0)==0){ // data streamed to UART0, OK
    printf("SetDataTransmissionMode, could not make connection\n\r");
    while(1){};
  }
  ESP8266_InputProcessingEnabled = false; // not a server

}

/*
============================================================
  ESP8266 :: UART1_Handler
  
   -  uart interrupt handler
============================================================
*/
void UART1_Handler(void){
  if(UART1_RIS_R & UART_RIS_RXRIS){   // rx fifo >= 1/8 full
    UART1_ICR_R = UART_ICR_RXIC;      // acknowledge interrupt
    ESP8266FIFOtoBuffer();
  }
  if(UART1_RIS_R & UART_RIS_RTRIS){   // receiver timed out
    UART1_ICR_R = UART_ICR_RTIC;      // acknowledge receiver time
    ESP8266FIFOtoBuffer();
  }
}

/*
======================================================================
  ESP8266 :: ESP8266FIFOtoBuffer
  
   - copies uart fifo to RXBuffer, triggers processBuffer on new line
   - NOTE: would probably be better to use a software defined FIFO here
=======================================================================
*/
void ESP8266FIFOtoBuffer(void){
  char letter;
  while((UART1_FR_R&UART_FR_RXFE) == 0){
    letter = UART1_DR_R;        // retrieve char from FIFO
    if(ESP8266_EchoResponse){
      UART_OutCharNonBlock(letter); // echo
    }
    if(letter != '\r'){
      if(ESP8266_RXBufferIndex < (ESP8266_RXBuffer_SIZE-1)){ // space for two?
        ESP8266_RXBuffer[ESP8266_RXBufferIndex] = letter; // put char into buffer
        ESP8266_RXBufferIndex++; // increment buffer index 
      }
      if(letter == '\n'){
        ESP8266_RXBuffer[ESP8266_RXBufferIndex] = 0;
        if(SearchLooking){
          if(strstr(ESP8266_RXBuffer,SearchString)){
            SearchLooking = false;
            SearchFound = true;
          }
        }
        ESP8266_RXBufferIndex = 0;
//        ESP8266_ProcessBuffer = true;
//        if(ESP8266_InputProcessingEnabled){
//          ESP8266_ProcessInput((const char*)ESP8266_RXBuffer);
//        }
//        if(ESP8266_EchoResponse){int i=0;
//          while(letter==ESP8266_RXBuffer[i]){
//            UART_OutChar(letter); // echo
//            i++;
//          }
//        }
      }
    }    
  }
}

/*
==============================================================
  ESP8266 :: ESP8266SendCommand
  
   - sends a string to the esp8266 module
==============================================================
*/
void ESP8266SendCommand(const char* inputString){
  int index = 0;
  while (inputString[index] != 0){
    ESP8266PrintChar(inputString[index++]);
  }
}

/*
==============================================================
  ESP8266 :: DelayMs
  
   - busy wait n milliseconds
==============================================================
*/
void DelayMs(uint32_t n){
  volatile uint32_t time;
  while(n){
    time = 75825*8/91;  // 1msec, tuned at 80 MHz
    while(time){
      time--;
    }
    n--;
  }
}
void DelayMsSearching(uint32_t n){
  volatile uint32_t time;
  while(n){
    time = 75825*8/91;  // 1msec, tuned at 80 MHz
    while(time){
      time--;
      if(SearchFound) return;
    }
    n--;
  }
}

//----------ESP8266_Reset------------
// resets the esp8266 module
// input:  none
// output: 1 if success, 0 if fail
int ESP8266_Reset(){int try=MAXTRY;
  strcpy(SearchString, "System Ready");
  SearchLooking = true;
  SearchFound = false;
  while(try){
    GPIO_PORTB_DATA_R &= ~0x20; // reset low
    DelayMs(10);
    GPIO_PORTB_DATA_R |= 0x20; // reset high
    ESP8266SendCommand("AT+RST\r\n");
    DelayMsSearching(500);
    if(SearchFound) return 1; // success
    try--;
  }
  return 0; // fail
}

//---------ESP8266_SetWifiMode----------
// configures the esp8266 to operate as a wifi client, access point, or both
// Input: mode accepts ESP8266_WIFI_MODE constants
// output: 1 if success, 0 if fail 
int ESP8266_SetWifiMode(uint8_t mode){int try=MAXTRY;
  if(mode > ESP8266_WIFI_MODE_AP_AND_CLIENT)return 0; // fail
  strcpy(SearchString, "no change");
  SearchLooking = true;
  SearchFound = false;
  while(try){
    sprintf((char*)ESP8266_TXBuffer, "AT+CWMODE=%d\r\n", mode);
    ESP8266SendCommand((const char*)ESP8266_TXBuffer);
    DelayMsSearching(5000);
    if(SearchFound) return 1; // success
    try--;
  }
  return 0; // fail
}


 
//---------ESP8266_SetConnectionMux----------
// enables the esp8266 connection mux, required for starting tcp server
// Input: 0 (single) or 1 (multiple)
// output: 1 if success, 0 if fail 
int ESP8266_SetConnectionMux(uint8_t enabled){
  int try=MAXTRY;
  strcpy(SearchString, "OK");
  SearchLooking = true;
  SearchFound = false;
  while(try){
    sprintf((char*)ESP8266_TXBuffer, "AT+CIPMUX=%d\r\n", enabled);
    ESP8266SendCommand((const char*)ESP8266_TXBuffer);
    DelayMsSearching(5000);
    if(SearchFound) return 1; // success
    try--;
  }
  return 0; // fail
}

/*
==============================================================
  ESP8266 :: ESP8266_SetServerTimeout
  
   - sets connection timeout for tcp server, 0-28800 seconds
==============================================================
*/
void ESP8266_SetServerTimeout(uint16_t timeout){
  ESP8266_ServerTimeout = timeout;
  sprintf((char*)ESP8266_TXBuffer, "AT+CIPSTO=%d\r\n", ESP8266_ServerTimeout);
  ESP8266SendCommand((const char*)ESP8266_TXBuffer);
}

/*
==============================================================
  ESP8266 :: ESP8266_EnableServer
  
   - enables tcp server on specified port
==============================================================
*/
void ESP8266_EnableServer(uint16_t port){
  ESP8266_ServerPort = port;
  sprintf((char*)ESP8266_TXBuffer, "AT+CIPSERVER=1,%d\r\n", ESP8266_ServerPort);
  ESP8266SendCommand((const char*)ESP8266_TXBuffer);
}


//---------ESP8266_DisableServer----------
// disables tcp server
// Input: none 
// output: 1 if success, 0 if fail 
int ESP8266_DisableServer(void){
  int try=MAXTRY;
  strcpy(SearchString, "OK");
  SearchLooking = true;
  SearchFound = false;
  while(try){
    sprintf((char*)ESP8266_TXBuffer, "AT+CIPSERVER=0,%d\r\n", ESP8266_ServerPort);
    ESP8266SendCommand((const char*)ESP8266_TXBuffer); 
    DelayMsSearching(4000);
    if(SearchFound) return 1; // success
    try--;
  }
  return 0; // fail
}

//----------ESP8266_JoinAccessPoint------------
// joins a wifi access point using specified ssid and password
// input:  SSID and PASSWORD
// output: 1 if success, 0 if fail
int ESP8266_JoinAccessPoint(const char* ssid, const char* password){
  int try=MAXTRY;
  strcpy(SearchString, "OK");
  SearchLooking = true;
  SearchFound = false;
  while(try){
    sprintf((char*)ESP8266_TXBuffer, "AT+CWJAP=\"%s\",\"%s\"\r\n", ssid, password);
    ESP8266SendCommand((const char*)ESP8266_TXBuffer);
    DelayMsSearching(4000);
    if(SearchFound) return 1; // success
    try--;
  }
  return 0; // fail
}



//---------ESP8266_ListAccessPoints----------
// lists available wifi access points
// Input: none
// output: 1 if success, 0 if fail 
int ESP8266_ListAccessPoints(void){
  int try=MAXTRY;
  strcpy(SearchString, "OK");
  SearchLooking = true;
  SearchFound = false;
  while(try){
    ESP8266SendCommand("AT+CWLAP\r\n");
    DelayMsSearching(8000);
    if(SearchFound) return 1; // success
    try--;
  }
  return 0; // fail
}
/*
==============================================================
  ESP8266 :: ESP8266_QuitAccessPoint
  
   - disconnects from currently connected wifi access point
==============================================================
*/
void ESP8266_QuitAccessPoint(){
  ESP8266SendCommand("AT+CWQAP\r\n");
}


//----------ESP8266_ConfigureAccessPoint------------
// configures esp8266 wifi access point settings
// input:  SSID, Password, channel, security
// output: 1 if success, 0 if fail
int ESP8266_ConfigureAccessPoint(const char* ssid, const char* password, uint8_t channel, uint8_t encryptMode){
  int try=MAXTRY;
  strcpy(SearchString, "OK");
  SearchLooking = true;
  SearchFound = false;
  while(try){
    sprintf((char*)ESP8266_TXBuffer, "AT+CWSAP=\"%s\",\"%s\",%d,%d\r\n", ssid, password, channel, encryptMode);
    ESP8266SendCommand((const char*)ESP8266_TXBuffer);
    DelayMsSearching(4000);
    if(SearchFound) return 1; // success
    try--;
  }
  return 0; // fail
}
/*
==============================================================
  ESP8266 :: ESP8266ProcessInput
  
   - parses whether we're interested in the data that just came in or not
==============================================================
*/
void ESP8266ProcessInput(const char* buffer){
  char* ptr;
  // "+IPD" indicates data coming in from IP server
  if (buffer[0] == '+' && buffer[1] == 'I' && buffer[2] == 'P' && buffer[3] == 'D' && buffer[8] != '\n'){     
    ptr = (char *)buffer + 7;
    while (*ptr != ':'){
      ptr++;
    }
    ptr++;

    // check for HTTP GET
    if (*ptr == 'G' && *(ptr + 1) == 'E' && *(ptr + 2) == 'T') {
      if (*(ptr + 5) == '?'){ // means data to process
        char* messagePtr = strstr(ptr, "message=") + 8;
        printf("Message from ESP8266: %s\n", messagePtr);
      }
      ESP8266_PageRequested = true;
    } else {
      // handle data that may be sent via means other than HTTP GET
    }
  }
}

/*
==============================================================
  ESP8266 :: ESP8266EnableRXInterrupt
  
   - enables uart rx interrupt
==============================================================
*/
void ESP8266EnableRXInterrupt(void){
  NVIC_EN0_R = 1<<6; // interrupt 6
}

/*
==============================================================
  ESP8266 :: ESP8266DisableRXInterrupt
  
   - disables uart rx interrupt
==============================================================
*/
void ESP8266DisableRXInterrupt(void){
  NVIC_DIS0_R = 1<<6; // interrupt 6    
}

/*
==============================================================
  ESP8266 :: ESP8266PrintChar
  
   - prints a character to the esp8226 via uart
==============================================================
*/
void ESP8266PrintChar(char input){
  while((UART1_FR_R&UART_FR_TXFF) != 0) {};
  UART1_DR_R = input;
//  UART_OutChar(input); // debugging
}


//---------ESP8266_GetIPAddress----------
// Get local IP address
// Input: none
// output: 1 if success, 0 if fail 
int ESP8266_GetIPAddress(void){
  int try=MAXTRY;
  strcpy(SearchString, "OK");
  SearchLooking = true;
  SearchFound = false;
  while(try){
    ESP8266SendCommand("AT+CIFSR\r\n");  
    
    DelayMsSearching(5000);
    if(SearchFound) return 1; // success
    try--;
  }
  return 0; // fail
}

//---------ESP8266_MakeTCPConnection----------
// Establish TCP connection 
// Input: none
// output: 1 if success, 0 if fail 
int ESP8266_MakeTCPConnection(void){
  int try=MAXTRY;
  strcpy(SearchString, "OK");
  SearchLooking = true;
  SearchFound = false;
  while(try){
    ESP8266SendCommand("AT+CIPSTART=\"TCP\",\"144.76.83.20\",80\r\n");   // openweathermap.org
    DelayMsSearching(8000);
    if(SearchFound) return 1; // success
    try--;
  }
  return 0; // fail
}

char Fetch[] = "GET /data/2.5/weather?q=Austin%20Texas HTTP/1.1\r\nHost:api.openweathermap.org\r\n\r\n";
//---------ESP8266_SendTCP----------
// Send a TCP packet to server 
// Input: none
// output: 1 if success, 0 if fail 
int ESP8266_SendTCP(void){
  sprintf((char*)ESP8266_TXBuffer, "AT+CIPSEND=%d\r\n", strlen(Fetch));
  ESP8266SendCommand(ESP8266_TXBuffer);  
  DelayMs(500);
  ESP8266SendCommand(Fetch);
  DelayMs(4000);
  return 1; // success
}

//---------ESP8266_CloseTCPConnection----------
// Close TCP connection 
// Input: none
// output: 1 if success, 0 if fail 
int ESP8266_CloseTCPConnection(void){
  int try=MAXTRY;
  strcpy(SearchString, "OK");
  SearchLooking = true;
  SearchFound = false;
  while(try){
    ESP8266SendCommand("AT+CIPCLOSE\r\n");   
    DelayMsSearching(4000);
    if(SearchFound) return 1; // success
    try--;
  }
  return 0; // fail
}
//---------ESP8266_SetDataTransmissionMode----------
// set data transmission mode
// Input: 0 not data mode, 1 data mode; return "Link is builded" 
// output: 1 if success, 0 if fail 
int ESP8266_SetDataTransmissionMode(uint8_t mode){
  int try=MAXTRY;
  strcpy(SearchString, "OK");
  SearchLooking = true;
  SearchFound = false;
  while(try){
    sprintf((char*)ESP8266_TXBuffer, "AT+CIPMODE=%d\r\n", mode);
    ESP8266SendCommand((const char*)ESP8266_TXBuffer);
    DelayMsSearching(5000);
    if(SearchFound) return 1; // success
    try--;
  }
  return 0; // fail
}
//---------ESP8266_GetStatus----------
// get status
// Input: none
// output: 1 if success, 0 if fail 
int ESP8266_GetStatus(void){
  int try=MAXTRY;
  strcpy(SearchString, "OK");
  SearchLooking = true;
  SearchFound = false;
  while(try){
    ESP8266SendCommand("AT+CIPSTATUS\r\n");
    DelayMsSearching(5000);
    if(SearchFound) return 1; // success
    try--;
  }
  return 0; // fail
}
  
