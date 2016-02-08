;******************************************************************************
;* TI ARM C/C++ Codegen                                             PC v5.2.4 *
;* Date/Time created: Sat Sep 12 07:55:34 2015                                *
;******************************************************************************
	.compiler_opts --abi=eabi --arm_vmrs_si_workaround=off --code_state=16 --diag_wrap=off --disable_dual_state --embedded_constants=on --endian=little --float_support=FPv4SPD16 --hll_source=on --object_format=elf --silicon_version=7M4 --symdebug:dwarf --symdebug:dwarf_version=3 --unaligned_access=on 
	.thumb

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../EdgeInterrupt.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TI ARM C/C++ Codegen PC v5.2.4 Copyright (c) 1996-2015 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Dropbox\ArmBook\LaunchPad\ValvanoWareTM4C123\EdgeInterrupt_4C123\Debug")

$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("EnableInterrupts")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("EnableInterrupts")
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("../EdgeInterrupt.c")
	.dwattr $C$DW$1, DW_AT_decl_line(0x26)
	.dwattr $C$DW$1, DW_AT_decl_column(0x06)

$C$DW$2	.dwtag  DW_TAG_subprogram, DW_AT_name("WaitForInterrupt")
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("WaitForInterrupt")
	.dwattr $C$DW$2, DW_AT_declaration
	.dwattr $C$DW$2, DW_AT_external
	.dwattr $C$DW$2, DW_AT_decl_file("../EdgeInterrupt.c")
	.dwattr $C$DW$2, DW_AT_decl_line(0x29)
	.dwattr $C$DW$2, DW_AT_decl_column(0x06)
	.global	FallingEdges
	.data
	.align	4
	.elfsym	FallingEdges,SYM_SIZE(4)
FallingEdges:
	.bits	0,32			; FallingEdges @ 0

$C$DW$3	.dwtag  DW_TAG_variable, DW_AT_name("FallingEdges")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("FallingEdges")
	.dwattr $C$DW$3, DW_AT_location[DW_OP_addr FallingEdges]
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$3, DW_AT_external
	.dwattr $C$DW$3, DW_AT_decl_file("../EdgeInterrupt.c")
	.dwattr $C$DW$3, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$3, DW_AT_decl_column(0x13)
;	C:\ti\ccsv6\tools\compiler\ti-cgt-arm_5.2.4\bin\armacpia.exe -@C:\\Users\\VALVAN~1\\AppData\\Local\\Temp\\0708012 
	.sect	".text"
	.clink
	.thumbfunc EdgeCounter_Init
	.thumb
	.global	EdgeCounter_Init

$C$DW$4	.dwtag  DW_TAG_subprogram, DW_AT_name("EdgeCounter_Init")
	.dwattr $C$DW$4, DW_AT_low_pc(EdgeCounter_Init)
	.dwattr $C$DW$4, DW_AT_high_pc(0x00)
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("EdgeCounter_Init")
	.dwattr $C$DW$4, DW_AT_external
	.dwattr $C$DW$4, DW_AT_TI_begin_file("../EdgeInterrupt.c")
	.dwattr $C$DW$4, DW_AT_TI_begin_line(0x2e)
	.dwattr $C$DW$4, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$4, DW_AT_decl_file("../EdgeInterrupt.c")
	.dwattr $C$DW$4, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$4, DW_AT_decl_column(0x06)
	.dwattr $C$DW$4, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../EdgeInterrupt.c",line 46,column 28,is_stmt,address EdgeCounter_Init,isa 1

	.dwfde $C$DW$CIE, EdgeCounter_Init
