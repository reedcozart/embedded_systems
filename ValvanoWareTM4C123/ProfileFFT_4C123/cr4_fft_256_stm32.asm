;******************** (C) COPYRIGHT 2009  STMicroelectronics ********************
;* File Name          : cr4_fft_256_stm32.s
;* Author             : MCD Application Team
;* Version            : V2.0.0
;* Date               : 04/27/2009
;* Description        : Optimized 256-point radix-4 complex FFT for Cortex-M3
;********************************************************************************
;* THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
;* WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE TIME.
;* AS A RESULT, STMICROELECTRONICS SHALL NOT BE HELD LIABLE FOR ANY DIRECT,
;* INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING FROM THE
;* CONTENT OF SUCH SOFTWARE AND/OR THE USE MADE BY CUSTOMERS OF THE CODING
;* INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
;*******************************************************************************/

        .thumb
        .text
        .align 2

  .global cr4_fft_256_stm32
;  .global TableFFT


pssK        .set R0
pssOUT      .set R0
pssX        .set R1
pssIN       .set R1
butternbr   .set R2
Nbin        .set R2
index       .set R3
Ar          .set R4
Ai          .set R5
Br          .set R6
Bi          .set R7
Cr          .set R8
Ci          .set R9
Dr          .set R10
Di          .set R11
cntrbitrev  .set R12
tmp         .set R12
pssIN2      .set R14
tmp2        .set R14

NPT   .equ 256

;----------------------------- MACROS ----------------------------------------
DEC   .macro  _reg
       SUB    _reg,_reg,#1
      .endm

INC   .macro _reg
       ADD   _reg,_reg,#1
      .endm


QUAD  .macro _reg
       MOV   _reg,_reg,LSL#2
      .endm

;sXi = *(PssX+1); sXr = *PssX; PssX += offset; PssX= R1

