#include <stdint.h>

typedef struct songstruct song;

struct songstruct{
	uint32_t cycles_per_note;
	
	uint8_t n1_idx;
	uint8_t n2_idx;
	uint8_t n3_idx;
	
	uint16_t song_idx;
	
	uint16_t n1[100];
	uint16_t n2[100];
	uint16_t n3[100];
	
	
};

const unsigned short wave[32] = {  
  2048,2448,2832,3186,3496,3751,3940,4057,4096,4057,3940,
  3751,3496,3186,2832,2448,2048,1648,1264,910,600,345,
  156,39,0,39,156,345,600,910,1264,1648
};


int combinedOutput(song s);

void outputSound(int val);