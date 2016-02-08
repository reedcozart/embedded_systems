//***********************  ESP8266.h  ***********************
// Program written by:
// - Steven Prickett  steven.prickett@gmail.com
//
// Brief desicription of program:
// - Initializes an ESP8266 module to act as a WiFi client
//   and fetch weather data from openweathermap.org
//
//*********************************************************
/* Modified by Jonathan Valvano
 Sept 17, 2015
 
 */

#ifndef ESP8266_H
#define ESP8266_H

#define ESP8266_ENCRYPT_MODE_OPEN		 	      0
#define ESP8266_ENCRYPT_MODE_WEP		 	      1
#define ESP8266_ENCRYPT_MODE_WPA_PSK	 	    2
#define ESP8266_ENCRYPT_MODE_WPA2_PSK	 	    3
#define ESP8266_ENCRYPT_MODE_WPA_WPA2_PSK	  4
 
#define ESP8266_WIFI_MODE_CLIENT            1
#define ESP8266_WIFI_MODE_AP                2
#define ESP8266_WIFI_MODE_AP_AND_CLIENT     3



// general functions
//-------------------ESP8266_Init --------------
// initializes the module as a client
// Inputs: none
// Outputs: none
void ESP8266_Init(void);

// esp8266 at commands
//----------ESP8266_Reset------------
// resets the esp8266 module
// input:  none
// output: 1 if success, 0 if fail
int ESP8266_Reset(void);

//---------ESP8266_SetWifiMode----------
// configures the esp8266 to operate as a wifi client, access point, or both
// Input: mode accepts ESP8266_WIFI_MODE constants
// output: 1 if success, 0 if fail 
int ESP8266_SetWifiMode(uint8_t mode);

//---------ESP8266_SetConnectionMux----------
// enables the esp8266 connection mux, required for starting tcp server
// Input: 0 (single) or 1 (multiple)
// output: 1 if success, 0 if fail 
int ESP8266_SetConnectionMux(uint8_t enabled);



//---------ESP8266_CloseTCPConnection----------
// Close TCP connection 
// Input: none
// output: 1 if success, 0 if fail 
int ESP8266_CloseTCPConnection(void);

//---------ESP8266_DisableServer----------
// disables tcp server
// Input: none 
// output: 1 if success, 0 if fail 
int ESP8266_DisableServer(void);

//----------ESP8266_JoinAccessPoint------------
// joins a wifi access point using specified ssid and password
// input:  SSID and PASSWORD
// output: 1 if success, 0 if fail
int ESP8266_JoinAccessPoint(const char* ssid, const char* password);

//---------ESP8266_ListAccessPoints----------
// lists available wifi access points
// Input: none
// output: 1 if success, 0 if fail 
int ESP8266_ListAccessPoints(void);

void ESP8266_QuitAccessPoint(void);

//----------ESP8266_ConfigureAccessPoint------------
// configures esp8266 wifi access point settings
// input:  SSID, Password, channel, security
// output: 1 if success, 0 if fail
int ESP8266_ConfigureAccessPoint(const char* ssid, const char* password, uint8_t channel, uint8_t encryptMode);

//---------ESP8266_GetIPAddress----------
// Get local IP address
// Input: none
// output: 1 if success, 0 if fail 
int ESP8266_GetIPAddress(void);

//---------ESP8266_MakeTCPConnection----------
// Establish TCP connection 
// Input: none
// output: 1 if success, 0 if fail 
int ESP8266_MakeTCPConnection(void);

//---------ESP8266_SendTCP----------
// Send a TCP packet to server 
// Input: none
// output: 1 if success, 0 if fail 
int ESP8266_SendTCP(void);

//---------ESP8266_SetDataTransmissionMode----------
// set data transmission mode
// Input: 0 not data mode, 1 data mode; return "Link is builded" 
// output: 1 if success, 0 if fail 
int ESP8266_SetDataTransmissionMode(uint8_t mode);
  
//---------ESP8266_GetStatus----------
// get status
// Input: none
// output: 1 if success, 0 if fail 
int ESP8266_GetStatus(void);

//************the following are not tested********
void ESP8266_SetServerTimeout(uint16_t timeout);
void ESP8266_EnableServer(uint16_t port);
#endif
