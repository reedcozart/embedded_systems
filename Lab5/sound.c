#include "../inc/tm4c123gh6pm.h"
#include <stdint.h>
#include "sound.h"

song s;

const int wavelen = 32;
const unsigned short wave[32] = {  
  2048,2448,2832,3186,3496,3751,3940,4057,4096,4057,3940,
  3751,3496,3186,2832,2448,2048,1648,1264,910,600,345,
  156,39,0,39,156,345,600,910,1264,1648
};

const unsigned short wave2[32] = {  
  2048,3096,2048,3496,3751,3940,4057,4096,4057,3940,
  3751,2832,3186,3186,2832,2448,2048,1648,1264,910,600,345,
  156,39,0,39,156,345,600,910,1264,1648
};

int combinedOutput(void) {
	if (TIMER0_CTL_R == 0x00000000) { return 0; }
	
	int n1val = wave[s.n1_idx];
	int n2val = wave[s.n2_idx];
	int n3val = wave[s.n3_idx];
	
	int divisor = 1;
	int sum =0;
	if (s.n1[s.song_idx] != 0) {
		divisor++;
		sum += n1val;
	}
	if (s.n2[s.song_idx] != 0) {
		divisor++;
		sum += n2val;
	}
	if (s.n3[s.song_idx] != 0) {
		divisor++;
		sum += n3val;
	}
	divisor -= 1;
	return sum/divisor;
}

void outputSound() {
	while((SSI0_SR_R&0x00000002)==0){};// wait until room in FIFO
	SSI0_DR_R = combinedOutput(); // data out
}

void initSong(void) {
	s.cycles_per_note = 12000000; //6.66 notes per second (400bpm?)
	s.n1_idx = 0;
	s.n2_idx = 0;
	s.n3_idx = 0;
	s.song_idx = 0;
	//Song specific stuff below
	s.song_len = 17;
	s.n1[0] = E2;
	//s.n2[0] = GF;
	//s.n3[0] = D0;
	
	s.n1[1] = E2;
	//s.n2[1] = F;
	//s.n3[1] = D0;
	
	s.n1[2] = 0;
	//s.n2[2] = 0;
	//s.n3[2] = 0;	
	
	s.n1[3] = E2;
	//s.n2[3] = F;
	//s.n3[3] = D0;
	
	s.n1[4] = 0;
	//s.n2[4] = 0;
	//s.n3[4] = 0;
	
	s.n1[5] = C1;
	//s.n2[5] = GF;
	//s.n3[5] = D0;
	
	s.n1[6] = A;
	s.n1[7] = B;
	s.n1[8] = C;
	s.n1[9] = D;
	s.n1[10] = E;
	s.n1[11] = A;
	s.n1[12] = A;
	s.n1[13] = B;
	s.n1[14] = B;
	s.n1[15] = C;
	s.n1[16] = C;
	s.n1[17] = D;
}

//Advance Note in Song
void Timer0A_Handler(void) {
	TIMER0_ICR_R = TIMER_ICR_TATOCINT;    // acknowledge timer0A timeout
	
	if (s.song_idx < s.song_len) {
		//Advance note in song
		s.song_idx++;
		//change frequency of N1-N3
		//reload values
		TIMER1_TAILR_R = s.n1[s.song_idx];
		TIMER2_TAILR_R = s.n2[s.song_idx];
		TIMER3_TAILR_R = s.n3[s.song_idx];
		//reset timers
		TIMER1_TAR_R = 0;
		TIMER2_TAR_R = 0;
		TIMER3_TAR_R = 0;
	}
	else {
		//stopSong();
		s.song_idx=0;
	}
}

//Play N1
void Timer1A_Handler(void) {
	TIMER1_ICR_R = TIMER_ICR_TATOCINT;    // acknowledge timer1A timeout
	s.n1_idx++;
	if (s.n1_idx >= wavelen) {
		s.n1_idx = 0;
	}
	outputSound();
}

//Play N3
void Timer2A_Handler(void) {
	TIMER2_ICR_R = TIMER_ICR_TATOCINT;    // acknowledge timer2A timeout
	s.n2_idx++;
	if (s.n2_idx >= wavelen) {
		s.n2_idx = 0;
	}
	outputSound();
}

//Play N2
void Timer3A_Handler(void) {
	TIMER3_ICR_R = TIMER_ICR_TATOCINT;// acknowledge TIMER3A timeout
	s.n3_idx++;
	if (s.n3_idx >= wavelen) {
		s.n3_idx = 0;
	}
	outputSound();
}

void pauseSong() {
	TIMER0_CTL_R = 0x00000000; //Disable Timer0
}

void stopSong() {
	pauseSong();
	s.n1_idx = 0;
	s.n2_idx = 0;
	s.n3_idx = 0;
	s.song_idx = 0;
}

void playSong() {
	TIMER0_CTL_R = 0x00000001; //Enable Timer0
}
