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

int combinedOutput(void) {
	int n1val = wave[s.n1_idx];
	int n2val = wave[s.n2_idx];
	int n3val = wave[s.n3_idx];
	int sum = n1val + n2val + n3val;
	int divisor = 0;
	if (s.n1[s.song_idx] != 0) {
		divisor++;
	}
	if (s.n2[s.song_idx] != 0) {
		divisor++;
	}
	if (s.n3[s.song_idx] != 0) {
		divisor++;
	}
	return sum/divisor;
}

void outputSound(int val) {
	//write code that outputs to DAC
}

void initSong(void) {
	s.cycles_per_note = 12000000; //6.66 notes per second (400bpm?)
	s.n1_idx = 0;
	s.n2_idx = 0;
	s.n3_idx = 0;
	s.song_idx = 0;
	//Song specific stuff below
	s.song_len = 3;
	s.n1[0] = A;
	s.n1[1] = B;
	s.n1[2] = C;
	s.n1[3] = A;
	s.n1[4] = B;
	s.n1[5] = C;
	s.n1[6] = A;
	s.n1[7] = B;
	s.n1[8] = C;
	s.n1[9] = A;
	s.n1[10] = B;
	s.n1[11] = C;
	s.n1[12] = A;
	s.n1[13] = B;
	s.n1[14] = C;
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
		stopSong();
	}
}

//Play N1
void Timer1A_Handler(void) {
	TIMER1_ICR_R = TIMER_ICR_TATOCINT;    // acknowledge timer1A timeout
	s.n1_idx++;
	if (s.n1_idx >= wavelen) {
		s.n1_idx = 0;
	}
}

//Play N3
void Timer2A_Handler(void) {
	TIMER2_ICR_R = TIMER_ICR_TATOCINT;    // acknowledge timer2A timeout
	s.n2_idx++;
	if (s.n2_idx >= wavelen) {
		s.n2_idx = 0;
	}
}

//Play N2
void Timer3A_Handler(void) {
	TIMER3_ICR_R = TIMER_ICR_TATOCINT;// acknowledge TIMER3A timeout
	s.n3_idx++;
	if (s.n3_idx >= wavelen) {
		s.n3_idx = 0;
	}
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
