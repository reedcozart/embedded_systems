/*
This is the display driver module header for the Alarm Clock
*/

extern uint8_t hours;
extern uint8_t minutes;
extern uint8_t seconds;


/*
this function is called in the main loop whenever a state has change, 
every second, a switch is pressed, etc.
*/
void Refresh_Screen(void);

void Display_Init(void);
