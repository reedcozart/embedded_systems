
//***********************  ESP8266  ***********************
// Program written by:
// - Steven Prickett  steven.prickett@gmail.com
//
// Brief desicription of program:
// - Initializes an ESP8266 module to act as a WiFi access
//   point with a http server (IP = ...) serving a webpage
//   that allows the user to enter a message to send to the
//   microcontroller. The message will then be relayed back
//   over the USB UART.
//
//*********************************************************
/* Modified by Jonathan Valvano
 Sept 17, 2015
 
 */
#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
#include "esp8266.h"

/* 
  This work is copyright Steven Prickett (steven.prickett@gmail.com) and 
  licensed under a Creative Commons Attribution 3.0 Unported License, 
  available at:
  
  https://creativecommons.org/licenses/by/3.0/
 
  THIS SOFTWARE IS PROVIDED "AS IS".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED
  OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF
  MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE.
  VALVANO SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL,
  OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
*/

/*
========================================================================================================================
==========                                          GLOBAL VARIABLES                                          ==========
========================================================================================================================
*/
extern char ESP8266_RXBuffer[];
extern char ESP8266_TXBuffer[];

extern volatile bool ESP8266_ProcessBuffer;
extern volatile bool ESP8266_EchoResponse;
extern volatile bool ESP8266_ResponseComplete;    
extern volatile bool ESP8266_APEnabled;
extern volatile bool ESP8266_ClientEnabled;
extern volatile bool ESP8266_ServerEnabled;
extern volatile bool ESP8266_InputProcessingEnabled;
extern volatile bool ESP8266_PageRequested ;
void DelayMs(uint32_t delay);
void ESP8266ProcessInput(const char* buffer);
void ESP8266HandleInputCommands(const char* input);
void ESP8266ParseSettingPointers(char* timePtr, char* shotsPtr, char* distPtr);
void ESP8266SendCommand(const char* inputString);

// defines the form served by the http server
const char formBody[] = 
  "<!DOCTYPE html><html><body><center> \
  <h1>Enter a message to send to your microcontroller!</h1> \
  <form> \
	<input type=\"text\" name=\"message\" value=\"Hello ESP8266!\"> \
	<br><input type=\"submit\" value=\"Go!\"> \
  </form></center></body></html>";


/*
========================================================================================================================
==========                                           HTTP FUNCTIONS                                           ==========
========================================================================================================================
*/

/*
===================================================================================================
  HTTP :: HTTP_ServePage
  
   - constructs and sends a web page via the ESP8266 server

   - NOTE: this seems to work for sending pages to Firefox (and maybe other PC-based browsers),
           but does not seem to load properly on iPhone based Safari. May need to add some more
           data to the header.
===================================================================================================
*/
void HTTP_ServePage(const char* body){
  char header[] = "HTTP/1.1 200 OK\r\nContent-Type: text/html\r\nConnection: close\r\nContent-Length: ";
    
  char contentLength[16];
  sprintf(contentLength, "%d\r\n\r\n", strlen(body));
    
  sprintf((char*)ESP8266_TXBuffer, "AT+CIPSEND=%d,%d\r\n", 0, strlen(body) + strlen(contentLength) + strlen(header));
  ESP8266SendCommand((const char*)ESP8266_TXBuffer);
    
  DelayMs(100);
    
  ESP8266SendCommand(header);
  ESP8266SendCommand(contentLength);
  ESP8266SendCommand(body);    
}

