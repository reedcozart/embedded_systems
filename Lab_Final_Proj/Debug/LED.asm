;******************************************************************************
;* TI ARM C/C++ Codegen                                             PC v5.2.4 *
;* Date/Time created: Thu Sep 17 23:20:47 2015                                *
;******************************************************************************
	.compiler_opts --abi=eabi --arm_vmrs_si_workaround=off --code_state=16 --diag_wrap=off --disable_dual_state --embedded_constants=on --endian=little --float_support=FPv4SPD16 --hll_source=on --object_format=elf --silicon_version=7M4 --symdebug:dwarf --symdebug:dwarf_version=3 --unaligned_access=on 
	.thumb

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../LED.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TI ARM C/C++ Codegen PC v5.2.4 Copyright (c) 1996-2015 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Dropbox\ArmBook\LaunchPad\ValvanoWareTM4C123\ESP8266_4C123\Debug")
;	C:\ti\ccsv6\tools\compiler\ti-cgt-arm_5.2.4\bin\armacpia.exe -@C:\\Users\\VALVAN~1\\AppData\\Local\\Temp\\0519612 
	.sect	".text"
	.clink
	.thumbfunc LED_Init
	.thumb
	.global	LED_Init

$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("LED_Init")
	.dwattr $C$DW$1, DW_AT_low_pc(LED_Init)
	.dwattr $C$DW$1, DW_AT_high_pc(0x00)
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("LED_Init")
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_TI_begin_file("../LED.c")
	.dwattr $C$DW$1, DW_AT_TI_begin_line(0x33)
	.dwattr $C$DW$1, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$1, DW_AT_decl_file("../LED.c")
	.dwattr $C$DW$1, DW_AT_decl_line(0x33)
	.dwattr $C$DW$1, DW_AT_decl_column(0x06)
	.dwattr $C$DW$1, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../LED.c",line 51,column 20,is_stmt,address LED_Init,isa 1

	.dwfde $C$DW$CIE, LED_Init
