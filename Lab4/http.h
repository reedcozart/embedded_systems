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
 Sept 7, 2015
 
 */

#ifndef HTTP_H
#define HTTP_H


// defines the form served by the http server
extern const char formBody[];

// serves a page via the ESP8266
void HTTP_ServePage(const char* body);

#endif
