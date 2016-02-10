// Lab1.c
// Runs on TM4C123
// Uses ST7735.c LCD.
// Jonathan Valvano
// August 5, 2015
// Possible main program to test the lab
// Feel free to edit this to match your specifications

// Backlight (pin 10) connected to +3.3 V
// MISO (pin 9) unconnected 
// SCK (pin 8) connected to PA2 (SSI0Clk)
// MOSI (pin 7) connected to PA5 (SSI0Tx)
// TFT_CS (pin 6) connected to PA3 (SSI0Fss)
// CARD_CS (pin 5) unconnected
// Data/Command (pin 4) connected to PA6 (GPIO)
// RESET (pin 3) connected to PA7 (GPIO)
// VCC (pin 2) connected to +3.3 V
// Gnd (pin 1) connected to ground
#include <stdio.h>
#include <stdint.h>
#include "string.h"
#include "ST7735.h"
#include "PLL.h"
#include "fixed.h"
#include "inc/tm4c123gh6pm.h"
void DelayWait10ms(uint32_t n);
void PortF_Init(void);
// const will place these structures in ROM

struct outTestCase1{    // used to test routines
  int32_t InNumber;     // test input number
  char OutBuffer[12];   // Output String  
};

struct graphInfo{
	int32_t xRange;
	int32_t yRange;
	int32_t xNumPix;
	int32_t yNumPix;
	int32_t xMax;
	int32_t xMin;
	int32_t yMax;
	int32_t yMin;
	int32_t smallDem;
};

typedef const struct outTestCase1 outTestCaseType1;
outTestCaseType1 outTests1[13]={ 
{     0,  " =  0.000\r" }, //     0/1000 = 0.000  
{     4,  " =  0.004\r" }, //     4/1000 = 0.004  
{    -5,  " = -0.005\r" }, //    -5/1000 = -0.005
{    78,  " =  0.078\r" }, //    78/1000 = 0.078
{  -254,  " = -0.254\r" }, //  -254/1000 = -0.254
{   999,  " =  0.999\r" }, //   999/1000 = 0.999
{ -1000,  " = -1.000\r" }, // -1000/1000 = -1.000
{  1234,  " =  1.234\r" }, //  1234/1000 = 1.234
{ -5678,  " = -5.678\r" }, // -5678/1000 = -5.678
{ -9999,  " = -9.999\r" }, // -9999/1000 = -9.999
{  9999,  " =  9.999\r" }, //  9999/1000 = 9.999
{ 10000,  " =  *.***\r" }, // error
{-10000,  " =  *.***\r" }  // error
};

// const will place these structures in ROM
struct outTestCase2{   // used to test routines
  uint32_t InNumber;   // test input number
  char OutBuffer[12];  // Output String  
};
typedef const struct outTestCase2 outTestCaseType2;

outTestCaseType2 outTests2[14]={ 
{     0,  " =   0.00?\r" }, //      0/256 = 0.00  
{     4,  " =   0.01?\r" }, //      4/256 = 0.01  
{    10,  " =   0.03?\r" }, //     10/256 = 0.03
{   200,  " =   0.78?\r" }, //    200/256 = 0.78
{   254,  " =   0.99?\r" }, //    254/256 = 0.99
{   505,  " =   1.97?\r" }, //    505/256 = 1.97
{  1070,  " =   4.17?\r" }, //   1070/256 = 4.17
{  5120,  " =  20.00?\r" }, //   5120/256 = 20.00
{ 12184,  " =  47.59?\r" }, //  12184/256 = 47.59
{ 26000,  " = 101.56?\r" }, //  26000/256 = 101.56
{ 32767,  " = 127.99?\r" }, //  32767/256 = 127.99
{ 34567,  " = 135.02?\r" }, //  34567/256 = 135.02
{255998,  " = 999.99?\r" }, // 255998/256 = 999.99
{256000,  " = ***.**?\r" }  // error
};

struct graphInfo gi;


#define PF2   (*((volatile uint32_t *)0x40025010))
#define PF3   (*((volatile uint32_t *)0x40025020))
#define PF4   (*((volatile uint32_t *)0x40025040))

