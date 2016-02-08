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
 Sept 17, 2015
 
 */
#include <stdio.h>
#include <stdbool.h>
#include <stdint.h>
#include <string.h>
#include <stdlib.h>

#include "../inc/tm4c123gh6pm.h"

#include "pll.h"
#include "UART.h"
#include "systick.h"
#include "esp8266.h"
#include "http.h"
#include "LED.h"

// prototypes for functions defined in startup.s
void DisableInterrupts(void); // Disable interrupts
void EnableInterrupts(void);  // Enable interrupts
long StartCritical (void);    // previous I bit, disable interrupts
void EndCritical(long sr);    // restore I bit to previous value
void WaitForInterrupt(void);  // low power mode

// global variables
volatile uint32_t Msec = 0;
volatile uint32_t Seconds = 0;
void Output_Init(void);
int main(void){  
  DisableInterrupts();
  PLL_Init(Bus80MHz);
  LED_Init();  
  SysTick_Init(80000); // interrupt every 1ms (every 80000 cycles)
  Output_Init();       // UART0 only used for debugging
  printf("\n\r-----------\n\rSystem starting...\n\r");
  ESP8266_Init();      // global enable interrupts
  while(1){
    ESP8266_GetStatus();
    if(ESP8266_MakeTCPConnection()==0){ // data streamed to UART0
      printf("MakeTCPConnection, could not make connection\n\r");
      while(1){};
    }
    LED_GreenOn();
    ESP8266_SendTCP();
    ESP8266_CloseTCPConnection();
    while(Board_Input()==0){
      WaitForInterrupt();
    }; // wait for touch
    LED_GreenOff();
    LED_RedToggle();
  }
}

// this is called every time the systick generates an interrupt
void SysTick_Handler(void){
  Msec++;
  if(Msec % 1000 == 0){
  Seconds++;
      // toggle a flag or do something every ms here
  }
}

// this is used for printf to output to the usb uart
int fputc(int ch, FILE *f){
  UART_OutChar(ch);
  return 1;
}

#ifdef __TI_COMPILER_VERSION__
  //Code Composer Studio Code
#include "file.h"
int uart_open(const char *path, unsigned flags, int llv_fd){
  UART_Init();
  return 0;
}
int uart_close( int dev_fd){
  return 0;
}
int uart_read(int dev_fd, char *buf, unsigned count){char ch;
  ch = UART_InChar();    // receive from keyboard
  ch = *buf;         // return by reference
  UART_OutChar(ch);  // echo
  return 1;
}
int uart_write(int dev_fd, const char *buf, unsigned count){ unsigned int num=count;
  while(num){
    UART_OutChar(*buf);
    buf++;
    num--;
  }
  return count;
}
off_t uart_lseek(int dev_fd, off_t ioffset, int origin){
  return 0;
}
int uart_unlink(const char * path){
  return 0;
}
int uart_rename(const char *old_name, const char *new_name){
  return 0;
}

//------------Output_Init------------
// Initialize the UART for 115,200 baud rate (assuming 3 MHz bus clock),
// 8 bit word length, no parity bits, one stop bit
// Input: none
// Output: none
void Output_Init(void){int ret_val; FILE *fptr;
  UART_Init();
  ret_val = add_device("uart", _SSA, uart_open, uart_close, uart_read, uart_write, uart_lseek, uart_unlink, uart_rename);
  if(ret_val) return; // error
  fptr = fopen("uart","w");
  if(fptr == 0) return; // error
  freopen("uart:", "w", stdout); // redirect stdout to uart
  setvbuf(stdout, NULL, _IONBF, 0); // turn off buffering for stdout

}
#else
//Keil uVision Code
//------------Output_Init------------
// Initialize the Nokia5110
// Input: none
// Output: none
//------------Output_Init------------
// Initialize the UART for 115,200 baud rate (assuming 16 MHz bus clock),
// 8 bit word length, no parity bits, one stop bit, FIFOs enabled
// Input: none
// Output: none
void Output_Init(void){
  UART_Init();
}
#endif

