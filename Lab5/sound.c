#include "../inc/tm4c123gh6pm.h"
#include <stdint.h>
#include "sound.h"

int combinedOutput(song s) {
	int n1val = wave[s.n1_idx];
	int n2val = wave[s.n2_idx];
	int n3val = wave[s.n3_idx];
	int sum = n1val + n2val + n3val;
	int divisor = 0;
	if (s.n1[s.song_idx] == 0) {
		divisor++;
	}
	if (s.n2[s.song_idx] == 0) {
		divisor++;
	}
	if (s.n3[s.song_idx] == 0) {
		divisor++;
	}
	return sum/divisor;
}

void outputSound(int val) {
	//write this
}