void Pause(void){
  while(PF4==0x00){ 
    DelayWait10ms(10);
  }
  while(PF4==0x10){
    DelayWait10ms(10);
  }
}
// 180 points on a circle of radius 2.000
const int32_t CircleXbuf[180] = { 2000, 1999, 1995, 1989, 1981, 1970, 1956, 1941, 1923, 1902, 1879, 1854, 1827, 1798, 1766, 1732, 1696, 1658, 1618, 1576, 1532, 1486, 1439, 1389, 1338, 1286, 1231, 1176, 1118, 1060, 1000, 939, 877, 813, 749, 684, 618, 551, 484, 416, 347, 278, 209, 140, 70, 0, -70, -140, -209, -278, -347, -416, -484, -551, -618, -684, -749, -813, -877, -939, -1000, -1060, -1118, -1176, -1231, -1286, -1338, -1389, -1439, -1486, -1532, -1576, -1618, -1658, -1696, -1732, -1766, -1798, -1827, -1854, -1879, -1902, -1923, -1941, -1956, -1970, -1981, -1989, -1995, -1999, -2000, -1999, -1995, -1989, -1981, -1970, -1956, -1941, -1923, -1902, -1879, -1854, -1827, -1798, -1766, -1732, -1696, -1658, -1618, -1576, -1532, -1486, -1439, -1389, -1338, -1286, -1231, -1176, -1118, -1060, -1000, -939, -877, -813, -749, -684, -618, -551, -484, -416, -347, -278, -209, -140, -70, 0, 70, 140, 209, 278, 347, 416, 484, 551, 618, 684, 749, 813, 877, 939, 1000, 1060, 1118, 1176, 1231, 1286, 1338, 1389, 1439, 1486, 1532, 1576, 1618, 1658, 1696, 1732, 1766, 1798, 1827, 1854, 1879, 1902, 1923, 1941, 1956, 1970, 1981, 1989, 1995, 1999
};
const int32_t CircleYbuf[180] = {0, 70, 140, 209, 278, 347, 416, 484, 551, 618, 684, 749, 813, 877, 939, 1000, 1060, 1118, 1176, 1231, 1286, 1338, 1389, 1439, 1486, 1532, 1576, 1618, 1658, 1696, 1732, 1766, 1798, 1827, 1854, 1879, 1902, 1923, 1941, 1956, 1970, 1981, 1989, 1995, 1999, 2000, 1999, 1995, 1989, 1981, 1970, 1956, 1941, 1923, 1902, 1879, 1854, 1827, 1798, 1766, 1732, 1696, 1658, 1618, 1576, 1532, 1486, 1439, 1389, 1338, 1286, 1231, 1176, 1118, 1060, 1000, 939, 877, 813, 749, 684, 618, 551, 484, 416, 347, 278, 209, 140, 70, 0, -70, -140, -209, -278, -347, -416, -484, -551, -618, -684, -749, -813, -877, -939, -1000, -1060, -1118, -1176, -1231, -1286, -1338, -1389, -1439, -1486, -1532, -1576, -1618, -1658, -1696, -1732, -1766, -1798, -1827, -1854, -1879, -1902, -1923, -1941, -1956, -1970, -1981, -1989, -1995, -1999, -2000, -1999, -1995, -1989, -1981, -1970, -1956, -1941, -1923, -1902, -1879, -1854, -1827, -1798, -1766, -1732, -1696, -1658, -1618, -1576, -1532, -1486, -1439, -1389, -1338, -1286, -1231, -1176, -1118, -1060, -1000, -939, -877, -813, -749, -684, -618, -551, -484, -416, -347, -278, -209, -140, -70
};
// 50 points of a start
const int32_t StarXbuf[50] = {0, -6, -12, -18, -24, -30, -35, -41, -47, -53, 59, 53, 47, 41, 35, 30, 24, 18, 12, 6, 95, 76, 57, 38, 19, 0, -19, -38, -57, -76, -59, -44, -28, -13, 3, 18, 33, 49, 64, 80, -95, -80, -64, -49, -33, -18, -3, 13, 28, 44
};
const int32_t StarYbuf[50] = {190, 172, 154, 136, 118, 100, 81, 63, 45, 27, 9, 27, 45, 63, 81, 100, 118, 136, 154, 172, 121, 121, 121, 121, 121, 121, 121, 121, 121, 121, 9, 20, 31, 43, 54, 65, 76, 87, 99, 110, 121, 110, 99, 87, 76, 65, 54, 43, 31, 20
};
int main(void){uint32_t i;
  PLL_Init(Bus80MHz);
  PortF_Init();
  ST7735_InitR(INITR_REDTAB);
  while(1){
    ST7735_FillScreen(0);  // set screen to black
    ST7735_SetCursor(0,0);
    printf("Lab 1\rST7735_sDecOut3\r");
    for(i=0; i<13; i++){
      ST7735_sDecOut3(outTests1[i].InNumber);  // your solution
      ST7735_OutString((char*)outTests1[i].OutBuffer); // expected solution
    }
    //Pause();
  
    ST7735_FillScreen(0);  // set screen to black
    ST7735_SetCursor(0,0);
    printf("ST7735_uBinOut8\r");
    for(i=0; i<14; i++){
      ST7735_uBinOut8(outTests2[i].InNumber);  // your solution
      ST7735_OutString((char*)outTests2[i].OutBuffer); // expected solution
    }
    //Pause();
    
    ST7735_XYplotInit("Circle",-2500, 2500, -2500, 2500);
    ST7735_XYplot(180,(int32_t *)CircleXbuf,(int32_t *)CircleYbuf);
    //Pause();
    
    ST7735_XYplotInit("Star- upper right",-450, 150, -400, 200);
    ST7735_XYplot(50,(int32_t *)StarXbuf,(int32_t *)StarYbuf);
    Pause(); 
  } 
} 

