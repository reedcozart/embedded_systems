#include <stdint.h>

typedef struct songstruct song;

struct songstruct{
	uint32_t cycles_per_note;
	
	uint8_t n1_idx;
	uint8_t n2_idx;
	uint8_t n3_idx;
	
	uint16_t song_idx;
	uint16_t song_len;
	
	uint16_t n1[100];
	uint16_t n2[100];
	uint16_t n3[100];
};


int combinedOutput(void);

void outputSound(int val);

void initSong(void);

void pauseSong(void);

void stopSong(void);

void playSong(void);

#define C_2 38223   // 65.406 Hz
#define DF_1 36077   // 69.296 Hz
#define D_1 34052   // 73.416 Hz
#define EF_1 32141   // 77.782 Hz
#define E_1 30337   // 82.407 Hz
#define F_1 28635   // 87.307 Hz
#define GF_1 27027   // 92.499 Hz
#define G_1 25511   // 97.999 Hz
#define AF_1 24079   // 103.826 Hz
#define A_1 22727   // 110.000 Hz
#define BF_1 21452   // 116.541 Hz
#define B_1 20248   // 123.471 Hz
#define C_1 19111   // 130.813 Hz
#define DF0 18039   // 138.591 Hz
#define D0 17026   // 146.832 Hz
#define EF0 16071   // 155.563 Hz
#define E0 15169   // 164.814 Hz
#define F0 14317   // 174.614 Hz
#define GF0 13514   // 184.997 Hz
#define G0 12755   // 195.998 Hz
#define AF0 12039   // 207.652 Hz
#define A0 11364   // 220.000 Hz
#define BF0 10726   // 233.082 Hz
#define B0 10124   // 246.942 Hz
#define C0 9556   // 261.626 Hz
#define DF 9019   // 277.183 Hz
#define D 8513   // 293.665 Hz
#define EF 8035   // 311.127 Hz
#define E 7584   // 329.628 Hz
#define F 7159   // 349.228 Hz
#define GF 6757   // 369.994 Hz
#define G 6378   // 391.995 Hz
#define AF 6020   // 415.305 Hz
#define A 5682   // 440.000 Hz
#define BF 5363   // 466.164 Hz
#define B 5062   // 493.883 Hz
#define C 4778   // 523.251 Hz
#define DF1 4510   // 554.365 Hz
#define D1 4257   // 587.330 Hz
#define EF1 4018   // 622.254 Hz
#define E1 3792   // 659.255 Hz
#define F1 3579   // 698.456 Hz
#define GF1 3378   // 739.989 Hz
#define G1 3189   // 783.991 Hz
#define AF1 3010   // 830.609 Hz
#define A1 2841   // 880.000 Hz
#define BF1 2681   // 932.328 Hz
#define B1 2531   // 987.767 Hz
#define C1 2389   // 1046.502 Hz
#define DF2 2255   // 1108.731 Hz
#define D2 2128   // 1174.659 Hz
#define EF2 2009   // 1244.508 Hz
#define E2 1896   // 1318.510 Hz
#define F2 1790   // 1396.913 Hz
#define GF2 1689   // 1479.978 Hz
#define G2 1594   // 1567.982 Hz
#define AF2 1505   // 1661.219 Hz
#define A2 1420   // 1760.000 Hz
#define BF2 1341   // 1864.655 Hz
#define B2 1265   // 1975.533 Hz
#define C2 1194   // 2093.005 Hz
