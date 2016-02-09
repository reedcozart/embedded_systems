
#define PF2             (*((volatile uint32_t *)0x40025010))
#define PF1             (*((volatile uint32_t *)0x40025008))

void Timer2A_Handler(void);
void Timer2_Init1Hz(void);
void Timer0A_Init100HzInt(void);