;----------------------------------------------------------------------
;  51 | void LED_Init(void){                                                   
;----------------------------------------------------------------------

;*****************************************************************************
;* FUNCTION NAME: LED_Init                                                   *
;*                                                                           *
;*   Regs Modified     : A1,A2,SR                                            *
;*   Regs Used         : A1,A2,LR,SR                                         *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
LED_Init:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwpsn	file "../LED.c",line 52,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  52 | SYSCTL_RCGCGPIO_R |= 0x20;     // 1) activate Port F                   
;----------------------------------------------------------------------
        LDR       A2, $C$CON1           ; [DPU_3_PIPE] |52| 
        LDR       A1, [A2, #0]          ; [DPU_3_PIPE] |52| 
        ORR       A1, A1, #32           ; [DPU_3_PIPE] |52| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |52| 
	.dwpsn	file "../LED.c",line 53,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  53 | while((SYSCTL_PRGPIO_R & 0x20)!=0x20){}; // wait to finish activating
;     |                                                                        
;----------------------------------------------------------------------
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L1||
;*
;*   Loop source line                : 53
;*   Loop closing brace source line  : 53
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L1||:    
	.dwpsn	file "../LED.c",line 53,column 9,is_stmt,isa 1
        LDR       A1, $C$CON2           ; [DPU_3_PIPE] |53| 
        LDR       A1, [A1, #0]          ; [DPU_3_PIPE] |53| 
        LSRS      A1, A1, #6            ; [DPU_3_PIPE] |53| 
        BCC       ||$C$L1||             ; [DPU_3_PIPE] |53| 
        ; BRANCHCC OCCURS {||$C$L1||}    ; [] |53| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../LED.c",line 54,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  54 | GPIO_PORTF_LOCK_R = GPIO_LOCK_KEY;// 2a) unlock GPIO Port F Commit Regi
;     | ster                                                                   
;----------------------------------------------------------------------
        LDR       A1, $C$CON4           ; [DPU_3_PIPE] |54| 
        LDR       A2, $C$CON3           ; [DPU_3_PIPE] |54| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |54| 
	.dwpsn	file "../LED.c",line 55,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  55 | GPIO_PORTF_CR_R = 0x1F;        // 2b) enable commit for PF4-PF0        
;----------------------------------------------------------------------
        LDR       A2, $C$CON5           ; [DPU_3_PIPE] |55| 
        MOVS      A1, #31               ; [DPU_3_PIPE] |55| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |55| 
	.dwpsn	file "../LED.c",line 56,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  56 | GPIO_PORTF_AMSEL_R &= ~0x1F;   // 3) disable analog functionality on PF
;     | 4-PF0                                                                  
;----------------------------------------------------------------------
        LDR       A2, $C$CON6           ; [DPU_3_PIPE] |56| 
        LDR       A1, [A2, #0]          ; [DPU_3_PIPE] |56| 
        BIC       A1, A1, #31           ; [DPU_3_PIPE] |56| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |56| 
	.dwpsn	file "../LED.c",line 57,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  57 | GPIO_PORTF_PCTL_R = 0x00000000;// 4) configure PF0-PF4 as GPIO         
;----------------------------------------------------------------------
        LDR       A2, $C$CON7           ; [DPU_3_PIPE] |57| 
        MOVS      A1, #0                ; [DPU_3_PIPE] |57| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |57| 
	.dwpsn	file "../LED.c",line 58,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  58 | GPIO_PORTF_DIR_R = 0x0E;       // 5) make PF0 and PF4 in PF3-1 output
;     |                                                                        
;----------------------------------------------------------------------
        LDR       A2, $C$CON8           ; [DPU_3_PIPE] |58| 
        MOVS      A1, #14               ; [DPU_3_PIPE] |58| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |58| 
	.dwpsn	file "../LED.c",line 59,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  59 | GPIO_PORTF_AFSEL_R = 0;        // 6) disable alt funct on PF0 and PF4  
;----------------------------------------------------------------------
        LDR       A2, $C$CON9           ; [DPU_3_PIPE] |59| 
        MOVS      A1, #0                ; [DPU_3_PIPE] |59| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |59| 
	.dwpsn	file "../LED.c",line 60,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  60 | GPIO_PORTF_PUR_R = 0x11;       // enable weak pull-up on PF0 and PF4   
;----------------------------------------------------------------------
        LDR       A2, $C$CON10          ; [DPU_3_PIPE] |60| 
        MOVS      A1, #17               ; [DPU_3_PIPE] |60| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |60| 
	.dwpsn	file "../LED.c",line 61,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  61 | GPIO_PORTF_DEN_R = 0x1F;       // 7) enable digital I/O on PF0-PF4     
;----------------------------------------------------------------------
        LDR       A2, $C$CON11          ; [DPU_3_PIPE] |61| 
        MOVS      A1, #31               ; [DPU_3_PIPE] |61| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |61| 
	.dwpsn	file "../LED.c",line 62,column 1,is_stmt,isa 1
$C$DW$2	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$2, DW_AT_low_pc(0x00)
	.dwattr $C$DW$2, DW_AT_TI_return
        BX        LR                    ; [DPU_3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$1, DW_AT_TI_end_file("../LED.c")
	.dwattr $C$DW$1, DW_AT_TI_end_line(0x3e)
	.dwattr $C$DW$1, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$1

	.sect	".text"
	.clink
	.thumbfunc Board_Input
	.thumb
	.global	Board_Input

$C$DW$3	.dwtag  DW_TAG_subprogram, DW_AT_name("Board_Input")
	.dwattr $C$DW$3, DW_AT_low_pc(Board_Input)
	.dwattr $C$DW$3, DW_AT_high_pc(0x00)
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("Board_Input")
	.dwattr $C$DW$3, DW_AT_external
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$3, DW_AT_TI_begin_file("../LED.c")
	.dwattr $C$DW$3, DW_AT_TI_begin_line(0x47)
	.dwattr $C$DW$3, DW_AT_TI_begin_column(0x0a)
	.dwattr $C$DW$3, DW_AT_decl_file("../LED.c")
	.dwattr $C$DW$3, DW_AT_decl_line(0x47)
	.dwattr $C$DW$3, DW_AT_decl_column(0x0a)
	.dwattr $C$DW$3, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../LED.c",line 71,column 27,is_stmt,address Board_Input,isa 1

	.dwfde $C$DW$CIE, Board_Input
;----------------------------------------------------------------------
;  71 | uint32_t Board_Input(void){                                            
;----------------------------------------------------------------------

;*****************************************************************************
;* FUNCTION NAME: Board_Input                                                *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,SR                                         *
;*   Regs Used         : A1,A2,A3,LR,SR                                      *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
Board_Input:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwpsn	file "../LED.c",line 72,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  72 | return (~((PF4>>3)+PF0))&0x03;                                         
;----------------------------------------------------------------------
        LDR       A2, $C$CON13          ; [DPU_3_PIPE] |72| 
        LDR       A1, $C$CON12          ; [DPU_3_PIPE] |72| 
        LDR       A3, [A2, #0]          ; [DPU_3_PIPE] |72| 
        LDR       A2, [A1, #0]          ; [DPU_3_PIPE] |72| 
        MOVS      A1, #3                ; [DPU_3_PIPE] |72| 
        ADD       A2, A2, A3, LSR #3    ; [DPU_3_PIPE] |72| 
        BICS      A1, A1, A2            ; [DPU_3_PIPE] |72| 
	.dwpsn	file "../LED.c",line 73,column 1,is_stmt,isa 1
$C$DW$4	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$4, DW_AT_low_pc(0x00)
	.dwattr $C$DW$4, DW_AT_TI_return
        BX        LR                    ; [DPU_3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$3, DW_AT_TI_end_file("../LED.c")
	.dwattr $C$DW$3, DW_AT_TI_end_line(0x49)
	.dwattr $C$DW$3, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$3

	.sect	".text"
	.clink
	.thumbfunc LED_RedOn
	.thumb
	.global	LED_RedOn

$C$DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("LED_RedOn")
	.dwattr $C$DW$5, DW_AT_low_pc(LED_RedOn)
	.dwattr $C$DW$5, DW_AT_high_pc(0x00)
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("LED_RedOn")
	.dwattr $C$DW$5, DW_AT_external
	.dwattr $C$DW$5, DW_AT_TI_begin_file("../LED.c")
	.dwattr $C$DW$5, DW_AT_TI_begin_line(0x4e)
	.dwattr $C$DW$5, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$5, DW_AT_decl_file("../LED.c")
	.dwattr $C$DW$5, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$5, DW_AT_decl_column(0x06)
	.dwattr $C$DW$5, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../LED.c",line 78,column 21,is_stmt,address LED_RedOn,isa 1

	.dwfde $C$DW$CIE, LED_RedOn
;----------------------------------------------------------------------
;  78 | void LED_RedOn(void){                                                  
;----------------------------------------------------------------------

;*****************************************************************************
;* FUNCTION NAME: LED_RedOn                                                  *
;*                                                                           *
;*   Regs Modified     : A1,A2,SR                                            *
;*   Regs Used         : A1,A2,LR,SR                                         *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
LED_RedOn:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwpsn	file "../LED.c",line 79,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  79 | PF1 = 0x02;                                                            
;----------------------------------------------------------------------
        LDR       A2, $C$CON14          ; [DPU_3_PIPE] |79| 
        MOVS      A1, #2                ; [DPU_3_PIPE] |79| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |79| 
	.dwpsn	file "../LED.c",line 80,column 1,is_stmt,isa 1
$C$DW$6	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$6, DW_AT_low_pc(0x00)
	.dwattr $C$DW$6, DW_AT_TI_return
        BX        LR                    ; [DPU_3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$5, DW_AT_TI_end_file("../LED.c")
	.dwattr $C$DW$5, DW_AT_TI_end_line(0x50)
	.dwattr $C$DW$5, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$5

	.sect	".text"
	.clink
	.thumbfunc LED_RedOff
	.thumb
	.global	LED_RedOff

$C$DW$7	.dwtag  DW_TAG_subprogram, DW_AT_name("LED_RedOff")
	.dwattr $C$DW$7, DW_AT_low_pc(LED_RedOff)
	.dwattr $C$DW$7, DW_AT_high_pc(0x00)
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("LED_RedOff")
	.dwattr $C$DW$7, DW_AT_external
	.dwattr $C$DW$7, DW_AT_TI_begin_file("../LED.c")
	.dwattr $C$DW$7, DW_AT_TI_begin_line(0x55)
	.dwattr $C$DW$7, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$7, DW_AT_decl_file("../LED.c")
	.dwattr $C$DW$7, DW_AT_decl_line(0x55)
	.dwattr $C$DW$7, DW_AT_decl_column(0x06)
	.dwattr $C$DW$7, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../LED.c",line 85,column 22,is_stmt,address LED_RedOff,isa 1

	.dwfde $C$DW$CIE, LED_RedOff
;----------------------------------------------------------------------
;  85 | void LED_RedOff(void){                                                 
;----------------------------------------------------------------------

;*****************************************************************************
;* FUNCTION NAME: LED_RedOff                                                 *
;*                                                                           *
;*   Regs Modified     : A1,A2,SR                                            *
;*   Regs Used         : A1,A2,LR,SR                                         *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
LED_RedOff:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwpsn	file "../LED.c",line 86,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  86 | PF1 = 0x00;                                                            
;----------------------------------------------------------------------
        LDR       A2, $C$CON14          ; [DPU_3_PIPE] |86| 
        MOVS      A1, #0                ; [DPU_3_PIPE] |86| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |86| 
	.dwpsn	file "../LED.c",line 87,column 1,is_stmt,isa 1
$C$DW$8	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$8, DW_AT_low_pc(0x00)
	.dwattr $C$DW$8, DW_AT_TI_return
        BX        LR                    ; [DPU_3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$7, DW_AT_TI_end_file("../LED.c")
	.dwattr $C$DW$7, DW_AT_TI_end_line(0x57)
	.dwattr $C$DW$7, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$7

	.sect	".text"
	.clink
	.thumbfunc LED_RedToggle
	.thumb
	.global	LED_RedToggle

$C$DW$9	.dwtag  DW_TAG_subprogram, DW_AT_name("LED_RedToggle")
	.dwattr $C$DW$9, DW_AT_low_pc(LED_RedToggle)
	.dwattr $C$DW$9, DW_AT_high_pc(0x00)
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("LED_RedToggle")
	.dwattr $C$DW$9, DW_AT_external
	.dwattr $C$DW$9, DW_AT_TI_begin_file("../LED.c")
	.dwattr $C$DW$9, DW_AT_TI_begin_line(0x5c)
	.dwattr $C$DW$9, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$9, DW_AT_decl_file("../LED.c")
	.dwattr $C$DW$9, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$9, DW_AT_decl_column(0x06)
	.dwattr $C$DW$9, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../LED.c",line 92,column 25,is_stmt,address LED_RedToggle,isa 1

	.dwfde $C$DW$CIE, LED_RedToggle
;----------------------------------------------------------------------
;  92 | void LED_RedToggle(void){                                              
;----------------------------------------------------------------------

;*****************************************************************************
;* FUNCTION NAME: LED_RedToggle                                              *
;*                                                                           *
;*   Regs Modified     : A1,A2                                               *
;*   Regs Used         : A1,A2,LR                                            *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
LED_RedToggle:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwpsn	file "../LED.c",line 93,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  93 | PF1 ^= 0x02;                                                           
;----------------------------------------------------------------------
        LDR       A2, $C$CON14          ; [DPU_3_PIPE] |93| 
        LDR       A1, [A2, #0]          ; [DPU_3_PIPE] |93| 
        EOR       A1, A1, #2            ; [DPU_3_PIPE] |93| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |93| 
	.dwpsn	file "../LED.c",line 94,column 1,is_stmt,isa 1
$C$DW$10	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$10, DW_AT_low_pc(0x00)
	.dwattr $C$DW$10, DW_AT_TI_return
        BX        LR                    ; [DPU_3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$9, DW_AT_TI_end_file("../LED.c")
	.dwattr $C$DW$9, DW_AT_TI_end_line(0x5e)
	.dwattr $C$DW$9, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$9

	.sect	".text"
	.clink
	.thumbfunc LED_BlueToggle
	.thumb
	.global	LED_BlueToggle

$C$DW$11	.dwtag  DW_TAG_subprogram, DW_AT_name("LED_BlueToggle")
	.dwattr $C$DW$11, DW_AT_low_pc(LED_BlueToggle)
	.dwattr $C$DW$11, DW_AT_high_pc(0x00)
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("LED_BlueToggle")
	.dwattr $C$DW$11, DW_AT_external
	.dwattr $C$DW$11, DW_AT_TI_begin_file("../LED.c")
	.dwattr $C$DW$11, DW_AT_TI_begin_line(0x63)
	.dwattr $C$DW$11, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$11, DW_AT_decl_file("../LED.c")
	.dwattr $C$DW$11, DW_AT_decl_line(0x63)
	.dwattr $C$DW$11, DW_AT_decl_column(0x06)
	.dwattr $C$DW$11, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../LED.c",line 99,column 26,is_stmt,address LED_BlueToggle,isa 1

	.dwfde $C$DW$CIE, LED_BlueToggle
;----------------------------------------------------------------------
;  99 | void LED_BlueToggle(void){                                             
;----------------------------------------------------------------------

;*****************************************************************************
;* FUNCTION NAME: LED_BlueToggle                                             *
;*                                                                           *
;*   Regs Modified     : A1,A2                                               *
;*   Regs Used         : A1,A2,LR                                            *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
LED_BlueToggle:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwpsn	file "../LED.c",line 100,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 100 | PF2 ^= 0x04;                                                           
;----------------------------------------------------------------------
        LDR       A2, $C$CON15          ; [DPU_3_PIPE] |100| 
        LDR       A1, [A2, #0]          ; [DPU_3_PIPE] |100| 
        EOR       A1, A1, #4            ; [DPU_3_PIPE] |100| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |100| 
	.dwpsn	file "../LED.c",line 101,column 1,is_stmt,isa 1
$C$DW$12	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$12, DW_AT_low_pc(0x00)
	.dwattr $C$DW$12, DW_AT_TI_return
        BX        LR                    ; [DPU_3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$11, DW_AT_TI_end_file("../LED.c")
	.dwattr $C$DW$11, DW_AT_TI_end_line(0x65)
	.dwattr $C$DW$11, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$11

	.sect	".text"
	.clink
	.thumbfunc LED_GreenToggle
	.thumb
	.global	LED_GreenToggle

$C$DW$13	.dwtag  DW_TAG_subprogram, DW_AT_name("LED_GreenToggle")
	.dwattr $C$DW$13, DW_AT_low_pc(LED_GreenToggle)
	.dwattr $C$DW$13, DW_AT_high_pc(0x00)
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("LED_GreenToggle")
	.dwattr $C$DW$13, DW_AT_external
	.dwattr $C$DW$13, DW_AT_TI_begin_file("../LED.c")
	.dwattr $C$DW$13, DW_AT_TI_begin_line(0x6a)
	.dwattr $C$DW$13, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$13, DW_AT_decl_file("../LED.c")
	.dwattr $C$DW$13, DW_AT_decl_line(0x6a)
	.dwattr $C$DW$13, DW_AT_decl_column(0x06)
	.dwattr $C$DW$13, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../LED.c",line 106,column 27,is_stmt,address LED_GreenToggle,isa 1

	.dwfde $C$DW$CIE, LED_GreenToggle
;----------------------------------------------------------------------
; 106 | void LED_GreenToggle(void){                                            
;----------------------------------------------------------------------

;*****************************************************************************
;* FUNCTION NAME: LED_GreenToggle                                            *
;*                                                                           *
;*   Regs Modified     : A1,A2                                               *
;*   Regs Used         : A1,A2,LR                                            *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
LED_GreenToggle:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwpsn	file "../LED.c",line 107,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 107 | PF3 ^= 0x08;                                                           
;----------------------------------------------------------------------
        LDR       A2, $C$CON16          ; [DPU_3_PIPE] |107| 
        LDR       A1, [A2, #0]          ; [DPU_3_PIPE] |107| 
        EOR       A1, A1, #8            ; [DPU_3_PIPE] |107| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |107| 
	.dwpsn	file "../LED.c",line 108,column 1,is_stmt,isa 1
$C$DW$14	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$14, DW_AT_low_pc(0x00)
	.dwattr $C$DW$14, DW_AT_TI_return
        BX        LR                    ; [DPU_3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$13, DW_AT_TI_end_file("../LED.c")
	.dwattr $C$DW$13, DW_AT_TI_end_line(0x6c)
	.dwattr $C$DW$13, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$13

	.sect	".text"
	.clink
	.thumbfunc LED_GreenOn
	.thumb
	.global	LED_GreenOn

$C$DW$15	.dwtag  DW_TAG_subprogram, DW_AT_name("LED_GreenOn")
	.dwattr $C$DW$15, DW_AT_low_pc(LED_GreenOn)
	.dwattr $C$DW$15, DW_AT_high_pc(0x00)
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("LED_GreenOn")
	.dwattr $C$DW$15, DW_AT_external
	.dwattr $C$DW$15, DW_AT_TI_begin_file("../LED.c")
	.dwattr $C$DW$15, DW_AT_TI_begin_line(0x71)
	.dwattr $C$DW$15, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$15, DW_AT_decl_file("../LED.c")
	.dwattr $C$DW$15, DW_AT_decl_line(0x71)
	.dwattr $C$DW$15, DW_AT_decl_column(0x06)
	.dwattr $C$DW$15, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../LED.c",line 113,column 23,is_stmt,address LED_GreenOn,isa 1

	.dwfde $C$DW$CIE, LED_GreenOn
;----------------------------------------------------------------------
; 113 | void LED_GreenOn(void){                                                
;----------------------------------------------------------------------

;*****************************************************************************
;* FUNCTION NAME: LED_GreenOn                                                *
;*                                                                           *
;*   Regs Modified     : A1,A2,SR                                            *
;*   Regs Used         : A1,A2,LR,SR                                         *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
LED_GreenOn:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwpsn	file "../LED.c",line 114,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 114 | PF3 = 0x08;                                                            
;----------------------------------------------------------------------
        LDR       A2, $C$CON16          ; [DPU_3_PIPE] |114| 
        MOVS      A1, #8                ; [DPU_3_PIPE] |114| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |114| 
	.dwpsn	file "../LED.c",line 115,column 1,is_stmt,isa 1
$C$DW$16	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$16, DW_AT_low_pc(0x00)
	.dwattr $C$DW$16, DW_AT_TI_return
        BX        LR                    ; [DPU_3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$15, DW_AT_TI_end_file("../LED.c")
	.dwattr $C$DW$15, DW_AT_TI_end_line(0x73)
	.dwattr $C$DW$15, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$15

	.sect	".text"
	.clink
	.thumbfunc LED_GreenOff
	.thumb
	.global	LED_GreenOff

$C$DW$17	.dwtag  DW_TAG_subprogram, DW_AT_name("LED_GreenOff")
	.dwattr $C$DW$17, DW_AT_low_pc(LED_GreenOff)
	.dwattr $C$DW$17, DW_AT_high_pc(0x00)
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("LED_GreenOff")
	.dwattr $C$DW$17, DW_AT_external
	.dwattr $C$DW$17, DW_AT_TI_begin_file("../LED.c")
	.dwattr $C$DW$17, DW_AT_TI_begin_line(0x78)
	.dwattr $C$DW$17, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$17, DW_AT_decl_file("../LED.c")
	.dwattr $C$DW$17, DW_AT_decl_line(0x78)
	.dwattr $C$DW$17, DW_AT_decl_column(0x06)
	.dwattr $C$DW$17, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../LED.c",line 120,column 24,is_stmt,address LED_GreenOff,isa 1

	.dwfde $C$DW$CIE, LED_GreenOff
;----------------------------------------------------------------------
; 120 | void LED_GreenOff(void){                                               
;----------------------------------------------------------------------

;*****************************************************************************
;* FUNCTION NAME: LED_GreenOff                                               *
;*                                                                           *
;*   Regs Modified     : A1,A2,SR                                            *
;*   Regs Used         : A1,A2,LR,SR                                         *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
LED_GreenOff:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwpsn	file "../LED.c",line 121,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 121 | PF3 = 0x00;                                                            
;----------------------------------------------------------------------
        LDR       A2, $C$CON16          ; [DPU_3_PIPE] |121| 
        MOVS      A1, #0                ; [DPU_3_PIPE] |121| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |121| 
	.dwpsn	file "../LED.c",line 122,column 1,is_stmt,isa 1
$C$DW$18	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$18, DW_AT_low_pc(0x00)
	.dwattr $C$DW$18, DW_AT_TI_return
        BX        LR                    ; [DPU_3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$17, DW_AT_TI_end_file("../LED.c")
	.dwattr $C$DW$17, DW_AT_TI_end_line(0x7a)
	.dwattr $C$DW$17, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$17

;******************************************************************************
;* CONSTANT TABLE                                                             *
;******************************************************************************
	.sect	".text"
	.align	4
||$C$CON1||:	.bits	1074783752,32
	.align	4
||$C$CON2||:	.bits	1074784776,32
	.align	4
||$C$CON3||:	.bits	1073894688,32
	.align	4
||$C$CON4||:	.bits	1280262987,32
	.align	4
||$C$CON5||:	.bits	1073894692,32
	.align	4
||$C$CON6||:	.bits	1073894696,32
	.align	4
||$C$CON7||:	.bits	1073894700,32
	.align	4
||$C$CON8||:	.bits	1073894400,32
	.align	4
||$C$CON9||:	.bits	1073894432,32
	.align	4
||$C$CON10||:	.bits	1073894672,32
	.align	4
||$C$CON11||:	.bits	1073894684,32
	.align	4
||$C$CON12||:	.bits	1073893380,32
	.align	4
||$C$CON13||:	.bits	1073893440,32
	.align	4
||$C$CON14||:	.bits	1073893384,32
	.align	4
||$C$CON15||:	.bits	1073893392,32
	.align	4
||$C$CON16||:	.bits	1073893408,32

;******************************************************************************
;* BUILD ATTRIBUTES                                                           *
;******************************************************************************
	.battr "aeabi", Tag_File, 1, Tag_ABI_PCS_wchar_t(2)
	.battr "aeabi", Tag_File, 1, Tag_ABI_FP_rounding(0)
	.battr "aeabi", Tag_File, 1, Tag_ABI_FP_denormal(0)
	.battr "aeabi", Tag_File, 1, Tag_ABI_FP_exceptions(0)
	.battr "aeabi", Tag_File, 1, Tag_ABI_FP_number_model(1)
	.battr "aeabi", Tag_File, 1, Tag_ABI_enum_size(0)
	.battr "aeabi", Tag_File, 1, Tag_ABI_optimization_goals(5)
	.battr "aeabi", Tag_File, 1, Tag_ABI_FP_optimization_goals(0)
	.battr "TI", Tag_File, 1, Tag_Bitfield_layout(2)
	.battr "TI", Tag_File, 1, Tag_FP_interface(1)

;******************************************************************************
;* TYPE INFORMATION                                                           *
;******************************************************************************
$C$DW$T$2	.dwtag  DW_TAG_unspecified_type
	.dwattr $C$DW$T$2, DW_AT_name("void")
$C$DW$T$4	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$4, DW_AT_encoding(DW_ATE_boolean)
	.dwattr $C$DW$T$4, DW_AT_name("bool")
	.dwattr $C$DW$T$4, DW_AT_byte_size(0x01)
$C$DW$T$5	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$5, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$5, DW_AT_name("signed char")
	.dwattr $C$DW$T$5, DW_AT_byte_size(0x01)
$C$DW$T$20	.dwtag  DW_TAG_typedef, DW_AT_name("int8_t")
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$5)
	.dwattr $C$DW$T$20, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$20, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x1d)
$C$DW$T$21	.dwtag  DW_TAG_typedef, DW_AT_name("int_least8_t")
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$21, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0x37)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x17)
$C$DW$T$6	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$6, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$6, DW_AT_byte_size(0x01)
$C$DW$T$22	.dwtag  DW_TAG_typedef, DW_AT_name("uint8_t")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$22, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$22, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x1c)
$C$DW$T$23	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least8_t")
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$23, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$23, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$23, DW_AT_decl_line(0x38)
	.dwattr $C$DW$T$23, DW_AT_decl_column(0x16)
$C$DW$T$7	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$7, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$7, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$7, DW_AT_byte_size(0x02)
$C$DW$T$8	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$8, DW_AT_name("short")
	.dwattr $C$DW$T$8, DW_AT_byte_size(0x02)
$C$DW$T$24	.dwtag  DW_TAG_typedef, DW_AT_name("int16_t")
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$24, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$24, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$24, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$T$24, DW_AT_decl_column(0x1d)
$C$DW$T$25	.dwtag  DW_TAG_typedef, DW_AT_name("int_least16_t")
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$25, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$25, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$25, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$T$25, DW_AT_decl_column(0x17)
$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x02)
$C$DW$T$26	.dwtag  DW_TAG_typedef, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$26, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$26, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$26, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$T$26, DW_AT_decl_column(0x1c)
$C$DW$T$27	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least16_t")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$27, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$27, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$27, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$T$27, DW_AT_decl_column(0x16)
$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x04)
$C$DW$T$28	.dwtag  DW_TAG_typedef, DW_AT_name("int32_t")
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$28, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$28, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$28, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$T$28, DW_AT_decl_column(0x1d)
$C$DW$T$29	.dwtag  DW_TAG_typedef, DW_AT_name("int_fast16_t")
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$29, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$29, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$29, DW_AT_decl_line(0x47)
	.dwattr $C$DW$T$29, DW_AT_decl_column(0x17)
$C$DW$T$30	.dwtag  DW_TAG_typedef, DW_AT_name("int_fast32_t")
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$30, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$30, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$30, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$T$30, DW_AT_decl_column(0x17)
$C$DW$T$31	.dwtag  DW_TAG_typedef, DW_AT_name("int_fast8_t")
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$31, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$31, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$31, DW_AT_decl_line(0x45)
	.dwattr $C$DW$T$31, DW_AT_decl_column(0x17)
$C$DW$T$32	.dwtag  DW_TAG_typedef, DW_AT_name("int_least32_t")
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$32, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$32, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$32, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$T$32, DW_AT_decl_column(0x17)
$C$DW$T$33	.dwtag  DW_TAG_typedef, DW_AT_name("intptr_t")
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$33, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$33, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$33, DW_AT_decl_line(0x52)
	.dwattr $C$DW$T$33, DW_AT_decl_column(0x1a)
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x04)
$C$DW$T$34	.dwtag  DW_TAG_typedef, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$34, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$34, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$34, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$T$34, DW_AT_decl_column(0x1c)
$C$DW$T$38	.dwtag  DW_TAG_typedef, DW_AT_name("uint_fast16_t")
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$38, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$38, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$38, DW_AT_decl_line(0x48)
	.dwattr $C$DW$T$38, DW_AT_decl_column(0x16)
$C$DW$T$39	.dwtag  DW_TAG_typedef, DW_AT_name("uint_fast32_t")
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$39, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$39, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$39, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$T$39, DW_AT_decl_column(0x16)
$C$DW$T$40	.dwtag  DW_TAG_typedef, DW_AT_name("uint_fast8_t")
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$40, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$40, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$40, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$40, DW_AT_decl_column(0x16)
$C$DW$T$41	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least32_t")
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$41, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$41, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$41, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$T$41, DW_AT_decl_column(0x16)
$C$DW$T$42	.dwtag  DW_TAG_typedef, DW_AT_name("uintptr_t")
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$42, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$42, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$42, DW_AT_decl_line(0x53)
	.dwattr $C$DW$T$42, DW_AT_decl_column(0x1a)
$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x04)
$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x04)
$C$DW$T$14	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$14, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$14, DW_AT_name("long long")
	.dwattr $C$DW$T$14, DW_AT_byte_size(0x08)
$C$DW$T$43	.dwtag  DW_TAG_typedef, DW_AT_name("int64_t")
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$T$43, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$43, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$43, DW_AT_decl_line(0x32)
	.dwattr $C$DW$T$43, DW_AT_decl_column(0x21)
$C$DW$T$44	.dwtag  DW_TAG_typedef, DW_AT_name("int_fast64_t")
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$T$44, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$44, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$44, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$T$44, DW_AT_decl_column(0x17)
$C$DW$T$45	.dwtag  DW_TAG_typedef, DW_AT_name("int_least64_t")
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$T$45, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$45, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$45, DW_AT_decl_line(0x40)
	.dwattr $C$DW$T$45, DW_AT_decl_column(0x17)
$C$DW$T$46	.dwtag  DW_TAG_typedef, DW_AT_name("intmax_t")
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$T$46, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$46, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$46, DW_AT_decl_line(0x56)
	.dwattr $C$DW$T$46, DW_AT_decl_column(0x20)
$C$DW$T$15	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$15, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$15, DW_AT_name("unsigned long long")
	.dwattr $C$DW$T$15, DW_AT_byte_size(0x08)
$C$DW$T$47	.dwtag  DW_TAG_typedef, DW_AT_name("uint64_t")
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$T$15)
	.dwattr $C$DW$T$47, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$47, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$47, DW_AT_decl_line(0x33)
	.dwattr $C$DW$T$47, DW_AT_decl_column(0x20)
$C$DW$T$48	.dwtag  DW_TAG_typedef, DW_AT_name("uint_fast64_t")
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$T$48, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$48, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$48, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$T$48, DW_AT_decl_column(0x16)
$C$DW$T$49	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least64_t")
	.dwattr $C$DW$T$49, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$T$49, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$49, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$49, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$49, DW_AT_decl_column(0x16)
$C$DW$T$50	.dwtag  DW_TAG_typedef, DW_AT_name("uintmax_t")
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$T$15)
	.dwattr $C$DW$T$50, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$50, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$50, DW_AT_decl_line(0x57)
	.dwattr $C$DW$T$50, DW_AT_decl_column(0x20)
$C$DW$T$16	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$16, DW_AT_name("float")
	.dwattr $C$DW$T$16, DW_AT_byte_size(0x04)
$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x08)
$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x08)
$C$DW$T$52	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$52, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$52, DW_AT_address_class(0x20)
$C$DW$T$53	.dwtag  DW_TAG_typedef, DW_AT_name("__builtin_va_list")
	.dwattr $C$DW$T$53, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$T$53, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$53, DW_AT_decl_file("../LED.c")
	.dwattr $C$DW$T$53, DW_AT_decl_line(0x7a)
	.dwattr $C$DW$T$53, DW_AT_decl_column(0x01)
	.dwattr $C$DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF CIE ENTRIES                                           *
;***************************************************************

$C$DW$CIE	.dwcie 14
	.dwcfi	cfa_register, 13
	.dwcfi	cfa_offset, 0
	.dwcfi	undefined, 0
	.dwcfi	undefined, 1
	.dwcfi	undefined, 2
	.dwcfi	undefined, 3
	.dwcfi	same_value, 4
	.dwcfi	same_value, 5
	.dwcfi	same_value, 6
	.dwcfi	same_value, 7
	.dwcfi	same_value, 8
	.dwcfi	same_value, 9
	.dwcfi	same_value, 10
	.dwcfi	same_value, 11
	.dwcfi	undefined, 12
	.dwcfi	undefined, 13
	.dwcfi	undefined, 14
	.dwcfi	undefined, 14
	.dwcfi	undefined, 7
	.dwcfi	undefined, 64
	.dwcfi	undefined, 65
	.dwcfi	undefined, 66
	.dwcfi	undefined, 67
	.dwcfi	undefined, 68
	.dwcfi	undefined, 69
	.dwcfi	undefined, 70
	.dwcfi	undefined, 71
	.dwcfi	undefined, 72
	.dwcfi	undefined, 73
	.dwcfi	undefined, 74
	.dwcfi	undefined, 75
	.dwcfi	undefined, 76
	.dwcfi	undefined, 77
	.dwcfi	undefined, 78
	.dwcfi	undefined, 79
	.dwcfi	same_value, 80
	.dwcfi	same_value, 81
	.dwcfi	same_value, 82
	.dwcfi	same_value, 83
	.dwcfi	same_value, 84
	.dwcfi	same_value, 85
	.dwcfi	same_value, 86
	.dwcfi	same_value, 87
	.dwcfi	same_value, 88
	.dwcfi	same_value, 89
	.dwcfi	same_value, 90
	.dwcfi	same_value, 91
	.dwcfi	same_value, 92
	.dwcfi	same_value, 93
	.dwcfi	same_value, 94
	.dwcfi	same_value, 95
	.dwendentry
	.dwendtag $C$DW$CU