LDR2Q   .macro  _sXr,_sXi, _PssX, _offset
         LDRSH _sXi, [_PssX, #2]
         LDRSH _sXr, [_PssX]
         ADD   _PssX, _PssX, _offset
        .endm

;!! Same macro, to be used when passing negative offset value !!
LDR2Qm  .macro _sXr, _sXi, _PssX, _offset
         LDRSH _sXi, [_PssX, #2]
         LDRSH _sXr, [_PssX]
         SUB   _PssX, _PssX, _offset
        .endm

;(PssX+1)= sXi;  *PssX=sXr; PssX += offset;
STR2Q   .macro _sXr, _sXi, _PssX, _offset
         STRH  _sXi, [_PssX, #2]
         STRH  _sXr, [_PssX]
         ADD   _PssX, _PssX, _offset
        .endm

; YY = Cplx_conjugate_mul(Y,K)
;  Y = YYr + i*YYi
; use the following trick
;  K = (Kr-Ki) + i*Ki
CXMUL_V7 .macro _YYr, _YYi, _Yr, _Yi, _Kr, _Ki,_tmp,_tmp2
         SUB  _tmp2, _Yi, _Yr         ; sYi-sYr
         MUL  _tmp, _tmp2, _Ki        ; (sYi-sYr)*sKi
         ADD  _tmp2, _Kr, _Ki, LSL#1  ; (sKr+sKi)
         MLA  _YYi, _Yi, _Kr, _tmp     ; lYYi = sYi*sKr-sYr*sKi
         MLA  _YYr, _Yr, _tmp2, _tmp   ; lYYr = sYr*sKr+sYi*sKi
        .endm

; Four point complex Fast Fourier Transform
CXADDA4 .macro _s
        ; (C,D) = (C+D, C-D)
        ADD     Cr, Cr, Dr
        ADD     Ci, Ci, Di
        SUB     Dr, Cr, Dr, LSL#1
        SUB     Di, Ci, Di, LSL#1
        ; (A,B) = (A+(B>>s), A-(B>>s))/4
        MOV     Ar, Ar, ASR#2
        MOV     Ai, Ai, ASR#2
        ADD     Ar, Ar, Br, ASR#(2+_s)
        ADD     Ai, Ai, Bi, ASR#(2+_s)
        SUB     Br, Ar, Br, ASR#(1+_s)
        SUB     Bi, Ai, Bi, ASR#(1+_s)
        ; (A,C) = (A+(C>>s)/4, A-(C>>s)/4)
        ADD     Ar, Ar, Cr, ASR#(2+_s)
        ADD     Ai, Ai, Ci, ASR#(2+_s)
        SUB     Cr, Ar, Cr, ASR#(1+_s)
        SUB     Ci, Ai, Ci, ASR#(1+_s)
        ; (B,D) = (B-i*(D>>s)/4, B+i*(D>>s)/4)
        ADD     Br, Br, Di, ASR#(2+_s)
        SUB     Bi, Bi, Dr, ASR#(2+_s)
        SUB     Di, Br, Di, ASR#(1+_s)
        ADD     Dr, Bi, Dr, ASR#(1+_s)
        .endm


BUTFLY4ZERO_OPT  .macro _pIN,_offset, _pOUT
        LDRSH Ai, [_pIN, #2]
        LDRSH Ar, [_pIN]
        ADD   _pIN, #NPT
        LDRSH Ci, [_pIN, #2]
        LDRSH Cr, [_pIN]
        ADD   _pIN, #NPT
        LDRSH Bi, [_pIN, #2]
        LDRSH Br, [_pIN]
        ADD   _pIN, #NPT
        LDRSH Di, [_pIN, #2]
        LDRSH Dr, [_pIN]
        ADD   _pIN, #NPT

        ; (C,D) = (C+D, C-D)
        ADD     Cr, Cr, Dr
        ADD     Ci, Ci, Di
        SUB     Dr, Cr, Dr, LSL#1  ; trick
        SUB     Di, Ci, Di, LSL#1  ;trick
        ; (A,B) = (A+B)/4, (A-B)/4
        MOV     Ar, Ar, ASR#2
        MOV     Ai, Ai, ASR#2
        ADD     Ar, Ar, Br, ASR#2
        ADD     Ai, Ai, Bi, ASR#2
        SUB     Br, Ar, Br, ASR#1
        SUB     Bi, Ai, Bi, ASR#1
        ; (A,C) = (A+C)/4, (A-C)/4
        ADD     Ar, Ar, Cr, ASR#2
        ADD     Ai, Ai, Ci, ASR#2
        SUB     Cr, Ar, Cr, ASR#1
        SUB     Ci, Ai, Ci, ASR#1
        ; (B,D) = (B-i*D)/4, (B+i*D)/4
        ADD     Br, Br, Di, ASR#2
        SUB     Bi, Bi, Dr, ASR#2
        SUB     Di, Br, Di, ASR#1
        ADD     Dr, Bi, Dr, ASR#1
        ;
        STRH    Ai, [_pOUT, #2]
        STRH    Ar, [_pOUT], #4
        STRH    Bi, [_pOUT, #2]
        STRH    Br, [_pOUT], #4
        STRH    Ci, [_pOUT, #2]
        STRH    Cr, [_pOUT], #4
        STRH    Dr, [_pOUT, #2]  ; inversion here
        STRH    Di, [_pOUT], #4
        .endm

BUTFLY4_V7 .macro  _pssDin,_offset,_pssDout,_qformat,_pssK
        LDR2Qm   Ar,Ai,_pssDin, _offset ;-_offset
        LDR2Q    Dr,Di,_pssK, #4
        ; format CXMUL_V7 YYr, YYi, Yr, Yi, Kr, Ki,tmp,tmp2
        CXMUL_V7 Dr,Di,Ar,Ai,Dr,Di,tmp,tmp2
        LDR2Qm   Ar,Ai,_pssDin,_offset;-_offset
        LDR2Q    Cr,Ci,_pssK,#4
        CXMUL_V7 Cr,Ci,Ar,Ai,Cr,Ci,tmp,tmp2
        LDR2Qm    Ar,Ai, _pssDin, _offset;-_offset
        LDR2Q    Br,Bi, _pssK, #4
        CXMUL_V7  Br,Bi,Ar,Ai,Br,Bi,tmp,tmp2
        LDR2Q    Ar,Ai, _pssDin, #0
        CXADDA4  _qformat
        STRH    Ai, [_pssDout, #2]
        STRH    Ar, [_pssDout]
        ADD   _pssDout, _pssDout, _offset
        STRH    Bi, [_pssDout, #2]
        STRH    Br, [_pssDout]
        ADD     _pssDout, _pssDout, _offset
        STRH    Ci, [_pssDout, #2]
        STRH    Cr, [_pssDout]
        ADD     _pssDout, _pssDout, _offset
        STRH    Dr, [_pssDout, #2]  ; inversion here
        STRH    Di, [_pssDout], #4
        .endm

;-------------------      CODE      --------------------------------
;===============================================================================
;*******************************************************************************
;* Function Name  : cr4_fft_256_stm32
;* Description    : complex radix-4 256 points FFT
;* Input          : - R0 = pssOUT: Output array .
;*                  - R1 = pssIN: Input array
;*                  - R2 = Nbin: =256 number of points, this optimized FFT function
;*                    can only convert 256 points.
;* Output         : None
;* Return         : None
;*******************************************************************************
cr4_fft_256_stm32:  .asmfunc

        STMFD   SP!, {R4-R11, LR}

        MOV cntrbitrev, #0
        MOV index,#0

preloop_v7
        ADD     pssIN2, pssIN, cntrbitrev, LSR#24 ;256-pts
        BUTFLY4ZERO_OPT pssIN2,Nbin,pssOUT
        INC index
        RBIT cntrbitrev,index
        CMP index,#64  ;256-pts
        BNE  preloop_v7


        SUB     pssX, pssOUT, Nbin, LSL#2
        MOV     index, #16
        MOVS    butternbr, Nbin, LSR#4   ;dual use of register

;------------------------------------------------------------------------------
;   The FFT coefficients table can be stored into Flash or RAM.
;   The following two lines of code allow selecting the method for coefficients
;   storage.
;   In the case of choosing coefficients in RAM, you have to:
;   1. Include the file table_fft.h, which is a part of the DSP library,
;      in your main file.
;   2. Decomment the line LDR.W pssK, =TableFFT and comment the line
;      ADRL    pssK, TableFFT_V7
;   3. Comment all the TableFFT_V7 data.
;------------------------------------------------------------------------------
        ADRL    pssK, TableFFT_V7    ; Coeff in Flash
        ;LDR.W pssK, =TableFFT      ; Coeff in RAM

;................................
passloop_v7
        STMFD   SP!, {pssX,butternbr}
        ADD     tmp, index, index, LSL#1
        ADD     pssX, pssX, tmp
        SUB     butternbr, butternbr, #1<<16
;................
grouploop_v7
        ADD     butternbr,butternbr,index,LSL#(16-2)
;.......
butterloop_v7
        BUTFLY4_V7  pssX,index,pssX,14,pssK
        SUBS        butternbr,butternbr, #1<<16
        BGE     butterloop_v7
;.......
        ADD     tmp, index, index, LSL#1
        ADD     pssX, pssX, tmp
        DEC     butternbr
        MOVS    tmp2, butternbr, LSL#16
        IT      NE
        SUBNE   pssK, pssK, tmp
        BNE     grouploop_v7
;................
        LDMFD   sp!, {pssX, butternbr}
        QUAD    index
        MOVS    butternbr, butternbr, LSR#2    ; loop nbr /= radix
        BNE     passloop_v7
;................................
        LDMFD   SP!, {R4-R11, PC}
       .endasmfunc
;=============================================================================
       .align 4

TableFFT_V7
        ;N=16
        .half 0x4000,0x0000, 0x4000,0x0000, 0x4000,0x0000
        .half 0xdd5d,0x3b21, 0x22a3,0x187e, 0x0000,0x2d41
        .half 0xa57e,0x2d41, 0x0000,0x2d41, 0xc000,0x4000
        .half 0xdd5d,0xe782, 0xdd5d,0x3b21, 0xa57e,0x2d41
        ; N=64
        .half 0x4000,0x0000, 0x4000,0x0000, 0x4000,0x0000
        .half 0x2aaa,0x1294, 0x396b,0x0646, 0x3249,0x0c7c
        .half 0x11a8,0x238e, 0x3249,0x0c7c, 0x22a3,0x187e
        .half 0xf721,0x3179, 0x2aaa,0x1294, 0x11a8,0x238e
        .half 0xdd5d,0x3b21, 0x22a3,0x187e, 0x0000,0x2d41
        .half 0xc695,0x3fb1, 0x1a46,0x1e2b, 0xee58,0x3537
        .half 0xb4be,0x3ec5, 0x11a8,0x238e, 0xdd5d,0x3b21
        .half 0xa963,0x3871, 0x08df,0x289a, 0xcdb7,0x3ec5
        .half 0xa57e,0x2d41, 0x0000,0x2d41, 0xc000,0x4000
        .half 0xa963,0x1e2b, 0xf721,0x3179, 0xb4be,0x3ec5
        .half 0xb4be,0x0c7c, 0xee58,0x3537, 0xac61,0x3b21
        .half 0xc695,0xf9ba, 0xe5ba,0x3871, 0xa73b,0x3537
        .half 0xdd5d,0xe782, 0xdd5d,0x3b21, 0xa57e,0x2d41
        .half 0xf721,0xd766, 0xd556,0x3d3f, 0xa73b,0x238e
        .half 0x11a8,0xcac9, 0xcdb7,0x3ec5, 0xac61,0x187e
        .half 0x2aaa,0xc2c1, 0xc695,0x3fb1, 0xb4be,0x0c7c
        ; N=256
        .half 0x4000,0x0000, 0x4000,0x0000, 0x4000,0x0000
        .half 0x3b1e,0x04b5, 0x3e69,0x0192, 0x3cc8,0x0324
        .half 0x35eb,0x0964, 0x3cc8,0x0324, 0x396b,0x0646
        .half 0x306c,0x0e06, 0x3b1e,0x04b5, 0x35eb,0x0964
        .half 0x2aaa,0x1294, 0x396b,0x0646, 0x3249,0x0c7c
        .half 0x24ae,0x1709, 0x37af,0x07d6, 0x2e88,0x0f8d
        .half 0x1e7e,0x1b5d, 0x35eb,0x0964, 0x2aaa,0x1294
        .half 0x1824,0x1f8c, 0x341e,0x0af1, 0x26b3,0x1590
        .half 0x11a8,0x238e, 0x3249,0x0c7c, 0x22a3,0x187e
        .half 0x0b14,0x2760, 0x306c,0x0e06, 0x1e7e,0x1b5d
        .half 0x0471,0x2afb, 0x2e88,0x0f8d, 0x1a46,0x1e2b
        .half 0xfdc7,0x2e5a, 0x2c9d,0x1112, 0x15fe,0x20e7
        .half 0xf721,0x3179, 0x2aaa,0x1294, 0x11a8,0x238e
        .half 0xf087,0x3453, 0x28b2,0x1413, 0x0d48,0x2620
        .half 0xea02,0x36e5, 0x26b3,0x1590, 0x08df,0x289a
        .half 0xe39c,0x392b, 0x24ae,0x1709, 0x0471,0x2afb
        .half 0xdd5d,0x3b21, 0x22a3,0x187e, 0x0000,0x2d41
        .half 0xd74e,0x3cc5, 0x2093,0x19ef, 0xfb8f,0x2f6c
        .half 0xd178,0x3e15, 0x1e7e,0x1b5d, 0xf721,0x3179
        .half 0xcbe2,0x3f0f, 0x1c64,0x1cc6, 0xf2b8,0x3368
        .half 0xc695,0x3fb1, 0x1a46,0x1e2b, 0xee58,0x3537
        .half 0xc197,0x3ffb, 0x1824,0x1f8c, 0xea02,0x36e5
        .half 0xbcf0,0x3fec, 0x15fe,0x20e7, 0xe5ba,0x3871
        .half 0xb8a6,0x3f85, 0x13d5,0x223d, 0xe182,0x39db
        .half 0xb4be,0x3ec5, 0x11a8,0x238e, 0xdd5d,0x3b21
        .half 0xb140,0x3daf, 0x0f79,0x24da, 0xd94d,0x3c42
        .half 0xae2e,0x3c42, 0x0d48,0x2620, 0xd556,0x3d3f
        .half 0xab8e,0x3a82, 0x0b14,0x2760, 0xd178,0x3e15
        .half 0xa963,0x3871, 0x08df,0x289a, 0xcdb7,0x3ec5
        .half 0xa7b1,0x3612, 0x06a9,0x29ce, 0xca15,0x3f4f
        .half 0xa678,0x3368, 0x0471,0x2afb, 0xc695,0x3fb1
        .half 0xa5bc,0x3076, 0x0239,0x2c21, 0xc338,0x3fec
        .half 0xa57e,0x2d41, 0x0000,0x2d41, 0xc000,0x4000
        .half 0xa5bc,0x29ce, 0xfdc7,0x2e5a, 0xbcf0,0x3fec
        .half 0xa678,0x2620, 0xfb8f,0x2f6c, 0xba09,0x3fb1
        .half 0xa7b1,0x223d, 0xf957,0x3076, 0xb74d,0x3f4f
        .half 0xa963,0x1e2b, 0xf721,0x3179, 0xb4be,0x3ec5
        .half 0xab8e,0x19ef, 0xf4ec,0x3274, 0xb25e,0x3e15
        .half 0xae2e,0x1590, 0xf2b8,0x3368, 0xb02d,0x3d3f
        .half 0xb140,0x1112, 0xf087,0x3453, 0xae2e,0x3c42
        .half 0xb4be,0x0c7c, 0xee58,0x3537, 0xac61,0x3b21
        .half 0xb8a6,0x07d6, 0xec2b,0x3612, 0xaac8,0x39db
        .half 0xbcf0,0x0324, 0xea02,0x36e5, 0xa963,0x3871
        .half 0xc197,0xfe6e, 0xe7dc,0x37b0, 0xa834,0x36e5
        .half 0xc695,0xf9ba, 0xe5ba,0x3871, 0xa73b,0x3537
        .half 0xcbe2,0xf50f, 0xe39c,0x392b, 0xa678,0x3368
        .half 0xd178,0xf073, 0xe182,0x39db, 0xa5ed,0x3179
        .half 0xd74e,0xebed, 0xdf6d,0x3a82, 0xa599,0x2f6c
        .half 0xdd5d,0xe782, 0xdd5d,0x3b21, 0xa57e,0x2d41
        .half 0xe39c,0xe33a, 0xdb52,0x3bb6, 0xa599,0x2afb
        .half 0xea02,0xdf19, 0xd94d,0x3c42, 0xa5ed,0x289a
        .half 0xf087,0xdb26, 0xd74e,0x3cc5, 0xa678,0x2620
        .half 0xf721,0xd766, 0xd556,0x3d3f, 0xa73b,0x238e
        .half 0xfdc7,0xd3df, 0xd363,0x3daf, 0xa834,0x20e7
        .half 0x0471,0xd094, 0xd178,0x3e15, 0xa963,0x1e2b
        .half 0x0b14,0xcd8c, 0xcf94,0x3e72, 0xaac8,0x1b5d
        .half 0x11a8,0xcac9, 0xcdb7,0x3ec5, 0xac61,0x187e
        .half 0x1824,0xc850, 0xcbe2,0x3f0f, 0xae2e,0x1590
        .half 0x1e7e,0xc625, 0xca15,0x3f4f, 0xb02d,0x1294
        .half 0x24ae,0xc44a, 0xc851,0x3f85, 0xb25e,0x0f8d
        .half 0x2aaa,0xc2c1, 0xc695,0x3fb1, 0xb4be,0x0c7c
        .half 0x306c,0xc18e, 0xc4e2,0x3fd4, 0xb74d,0x0964
        .half 0x35eb,0xc0b1, 0xc338,0x3fec, 0xba09,0x0646
        .half 0x3b1e,0xc02c, 0xc197,0x3ffb, 0xbcf0,0x0324

       .end

;******************* (C) COPYRIGHT 2009  STMicroelectronics *****END OF FILE****