;----------------------------------------------------------------------
;  46 | void EdgeCounter_Init(void){                                           
;----------------------------------------------------------------------

;*****************************************************************************
;* FUNCTION NAME: EdgeCounter_Init                                           *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2,D2_hi, *
;*                           D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,D7_hi,   *
;*                           FPEXC,FPSCR                                     *
;*   Regs Used         : A1,A2,A3,A4,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2,D2_hi, *
;*                           D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,D7_hi,   *
;*                           FPEXC,FPSCR                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                   *
;*****************************************************************************
EdgeCounter_Init:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        PUSH      {A4, LR}              ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 3, -8
	.dwpsn	file "../EdgeInterrupt.c",line 47,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  47 | SYSCTL_RCGCGPIO_R |= 0x00000020; // (a) activate clock for port F      
;----------------------------------------------------------------------
        LDR       A2, $C$CON1           ; [DPU_3_PIPE] |47| 
        LDR       A1, [A2, #0]          ; [DPU_3_PIPE] |47| 
        ORR       A1, A1, #32           ; [DPU_3_PIPE] |47| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |47| 
	.dwpsn	file "../EdgeInterrupt.c",line 48,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  48 | FallingEdges = 0;             // (b) initialize counter                
;----------------------------------------------------------------------
        LDR       A2, $C$CON2           ; [DPU_3_PIPE] |48| 
        MOVS      A1, #0                ; [DPU_3_PIPE] |48| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |48| 
	.dwpsn	file "../EdgeInterrupt.c",line 49,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  49 | GPIO_PORTF_DIR_R &= ~0x10;    // (c) make PF4 in (built-in button)     
;----------------------------------------------------------------------
        LDR       A2, $C$CON3           ; [DPU_3_PIPE] |49| 
        LDR       A1, [A2, #0]          ; [DPU_3_PIPE] |49| 
        BIC       A1, A1, #16           ; [DPU_3_PIPE] |49| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |49| 
	.dwpsn	file "../EdgeInterrupt.c",line 50,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  50 | GPIO_PORTF_AFSEL_R &= ~0x10;  //     disable alt funct on PF4          
;----------------------------------------------------------------------
        LDR       A2, $C$CON4           ; [DPU_3_PIPE] |50| 
        LDR       A1, [A2, #0]          ; [DPU_3_PIPE] |50| 
        BIC       A1, A1, #16           ; [DPU_3_PIPE] |50| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |50| 
	.dwpsn	file "../EdgeInterrupt.c",line 51,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  51 | GPIO_PORTF_DEN_R |= 0x10;     //     enable digital I/O on PF4         
;----------------------------------------------------------------------
        LDR       A2, $C$CON5           ; [DPU_3_PIPE] |51| 
        LDR       A1, [A2, #0]          ; [DPU_3_PIPE] |51| 
        ORR       A1, A1, #16           ; [DPU_3_PIPE] |51| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |51| 
	.dwpsn	file "../EdgeInterrupt.c",line 52,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  52 | GPIO_PORTF_PCTL_R &= ~0x000F0000; // configure PF4 as GPIO             
;----------------------------------------------------------------------
        LDR       A2, $C$CON6           ; [DPU_3_PIPE] |52| 
        LDR       A1, [A2, #0]          ; [DPU_3_PIPE] |52| 
        BIC       A1, A1, #983040       ; [DPU_3_PIPE] |52| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |52| 
	.dwpsn	file "../EdgeInterrupt.c",line 53,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  53 | GPIO_PORTF_AMSEL_R = 0;       //     disable analog functionality on PF
;----------------------------------------------------------------------
        LDR       A2, $C$CON7           ; [DPU_3_PIPE] |53| 
        MOVS      A1, #0                ; [DPU_3_PIPE] |53| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |53| 
	.dwpsn	file "../EdgeInterrupt.c",line 54,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  54 | GPIO_PORTF_PUR_R |= 0x10;     //     enable weak pull-up on PF4        
;----------------------------------------------------------------------
        LDR       A2, $C$CON8           ; [DPU_3_PIPE] |54| 
        LDR       A1, [A2, #0]          ; [DPU_3_PIPE] |54| 
        ORR       A1, A1, #16           ; [DPU_3_PIPE] |54| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |54| 
	.dwpsn	file "../EdgeInterrupt.c",line 55,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  55 | GPIO_PORTF_IS_R &= ~0x10;     // (d) PF4 is edge-sensitive             
;----------------------------------------------------------------------
        LDR       A2, $C$CON9           ; [DPU_3_PIPE] |55| 
        LDR       A1, [A2, #0]          ; [DPU_3_PIPE] |55| 
        BIC       A1, A1, #16           ; [DPU_3_PIPE] |55| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |55| 
	.dwpsn	file "../EdgeInterrupt.c",line 56,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  56 | GPIO_PORTF_IBE_R &= ~0x10;    //     PF4 is not both edges             
;----------------------------------------------------------------------
        LDR       A2, $C$CON10          ; [DPU_3_PIPE] |56| 
        LDR       A1, [A2, #0]          ; [DPU_3_PIPE] |56| 
        BIC       A1, A1, #16           ; [DPU_3_PIPE] |56| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |56| 
	.dwpsn	file "../EdgeInterrupt.c",line 57,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  57 | GPIO_PORTF_IEV_R &= ~0x10;    //     PF4 falling edge event            
;----------------------------------------------------------------------
        LDR       A2, $C$CON11          ; [DPU_3_PIPE] |57| 
        LDR       A1, [A2, #0]          ; [DPU_3_PIPE] |57| 
        BIC       A1, A1, #16           ; [DPU_3_PIPE] |57| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |57| 
	.dwpsn	file "../EdgeInterrupt.c",line 58,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  58 | GPIO_PORTF_ICR_R = 0x10;      // (e) clear flag4                       
;----------------------------------------------------------------------
        LDR       A2, $C$CON12          ; [DPU_3_PIPE] |58| 
        MOVS      A1, #16               ; [DPU_3_PIPE] |58| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |58| 
	.dwpsn	file "../EdgeInterrupt.c",line 59,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  59 | GPIO_PORTF_IM_R |= 0x10;      // (f) arm interrupt on PF4 *** No IME bi
;     | t as mentioned in Book ***                                             
;----------------------------------------------------------------------
        LDR       A2, $C$CON13          ; [DPU_3_PIPE] |59| 
        LDR       A1, [A2, #0]          ; [DPU_3_PIPE] |59| 
        ORR       A1, A1, #16           ; [DPU_3_PIPE] |59| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |59| 
	.dwpsn	file "../EdgeInterrupt.c",line 60,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  60 | NVIC_PRI7_R = (NVIC_PRI7_R&0xFF00FFFF)|0x00A00000; // (g) priority 5   
;----------------------------------------------------------------------
        LDR       A1, $C$CON14          ; [DPU_3_PIPE] |60| 
        LDR       A2, $C$CON14          ; [DPU_3_PIPE] |60| 
        LDR       A1, [A1, #0]          ; [DPU_3_PIPE] |60| 
        BIC       A1, A1, #16711680     ; [DPU_3_PIPE] |60| 
        ORR       A1, A1, #10485760     ; [DPU_3_PIPE] |60| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |60| 
	.dwpsn	file "../EdgeInterrupt.c",line 61,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  61 | NVIC_EN0_R = 0x40000000;      // (h) enable interrupt 30 in NVIC       
;----------------------------------------------------------------------
        LDR       A2, $C$CON15          ; [DPU_3_PIPE] |61| 
        MOV       A1, #1073741824       ; [DPU_3_PIPE] |61| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |61| 
	.dwpsn	file "../EdgeInterrupt.c",line 62,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  62 | EnableInterrupts();           // (i) Clears the I bit                  
;----------------------------------------------------------------------
$C$DW$5	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$5, DW_AT_low_pc(0x00)
	.dwattr $C$DW$5, DW_AT_name("EnableInterrupts")
	.dwattr $C$DW$5, DW_AT_TI_call
        BL        EnableInterrupts      ; [DPU_3_PIPE] |62| 
        ; CALL OCCURS {EnableInterrupts }  ; [] |62| 
	.dwpsn	file "../EdgeInterrupt.c",line 63,column 1,is_stmt,isa 1
$C$DW$6	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$6, DW_AT_low_pc(0x00)
	.dwattr $C$DW$6, DW_AT_TI_return
        POP       {A4, PC}              ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$4, DW_AT_TI_end_file("../EdgeInterrupt.c")
	.dwattr $C$DW$4, DW_AT_TI_end_line(0x3f)
	.dwattr $C$DW$4, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$4

	.sect	".text"
	.clink
	.thumbfunc GPIOPortF_Handler
	.thumb
	.global	GPIOPortF_Handler

$C$DW$7	.dwtag  DW_TAG_subprogram, DW_AT_name("GPIOPortF_Handler")
	.dwattr $C$DW$7, DW_AT_low_pc(GPIOPortF_Handler)
	.dwattr $C$DW$7, DW_AT_high_pc(0x00)
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("GPIOPortF_Handler")
	.dwattr $C$DW$7, DW_AT_external
	.dwattr $C$DW$7, DW_AT_TI_begin_file("../EdgeInterrupt.c")
	.dwattr $C$DW$7, DW_AT_TI_begin_line(0x40)
	.dwattr $C$DW$7, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$7, DW_AT_decl_file("../EdgeInterrupt.c")
	.dwattr $C$DW$7, DW_AT_decl_line(0x40)
	.dwattr $C$DW$7, DW_AT_decl_column(0x06)
	.dwattr $C$DW$7, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../EdgeInterrupt.c",line 64,column 29,is_stmt,address GPIOPortF_Handler,isa 1

	.dwfde $C$DW$CIE, GPIOPortF_Handler
;----------------------------------------------------------------------
;  64 | void GPIOPortF_Handler(void){                                          
;----------------------------------------------------------------------

;*****************************************************************************
;* FUNCTION NAME: GPIOPortF_Handler                                          *
;*                                                                           *
;*   Regs Modified     : A1,A2,SR                                            *
;*   Regs Used         : A1,A2,LR,SR                                         *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
GPIOPortF_Handler:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwpsn	file "../EdgeInterrupt.c",line 65,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  65 | GPIO_PORTF_ICR_R = 0x10;      // acknowledge flag4                     
;----------------------------------------------------------------------
        LDR       A2, $C$CON12          ; [DPU_3_PIPE] |65| 
        MOVS      A1, #16               ; [DPU_3_PIPE] |65| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |65| 
	.dwpsn	file "../EdgeInterrupt.c",line 66,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  66 | FallingEdges = FallingEdges + 1;                                       
;----------------------------------------------------------------------
        LDR       A1, $C$CON2           ; [DPU_3_PIPE] |66| 
        LDR       A2, $C$CON2           ; [DPU_3_PIPE] |66| 
        LDR       A1, [A1, #0]          ; [DPU_3_PIPE] |66| 
        ADDS      A1, A1, #1            ; [DPU_3_PIPE] |66| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |66| 
	.dwpsn	file "../EdgeInterrupt.c",line 67,column 1,is_stmt,isa 1
$C$DW$8	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$8, DW_AT_low_pc(0x00)
	.dwattr $C$DW$8, DW_AT_TI_return
        BX        LR                    ; [DPU_3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$7, DW_AT_TI_end_file("../EdgeInterrupt.c")
	.dwattr $C$DW$7, DW_AT_TI_end_line(0x43)
	.dwattr $C$DW$7, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$7

	.sect	".text"
	.clink
	.thumbfunc main
	.thumb
	.global	main

$C$DW$9	.dwtag  DW_TAG_subprogram, DW_AT_name("main")
	.dwattr $C$DW$9, DW_AT_low_pc(main)
	.dwattr $C$DW$9, DW_AT_high_pc(0x00)
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("main")
	.dwattr $C$DW$9, DW_AT_external
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$9, DW_AT_TI_begin_file("../EdgeInterrupt.c")
	.dwattr $C$DW$9, DW_AT_TI_begin_line(0x46)
	.dwattr $C$DW$9, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$9, DW_AT_decl_file("../EdgeInterrupt.c")
	.dwattr $C$DW$9, DW_AT_decl_line(0x46)
	.dwattr $C$DW$9, DW_AT_decl_column(0x05)
	.dwattr $C$DW$9, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../EdgeInterrupt.c",line 70,column 15,is_stmt,address main,isa 1

	.dwfde $C$DW$CIE, main
;----------------------------------------------------------------------
;  70 | int main(void){                                                        
;----------------------------------------------------------------------

;*****************************************************************************
;* FUNCTION NAME: main                                                       *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2,D2_hi, *
;*                           D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,D7_hi,   *
;*                           FPEXC,FPSCR                                     *
;*   Regs Used         : A1,A2,A3,A4,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2,D2_hi, *
;*                           D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,D7_hi,   *
;*                           FPEXC,FPSCR                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                   *
;*****************************************************************************
main:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        PUSH      {A4, LR}              ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 3, -8
	.dwpsn	file "../EdgeInterrupt.c",line 71,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  71 | EdgeCounter_Init();           // initialize GPIO Port F interrupt      
;----------------------------------------------------------------------
$C$DW$10	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$10, DW_AT_low_pc(0x00)
	.dwattr $C$DW$10, DW_AT_name("EdgeCounter_Init")
	.dwattr $C$DW$10, DW_AT_TI_call
        BL        EdgeCounter_Init      ; [DPU_3_PIPE] |71| 
        ; CALL OCCURS {EdgeCounter_Init }  ; [] |71| 
	.dwpsn	file "../EdgeInterrupt.c",line 72,column 9,is_stmt,isa 1
;----------------------------------------------------------------------
;  72 | while(1){                                                              
;----------------------------------------------------------------------
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L1||
;*
;*   Loop source line                : 72
;*   Loop closing brace source line  : 74
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L1||:    
	.dwpsn	file "../EdgeInterrupt.c",line 73,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
;  73 | WaitForInterrupt();                                                    
;----------------------------------------------------------------------
$C$DW$11	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$11, DW_AT_low_pc(0x00)
	.dwattr $C$DW$11, DW_AT_name("WaitForInterrupt")
	.dwattr $C$DW$11, DW_AT_TI_call
        BL        WaitForInterrupt      ; [DPU_3_PIPE] |73| 
        ; CALL OCCURS {WaitForInterrupt }  ; [] |73| 
	.dwpsn	file "../EdgeInterrupt.c",line 72,column 9,is_stmt,isa 1
        B         ||$C$L1||             ; [DPU_3_PIPE] |72| 
        ; BRANCH OCCURS {||$C$L1||}      ; [] |72| 
;* --------------------------------------------------------------------------*
	.dwattr $C$DW$9, DW_AT_TI_end_file("../EdgeInterrupt.c")
	.dwattr $C$DW$9, DW_AT_TI_end_line(0x4b)
	.dwattr $C$DW$9, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$9

;******************************************************************************
;* CONSTANT TABLE                                                             *
;******************************************************************************
	.sect	".text"
	.align	4
||$C$CON1||:	.bits	1074783752,32
	.align	4
||$C$CON2||:	.bits	FallingEdges,32
	.align	4
||$C$CON3||:	.bits	1073894400,32
	.align	4
||$C$CON4||:	.bits	1073894432,32
	.align	4
||$C$CON5||:	.bits	1073894684,32
	.align	4
||$C$CON6||:	.bits	1073894700,32
	.align	4
||$C$CON7||:	.bits	1073894696,32
	.align	4
||$C$CON8||:	.bits	1073894672,32
	.align	4
||$C$CON9||:	.bits	1073894404,32
	.align	4
||$C$CON10||:	.bits	1073894408,32
	.align	4
||$C$CON11||:	.bits	1073894412,32
	.align	4
||$C$CON12||:	.bits	1073894428,32
	.align	4
||$C$CON13||:	.bits	1073894416,32
	.align	4
||$C$CON14||:	.bits	-536812516,32
	.align	4
||$C$CON15||:	.bits	-536813312,32
;*****************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                             *
;*****************************************************************************
	.global	EnableInterrupts
	.global	WaitForInterrupt

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
$C$DW$T$21	.dwtag  DW_TAG_typedef, DW_AT_name("int8_t")
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$5)
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$21, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x1d)
$C$DW$T$22	.dwtag  DW_TAG_typedef, DW_AT_name("int_least8_t")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$22, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$22, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0x37)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x17)
$C$DW$T$6	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$6, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$6, DW_AT_byte_size(0x01)
$C$DW$T$23	.dwtag  DW_TAG_typedef, DW_AT_name("uint8_t")
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$23, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$23, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$23, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$T$23, DW_AT_decl_column(0x1c)
$C$DW$T$24	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least8_t")
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$24, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$24, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$24, DW_AT_decl_line(0x38)
	.dwattr $C$DW$T$24, DW_AT_decl_column(0x16)
$C$DW$T$7	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$7, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$7, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$7, DW_AT_byte_size(0x02)
$C$DW$T$8	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$8, DW_AT_name("short")
	.dwattr $C$DW$T$8, DW_AT_byte_size(0x02)
$C$DW$T$25	.dwtag  DW_TAG_typedef, DW_AT_name("int16_t")
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$25, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$25, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$25, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$T$25, DW_AT_decl_column(0x1d)
$C$DW$T$26	.dwtag  DW_TAG_typedef, DW_AT_name("int_least16_t")
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$26, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$26, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$26, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$T$26, DW_AT_decl_column(0x17)
$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x02)
$C$DW$T$27	.dwtag  DW_TAG_typedef, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$27, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$27, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$27, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$T$27, DW_AT_decl_column(0x1c)
$C$DW$T$28	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least16_t")
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$28, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$28, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$28, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$T$28, DW_AT_decl_column(0x16)
$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x04)
$C$DW$T$30	.dwtag  DW_TAG_typedef, DW_AT_name("int32_t")
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$30, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$30, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$30, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$T$30, DW_AT_decl_column(0x1d)
$C$DW$T$31	.dwtag  DW_TAG_typedef, DW_AT_name("int_fast16_t")
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$31, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$31, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$31, DW_AT_decl_line(0x47)
	.dwattr $C$DW$T$31, DW_AT_decl_column(0x17)
$C$DW$T$32	.dwtag  DW_TAG_typedef, DW_AT_name("int_fast32_t")
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$32, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$32, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$32, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$T$32, DW_AT_decl_column(0x17)
$C$DW$T$33	.dwtag  DW_TAG_typedef, DW_AT_name("int_fast8_t")
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$33, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$33, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$33, DW_AT_decl_line(0x45)
	.dwattr $C$DW$T$33, DW_AT_decl_column(0x17)
$C$DW$T$34	.dwtag  DW_TAG_typedef, DW_AT_name("int_least32_t")
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$34, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$34, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$34, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$T$34, DW_AT_decl_column(0x17)
$C$DW$T$35	.dwtag  DW_TAG_typedef, DW_AT_name("intptr_t")
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$35, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$35, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$35, DW_AT_decl_line(0x52)
	.dwattr $C$DW$T$35, DW_AT_decl_column(0x1a)
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x04)
$C$DW$T$36	.dwtag  DW_TAG_typedef, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$36, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$36, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$36, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$T$36, DW_AT_decl_column(0x1c)
$C$DW$T$37	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$36)
$C$DW$T$39	.dwtag  DW_TAG_typedef, DW_AT_name("uint_fast16_t")
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$T$39, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$39, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$39, DW_AT_decl_line(0x48)
	.dwattr $C$DW$T$39, DW_AT_decl_column(0x16)
$C$DW$T$40	.dwtag  DW_TAG_typedef, DW_AT_name("uint_fast32_t")
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$T$40, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$40, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$40, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$T$40, DW_AT_decl_column(0x16)
$C$DW$T$41	.dwtag  DW_TAG_typedef, DW_AT_name("uint_fast8_t")
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$T$41, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$41, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$41, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$41, DW_AT_decl_column(0x16)
$C$DW$T$42	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least32_t")
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$T$42, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$42, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$42, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$T$42, DW_AT_decl_column(0x16)
$C$DW$T$43	.dwtag  DW_TAG_typedef, DW_AT_name("uintptr_t")
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$43, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$43, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$43, DW_AT_decl_line(0x53)
	.dwattr $C$DW$T$43, DW_AT_decl_column(0x1a)
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
$C$DW$T$44	.dwtag  DW_TAG_typedef, DW_AT_name("int64_t")
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$T$44, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$44, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$44, DW_AT_decl_line(0x32)
	.dwattr $C$DW$T$44, DW_AT_decl_column(0x21)
$C$DW$T$45	.dwtag  DW_TAG_typedef, DW_AT_name("int_fast64_t")
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$T$45, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$45, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$45, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$T$45, DW_AT_decl_column(0x17)
$C$DW$T$46	.dwtag  DW_TAG_typedef, DW_AT_name("int_least64_t")
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$T$46, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$46, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$46, DW_AT_decl_line(0x40)
	.dwattr $C$DW$T$46, DW_AT_decl_column(0x17)
$C$DW$T$47	.dwtag  DW_TAG_typedef, DW_AT_name("intmax_t")
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$T$47, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$47, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$47, DW_AT_decl_line(0x56)
	.dwattr $C$DW$T$47, DW_AT_decl_column(0x20)
$C$DW$T$15	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$15, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$15, DW_AT_name("unsigned long long")
	.dwattr $C$DW$T$15, DW_AT_byte_size(0x08)
$C$DW$T$48	.dwtag  DW_TAG_typedef, DW_AT_name("uint64_t")
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$15)
	.dwattr $C$DW$T$48, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$48, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$48, DW_AT_decl_line(0x33)
	.dwattr $C$DW$T$48, DW_AT_decl_column(0x20)
$C$DW$T$49	.dwtag  DW_TAG_typedef, DW_AT_name("uint_fast64_t")
	.dwattr $C$DW$T$49, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$T$49, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$49, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$49, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$T$49, DW_AT_decl_column(0x16)
$C$DW$T$50	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least64_t")
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$T$50, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$50, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$50, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$50, DW_AT_decl_column(0x16)
$C$DW$T$51	.dwtag  DW_TAG_typedef, DW_AT_name("uintmax_t")
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$T$15)
	.dwattr $C$DW$T$51, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$51, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$51, DW_AT_decl_line(0x57)
	.dwattr $C$DW$T$51, DW_AT_decl_column(0x20)
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
$C$DW$T$53	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$53, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$53, DW_AT_address_class(0x20)
$C$DW$T$54	.dwtag  DW_TAG_typedef, DW_AT_name("__builtin_va_list")
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$T$54, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$54, DW_AT_decl_file("../EdgeInterrupt.c")
	.dwattr $C$DW$T$54, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$T$54, DW_AT_decl_column(0x01)
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