// PF4 is input
// Make PF2 an output, enable digital I/O, ensure alt. functions off
void PortF_Init(void){ 
  SYSCTL_RCGCGPIO_R |= 0x20;        // 1) activate clock for Port F
  while((SYSCTL_PRGPIO_R&0x20)==0){}; // allow time for clock to start
                                    // 2) no need to unlock PF2, PF4
  GPIO_PORTF_PCTL_R &= ~0x000F0F00; // 3) regular GPIO
  GPIO_PORTF_AMSEL_R &= ~0x14;      // 4) disable analog function on PF2, PF4
  GPIO_PORTF_PUR_R |= 0x10;         // 5) pullup for PF4
  GPIO_PORTF_DIR_R |= 0x04;         // 5) set direction to output
  GPIO_PORTF_AFSEL_R &= ~0x14;      // 6) regular port function
  GPIO_PORTF_DEN_R |= 0x14;         // 7) enable digital port
}


int main4(void){ 
  PortF_Init();
  while(1){
    DelayWait10ms(1);
    PF2 ^= 0x04;
  }
}
int main5(void){ 
  PortF_Init();
  while(1){
    DelayWait10ms(100);
    PF2 ^= 0x04;
  }
}

// Subroutine to wait 10 msec
// Inputs: None
// Outputs: None
// Notes: ...
void DelayWait10ms(uint32_t n){uint32_t volatile time;
  while(n){
    time = 727240*2/91;  // 10msec
    while(time){
	  	time--;
    }
    n--;
  }
}

/****************ST7735_sDecOut3***************
 converts fixed point number to LCD
 format signed 32-bit with resolution 0.001
 range -9.999 to +9.999
 Inputs:  signed 32-bit integer part of fixed-point number
 Outputs: none
 send exactly 6 characters to the LCD 
Parameter LCD display
 12345    " *.***"
  2345    " 2.345"  
 -8100    "-8.100"
  -102    "-0.102" 
    31    " 0.031" 
-12345    " *.***"
 */ 
void ST7735_sDecOut3(int32_t n){

	int32_t thousands;
	int32_t hundreds;
	int32_t tens;
	int32_t units;
	int32_t negative = 0;
	
	if(n>9999 || n < -9999){
		printf(" *.***");
		return;
	}
	if(n<0){ n = n*(-1);
		negative = 1;
	}
	thousands = n/1000;
	hundreds = (n%1000)/100;
	tens = (n%100)/10;
	units = n%10;
	
	if(negative){
		printf("-%d.%d%d%d", thousands, hundreds, tens, units);
	}else{
		printf(" %d.%d%d%d", thousands, hundreds, tens, units);
	}
	return;
}


/**************ST7735_uBinOut8***************
 unsigned 32-bit binary fixed-point with a resolution of 1/256. 
 The full-scale range is from 0 to 999.99. 
 If the integer part is larger than 256000, it signifies an error. 
 The ST7735_uBinOut8 function takes an unsigned 32-bit integer part 
 of the binary fixed-point number and outputs the fixed-point value on the LCD
 Inputs:  unsigned 32-bit integer part of binary fixed-point number
 Outputs: none
 send exactly 6 characters to the LCD 
Parameter LCD display
     0	  "  0.00"
     2	  "  0.01"
    64	  "  0.25"
   100	  "  0.39"
   500	  "  1.95"
   512	  "  2.00"
  5000	  " 19.53"
 30000	  "117.19"
255997	  "999.99"
256000	  "***.**"
*/
void ST7735_uBinOut8(uint32_t n){

	uint32_t first_num;
	uint32_t decimals;
	uint32_t tens;
	uint32_t units;
	
	if(n>=256000){ printf("***.**"); return;}
	
	first_num = n/256;
	decimals = (100*(n - (first_num*256)))/256;
	tens = decimals/10;
	units = decimals%10;
	
	
	
	if(first_num <10){
		printf("  %d.%d%d", first_num, tens, units);
		return;
	}else if(first_num<100){
		printf(" %d.%d%d", first_num, tens, units);
		return;
	}else if(first_num<1000){
		printf("%d.%d%d", first_num, tens, units);
		return;
	}
} 

/**************ST7735_XYplotInit***************
 Specify the X and Y axes for an x-y scatter plot
 Draw the title and clear the plot area
 Inputs:  title  ASCII string to label the plot, null-termination
          minX   smallest X data value allowed, resolution= 0.001
          maxX   largest X data value allowed, resolution= 0.001
          minY   smallest Y data value allowed, resolution= 0.001
          maxY   largest Y data value allowed, resolution= 0.001
 Outputs: none
 assumes minX < maxX, and miny < maxY
*/
void ST7735_XYplotInit(char *title, int32_t minX, int32_t maxX, int32_t minY, int32_t maxY){
	ST7735_FillScreen(ST7735_BLACK);  // set screen to black
  ST7735_SetCursor(0,0);
	printf("%s\n", title);
	
	gi.xMax = maxX;
	gi.xMin = minX;
	gi.yMax = maxY;
	gi.yMin	= minY;
	gi.xRange = maxX - minX;
	gi.yRange = maxY - minY;
	
	if(ST7735_TFTWIDTH<=ST7735_TFTHEIGHT)
		gi.smallDem = ST7735_TFTWIDTH;
	else
		gi.smallDem = ST7735_TFTHEIGHT;
	
	ST7735_DrawFastVLine((ST7735_TFTWIDTH)/2, 0, ST7735_TFTHEIGHT, ST7735_WHITE);
	ST7735_DrawFastHLine(0, ST7735_TFTHEIGHT/2, ST7735_TFTWIDTH, ST7735_WHITE);
	
	ST7735_DrawChar((ST7735_TFTWIDTH)/2 + 1,  0, 'y', ST7735_WHITE, ST7735_BLACK, 1);
	ST7735_DrawChar(0, (ST7735_TFTHEIGHT)/2 + 1, 'x', ST7735_WHITE, ST7735_BLACK, 1);
	
	return;
}

/**************ST7735_XYplot***************
 Plot an array of (x,y) data
 Inputs:  num    number of data points in the two arrays
          bufX   array of 32-bit fixed-point data, resolution= 0.001
          bufY   array of 32-bit fixed-point data, resolution= 0.001
 Outputs: none
 assumes ST7735_XYplotInit has been previously called
 neglect any points outside the minX maxY minY maxY bounds
*/
void ST7735_XYplot(uint32_t num, int32_t bufX[], int32_t bufY[]){
	/*
	convert all fixed point numbers to pixel locations, bounds check them.
	plot pixel with each point.
	*/
	int16_t xPix[num];
	int16_t yPix[num];
	int i;
	
	for(i=0; i<num; i++){
		//do conversions for each int32_t -> pixel location
		//plot on the screen with ST7735_DrawPixel(int16_t x, int16_t y, uint16_t color);
		if(bufX[i]<gi.xMin || bufX[i] > gi.xMax){
			xPix[i] = -1;
			continue;
		} 
		if(bufY[i]<gi.yMin || bufY[i] > gi.yMax){
			yPix[i] = -1;
			continue;
		} 
		xPix[i] = (((gi.smallDem*1000)/gi.xRange)*bufX[i])/1000 + ST7735_TFTWIDTH/2;
		yPix[i] = (((gi.smallDem*1000)/gi.yRange)*bufY[i])/1000 + ST7735_TFTHEIGHT/2;	
	}
	
	for(i=0; i<num; i++){
		if(xPix[i] != -1 && yPix[i] != -1){
			ST7735_DrawPixel(xPix[i], yPix[i], ST7735_WHITE);
		}
	}
	return;
}
