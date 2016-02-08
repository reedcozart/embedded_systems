;******************************************************************************
;* TI ARM C/C++ Codegen                                             PC v5.2.4 *
;* Date/Time created: Thu Sep 17 23:20:49 2015                                *
;******************************************************************************
	.compiler_opts --abi=eabi --arm_vmrs_si_workaround=off --code_state=16 --diag_wrap=off --disable_dual_state --embedded_constants=on --endian=little --float_support=FPv4SPD16 --hll_source=on --object_format=elf --silicon_version=7M4 --symdebug:dwarf --symdebug:dwarf_version=3 --unaligned_access=on 
	.thumb

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../UART.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TI ARM C/C++ Codegen PC v5.2.4 Copyright (c) 1996-2015 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Dropbox\ArmBook\LaunchPad\ValvanoWareTM4C123\ESP8266_4C123\Debug")

$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("StartCritical")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("StartCritical")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("..\FIFO.h")
	.dwattr $C$DW$1, DW_AT_decl_line(0x1f)
	.dwattr $C$DW$1, DW_AT_decl_column(0x06)

$C$DW$2	.dwtag  DW_TAG_subprogram, DW_AT_name("EndCritical")
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("EndCritical")
	.dwattr $C$DW$2, DW_AT_declaration
	.dwattr $C$DW$2, DW_AT_external
	.dwattr $C$DW$2, DW_AT_decl_file("..\FIFO.h")
	.dwattr $C$DW$2, DW_AT_decl_line(0x20)
	.dwattr $C$DW$2, DW_AT_decl_column(0x06)
$C$DW$3	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$12)
	.dwendtag $C$DW$2

	.global	RxPutI
	.common	RxPutI,4,4
$C$DW$4	.dwtag  DW_TAG_variable, DW_AT_name("RxPutI")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("RxPutI")
	.dwattr $C$DW$4, DW_AT_location[DW_OP_addr RxPutI]
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$4, DW_AT_external
	.dwattr $C$DW$4, DW_AT_decl_file("../UART.c")
	.dwattr $C$DW$4, DW_AT_decl_line(0x47)
	.dwattr $C$DW$4, DW_AT_decl_column(0x01)
	.global	RxGetI
	.common	RxGetI,4,4
$C$DW$5	.dwtag  DW_TAG_variable, DW_AT_name("RxGetI")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("RxGetI")
	.dwattr $C$DW$5, DW_AT_location[DW_OP_addr RxGetI]
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$5, DW_AT_external
	.dwattr $C$DW$5, DW_AT_decl_file("../UART.c")
	.dwattr $C$DW$5, DW_AT_decl_line(0x47)
	.dwattr $C$DW$5, DW_AT_decl_column(0x01)
	.common	RxFifo,16,1
$C$DW$6	.dwtag  DW_TAG_variable, DW_AT_name("RxFifo")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("RxFifo")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$6, DW_AT_location[DW_OP_addr RxFifo]
	.dwattr $C$DW$6, DW_AT_decl_file("../UART.c")
	.dwattr $C$DW$6, DW_AT_decl_line(0x47)
	.dwattr $C$DW$6, DW_AT_decl_column(0x01)
	.global	TxPutI
	.common	TxPutI,4,4
$C$DW$7	.dwtag  DW_TAG_variable, DW_AT_name("TxPutI")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("TxPutI")
	.dwattr $C$DW$7, DW_AT_location[DW_OP_addr TxPutI]
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$7, DW_AT_external
	.dwattr $C$DW$7, DW_AT_decl_file("../UART.c")
	.dwattr $C$DW$7, DW_AT_decl_line(0x48)
	.dwattr $C$DW$7, DW_AT_decl_column(0x01)
	.global	TxGetI
	.common	TxGetI,4,4
$C$DW$8	.dwtag  DW_TAG_variable, DW_AT_name("TxGetI")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("TxGetI")
	.dwattr $C$DW$8, DW_AT_location[DW_OP_addr TxGetI]
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$8, DW_AT_external
	.dwattr $C$DW$8, DW_AT_decl_file("../UART.c")
	.dwattr $C$DW$8, DW_AT_decl_line(0x48)
	.dwattr $C$DW$8, DW_AT_decl_column(0x01)
TxFifo:	.usect	".bss:TxFifo",1024,1
$C$DW$9	.dwtag  DW_TAG_variable, DW_AT_name("TxFifo")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("TxFifo")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$9, DW_AT_location[DW_OP_addr TxFifo]
	.dwattr $C$DW$9, DW_AT_decl_file("../UART.c")
	.dwattr $C$DW$9, DW_AT_decl_line(0x48)
	.dwattr $C$DW$9, DW_AT_decl_column(0x01)
;	C:\ti\ccsv6\tools\compiler\ti-cgt-arm_5.2.4\bin\armacpia.exe -@C:\\Users\\VALVAN~1\\AppData\\Local\\Temp\\0586812 
	.sect	".text"
	.clink
	.thumbfunc RxFifo_Init
	.thumb
	.global	RxFifo_Init

$C$DW$10	.dwtag  DW_TAG_subprogram, DW_AT_name("RxFifo_Init")
	.dwattr $C$DW$10, DW_AT_low_pc(RxFifo_Init)
	.dwattr $C$DW$10, DW_AT_high_pc(0x00)
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("RxFifo_Init")
	.dwattr $C$DW$10, DW_AT_external
	.dwattr $C$DW$10, DW_AT_TI_begin_file("../UART.c")
	.dwattr $C$DW$10, DW_AT_TI_begin_line(0x47)
	.dwattr $C$DW$10, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$10, DW_AT_decl_file("../UART.c")
	.dwattr $C$DW$10, DW_AT_decl_line(0x47)
	.dwattr $C$DW$10, DW_AT_decl_column(0x01)
	.dwattr $C$DW$10, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../UART.c",line 71,column 1,is_stmt,address RxFifo_Init,isa 1

	.dwfde $C$DW$CIE, RxFifo_Init

;*****************************************************************************
;* FUNCTION NAME: RxFifo_Init                                                *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2,D2_hi, *
;*                           D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,D7_hi,   *
;*                           FPEXC,FPSCR                                     *
;*   Regs Used         : A1,A2,A3,A4,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2,D2_hi, *
;*                           D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,D7_hi,   *
;*                           FPEXC,FPSCR                                     *
;*   Local Frame Size  : 0 Args + 4 Auto + 4 Save = 8 byte                   *
;*****************************************************************************
RxFifo_Init:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        PUSH      {A4, LR}              ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 3, -8
$C$DW$11	.dwtag  DW_TAG_variable, DW_AT_name("sr")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("sr")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$11, DW_AT_location[DW_OP_breg13 0]
;----------------------------------------------------------------------
;  71 | AddIndexFifo(Rx, FIFOSIZE, char, FIFOSUCCESS, FIFOFAIL)                
;----------------------------------------------------------------------
$C$DW$12	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$12, DW_AT_low_pc(0x00)
	.dwattr $C$DW$12, DW_AT_name("StartCritical")
	.dwattr $C$DW$12, DW_AT_TI_call
        BL        StartCritical         ; [DPU_3_PIPE] |71| 
        ; CALL OCCURS {StartCritical }   ; [] |71| 
        LDR       A3, $C$CON2           ; [DPU_3_PIPE] |71| 
        STR       A1, [SP, #0]          ; [DPU_3_PIPE] |71| 
        MOVS      A2, #0                ; [DPU_3_PIPE] |71| 
        STR       A2, [A3, #0]          ; [DPU_3_PIPE] |71| 
        LDR       A1, $C$CON1           ; [DPU_3_PIPE] |71| 
        STR       A2, [A1, #0]          ; [DPU_3_PIPE] |71| 
        LDR       A1, [SP, #0]          ; [DPU_3_PIPE] |71| 
$C$DW$13	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$13, DW_AT_low_pc(0x00)
	.dwattr $C$DW$13, DW_AT_name("EndCritical")
	.dwattr $C$DW$13, DW_AT_TI_call
        BL        EndCritical           ; [DPU_3_PIPE] |71| 
        ; CALL OCCURS {EndCritical }     ; [] |71| 
$C$DW$14	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$14, DW_AT_low_pc(0x00)
	.dwattr $C$DW$14, DW_AT_TI_return
        POP       {A4, PC}              ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$10, DW_AT_TI_end_file("../UART.c")
	.dwattr $C$DW$10, DW_AT_TI_end_line(0x47)
	.dwattr $C$DW$10, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$10

	.sect	".text"
	.clink
	.thumbfunc RxFifo_Put
	.thumb
	.global	RxFifo_Put

$C$DW$15	.dwtag  DW_TAG_subprogram, DW_AT_name("RxFifo_Put")
	.dwattr $C$DW$15, DW_AT_low_pc(RxFifo_Put)
	.dwattr $C$DW$15, DW_AT_high_pc(0x00)
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("RxFifo_Put")
	.dwattr $C$DW$15, DW_AT_external
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$15, DW_AT_TI_begin_file("../UART.c")
	.dwattr $C$DW$15, DW_AT_TI_begin_line(0x47)
	.dwattr $C$DW$15, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$15, DW_AT_decl_file("../UART.c")
	.dwattr $C$DW$15, DW_AT_decl_line(0x47)
	.dwattr $C$DW$15, DW_AT_decl_column(0x01)
	.dwattr $C$DW$15, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "../UART.c",line 71,column 1,is_stmt,address RxFifo_Put,isa 1

	.dwfde $C$DW$CIE, RxFifo_Put
$C$DW$16	.dwtag  DW_TAG_formal_parameter, DW_AT_name("data")
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("data")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$16, DW_AT_location[DW_OP_reg0]

;*****************************************************************************
;* FUNCTION NAME: RxFifo_Put                                                 *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V1,SP,SR                                *
;*   Regs Used         : A1,A2,A3,A4,V1,SP,LR,SR                             *
;*   Local Frame Size  : 0 Args + 4 Auto + 8 Save = 12 byte                  *
;*****************************************************************************
RxFifo_Put:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        PUSH      {A3, A4, V1, LR}      ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 16
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 4, -8
	.dwcfi	save_reg_to_mem, 3, -12
	.dwcfi	save_reg_to_mem, 2, -16
$C$DW$17	.dwtag  DW_TAG_variable, DW_AT_name("data")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("data")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$17, DW_AT_location[DW_OP_breg13 0]
;----------------------------------------------------------------------
;  71 | AddIndexFifo(Rx, FIFOSIZE, char, FIFOSUCCESS, FIFOFAIL)                
;----------------------------------------------------------------------
        LDR       A3, $C$CON2           ; [DPU_3_PIPE] |71| 
        LDR       A2, $C$CON1           ; [DPU_3_PIPE] |71| 
        LDR       A3, [A3, #0]          ; [DPU_3_PIPE] |71| 
        LDR       A2, [A2, #0]          ; [DPU_3_PIPE] |71| 
        STRB      A1, [SP, #0]          ; [DPU_3_PIPE] |71| 
        SUBS      A2, A2, A3            ; [DPU_3_PIPE] |71| 
        BICS      A2, A2, #15           ; [DPU_3_PIPE] |71| 
        BEQ       ||$C$L1||             ; [DPU_3_PIPE] |71| 
        ; BRANCHCC OCCURS {||$C$L1||}    ; [] |71| 
;* --------------------------------------------------------------------------*
        MOVS      A1, #0                ; [DPU_3_PIPE] |71| 
        B         ||$C$L2||             ; [DPU_3_PIPE] |71| 
        ; BRANCH OCCURS {||$C$L2||}      ; [] |71| 
;* --------------------------------------------------------------------------*
||$C$L1||:    
        LDR       A1, $C$CON1           ; [DPU_3_PIPE] |71| 
        LDR       A3, $C$CON1           ; [DPU_3_PIPE] |71| 
        LDR       V1, $C$CON3           ; [DPU_3_PIPE] |71| 
        LDRB      A4, [SP, #0]          ; [DPU_3_PIPE] |71| 
        LDR       A1, [A1, #0]          ; [DPU_3_PIPE] |71| 
        LDR       A2, [A3, #0]          ; [DPU_3_PIPE] |71| 
        AND       A1, A1, #15           ; [DPU_3_PIPE] |71| 
        ADDS      A2, A2, #1            ; [DPU_3_PIPE] |71| 
        STRB      A4, [V1, +A1]         ; [DPU_3_PIPE] |71| 
        MOVS      A1, #1                ; [DPU_3_PIPE] |71| 
        STR       A2, [A3, #0]          ; [DPU_3_PIPE] |71| 
;* --------------------------------------------------------------------------*
||$C$L2||:    
$C$DW$18	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$18, DW_AT_low_pc(0x00)
	.dwattr $C$DW$18, DW_AT_TI_return
        POP       {A3, A4, V1, PC}      ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$15, DW_AT_TI_end_file("../UART.c")
	.dwattr $C$DW$15, DW_AT_TI_end_line(0x47)
	.dwattr $C$DW$15, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$15

	.sect	".text"
	.clink
	.thumbfunc RxFifo_Get
	.thumb
	.global	RxFifo_Get

$C$DW$19	.dwtag  DW_TAG_subprogram, DW_AT_name("RxFifo_Get")
	.dwattr $C$DW$19, DW_AT_low_pc(RxFifo_Get)
	.dwattr $C$DW$19, DW_AT_high_pc(0x00)
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("RxFifo_Get")
	.dwattr $C$DW$19, DW_AT_external
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$19, DW_AT_TI_begin_file("../UART.c")
	.dwattr $C$DW$19, DW_AT_TI_begin_line(0x47)
	.dwattr $C$DW$19, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$19, DW_AT_decl_file("../UART.c")
	.dwattr $C$DW$19, DW_AT_decl_line(0x47)
	.dwattr $C$DW$19, DW_AT_decl_column(0x01)
	.dwattr $C$DW$19, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../UART.c",line 71,column 1,is_stmt,address RxFifo_Get,isa 1

	.dwfde $C$DW$CIE, RxFifo_Get
$C$DW$20	.dwtag  DW_TAG_formal_parameter, DW_AT_name("datapt")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("datapt")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$20, DW_AT_location[DW_OP_reg0]

;*****************************************************************************
;* FUNCTION NAME: RxFifo_Get                                                 *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,SP,SR                                      *
;*   Regs Used         : A1,A2,A3,SP,LR,SR                                   *
;*   Local Frame Size  : 0 Args + 4 Auto + 0 Save = 4 byte                   *
;*****************************************************************************
RxFifo_Get:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       SP, SP, #8            ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 8
$C$DW$21	.dwtag  DW_TAG_variable, DW_AT_name("datapt")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("datapt")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$21, DW_AT_location[DW_OP_breg13 0]
;----------------------------------------------------------------------
;  71 | AddIndexFifo(Rx, FIFOSIZE, char, FIFOSUCCESS, FIFOFAIL)                
;----------------------------------------------------------------------
        LDR       A2, $C$CON2           ; [DPU_3_PIPE] |71| 
        LDR       A3, $C$CON1           ; [DPU_3_PIPE] |71| 
        LDR       A2, [A2, #0]          ; [DPU_3_PIPE] |71| 
        LDR       A3, [A3, #0]          ; [DPU_3_PIPE] |71| 
        STR       A1, [SP, #0]          ; [DPU_3_PIPE] |71| 
        CMP       A2, A3                ; [DPU_3_PIPE] |71| 
        BNE       ||$C$L3||             ; [DPU_3_PIPE] |71| 
        ; BRANCHCC OCCURS {||$C$L3||}    ; [] |71| 
;* --------------------------------------------------------------------------*
        MOVS      A1, #0                ; [DPU_3_PIPE] |71| 
        B         ||$C$L4||             ; [DPU_3_PIPE] |71| 
        ; BRANCH OCCURS {||$C$L4||}      ; [] |71| 
;* --------------------------------------------------------------------------*
||$C$L3||:    
        LDR       A1, $C$CON2           ; [DPU_3_PIPE] |71| 
        LDR       A3, $C$CON3           ; [DPU_3_PIPE] |71| 
        LDR       A2, [SP, #0]          ; [DPU_3_PIPE] |71| 
        LDR       A1, [A1, #0]          ; [DPU_3_PIPE] |71| 
        AND       A1, A1, #15           ; [DPU_3_PIPE] |71| 
        LDRB      A1, [A3, +A1]         ; [DPU_3_PIPE] |71| 
        LDR       A3, $C$CON2           ; [DPU_3_PIPE] |71| 
        STRB      A1, [A2, #0]          ; [DPU_3_PIPE] |71| 
        LDR       A2, [A3, #0]          ; [DPU_3_PIPE] |71| 
        MOVS      A1, #1                ; [DPU_3_PIPE] |71| 
        ADDS      A2, A2, #1            ; [DPU_3_PIPE] |71| 
        STR       A2, [A3, #0]          ; [DPU_3_PIPE] |71| 
;* --------------------------------------------------------------------------*
||$C$L4||:    
        ADD       SP, SP, #8            ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
$C$DW$22	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$22, DW_AT_low_pc(0x00)
	.dwattr $C$DW$22, DW_AT_TI_return
        BX        LR                    ; [DPU_3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$19, DW_AT_TI_end_file("../UART.c")
	.dwattr $C$DW$19, DW_AT_TI_end_line(0x47)
	.dwattr $C$DW$19, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$19

	.sect	".text"
	.clink
	.thumbfunc RxFifo_Size
	.thumb
	.global	RxFifo_Size

$C$DW$23	.dwtag  DW_TAG_subprogram, DW_AT_name("RxFifo_Size")
	.dwattr $C$DW$23, DW_AT_low_pc(RxFifo_Size)
	.dwattr $C$DW$23, DW_AT_high_pc(0x00)
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("RxFifo_Size")
	.dwattr $C$DW$23, DW_AT_external
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$23, DW_AT_TI_begin_file("../UART.c")
	.dwattr $C$DW$23, DW_AT_TI_begin_line(0x47)
	.dwattr $C$DW$23, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$23, DW_AT_decl_file("../UART.c")
	.dwattr $C$DW$23, DW_AT_decl_line(0x47)
	.dwattr $C$DW$23, DW_AT_decl_column(0x01)
	.dwattr $C$DW$23, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../UART.c",line 71,column 1,is_stmt,address RxFifo_Size,isa 1

	.dwfde $C$DW$CIE, RxFifo_Size

;*****************************************************************************
;* FUNCTION NAME: RxFifo_Size                                                *
;*                                                                           *
;*   Regs Modified     : A1,A2,SR                                            *
;*   Regs Used         : A1,A2,LR,SR                                         *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
RxFifo_Size:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
;----------------------------------------------------------------------
;  71 | AddIndexFifo(Rx, FIFOSIZE, char, FIFOSUCCESS, FIFOFAIL)                
;----------------------------------------------------------------------
        LDR       A2, $C$CON2           ; [DPU_3_PIPE] |71| 
        LDR       A1, $C$CON1           ; [DPU_3_PIPE] |71| 
        LDR       A2, [A2, #0]          ; [DPU_3_PIPE] |71| 
        LDR       A1, [A1, #0]          ; [DPU_3_PIPE] |71| 
        SUBS      A1, A1, A2            ; [DPU_3_PIPE] |71| 
        UXTH      A1, A1                ; [DPU_3_PIPE] |71| 
$C$DW$24	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$24, DW_AT_low_pc(0x00)
	.dwattr $C$DW$24, DW_AT_TI_return
        BX        LR                    ; [DPU_3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$23, DW_AT_TI_end_file("../UART.c")
	.dwattr $C$DW$23, DW_AT_TI_end_line(0x47)
	.dwattr $C$DW$23, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$23

	.sect	".text"
	.clink
	.thumbfunc TxFifo_Init
	.thumb
	.global	TxFifo_Init

$C$DW$25	.dwtag  DW_TAG_subprogram, DW_AT_name("TxFifo_Init")
	.dwattr $C$DW$25, DW_AT_low_pc(TxFifo_Init)
	.dwattr $C$DW$25, DW_AT_high_pc(0x00)
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("TxFifo_Init")
	.dwattr $C$DW$25, DW_AT_external
	.dwattr $C$DW$25, DW_AT_TI_begin_file("../UART.c")
	.dwattr $C$DW$25, DW_AT_TI_begin_line(0x48)
	.dwattr $C$DW$25, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$25, DW_AT_decl_file("../UART.c")
	.dwattr $C$DW$25, DW_AT_decl_line(0x48)
	.dwattr $C$DW$25, DW_AT_decl_column(0x01)
	.dwattr $C$DW$25, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../UART.c",line 72,column 1,is_stmt,address TxFifo_Init,isa 1

	.dwfde $C$DW$CIE, TxFifo_Init

;*****************************************************************************
;* FUNCTION NAME: TxFifo_Init                                                *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2,D2_hi, *
;*                           D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,D7_hi,   *
;*                           FPEXC,FPSCR                                     *
;*   Regs Used         : A1,A2,A3,A4,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2,D2_hi, *
;*                           D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,D7_hi,   *
;*                           FPEXC,FPSCR                                     *
;*   Local Frame Size  : 0 Args + 4 Auto + 4 Save = 8 byte                   *
;*****************************************************************************
TxFifo_Init:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        PUSH      {A4, LR}              ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 3, -8
$C$DW$26	.dwtag  DW_TAG_variable, DW_AT_name("sr")
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("sr")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$26, DW_AT_location[DW_OP_breg13 0]
;----------------------------------------------------------------------
;  72 | AddIndexFifo(Tx, 1024, char, FIFOSUCCESS, FIFOFAIL)                    
;----------------------------------------------------------------------
$C$DW$27	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$27, DW_AT_low_pc(0x00)
	.dwattr $C$DW$27, DW_AT_name("StartCritical")
	.dwattr $C$DW$27, DW_AT_TI_call
        BL        StartCritical         ; [DPU_3_PIPE] |72| 
        ; CALL OCCURS {StartCritical }   ; [] |72| 
        LDR       A3, $C$CON5           ; [DPU_3_PIPE] |72| 
        STR       A1, [SP, #0]          ; [DPU_3_PIPE] |72| 
        MOVS      A2, #0                ; [DPU_3_PIPE] |72| 
        STR       A2, [A3, #0]          ; [DPU_3_PIPE] |72| 
        LDR       A1, $C$CON4           ; [DPU_3_PIPE] |72| 
        STR       A2, [A1, #0]          ; [DPU_3_PIPE] |72| 
        LDR       A1, [SP, #0]          ; [DPU_3_PIPE] |72| 
$C$DW$28	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$28, DW_AT_low_pc(0x00)
	.dwattr $C$DW$28, DW_AT_name("EndCritical")
	.dwattr $C$DW$28, DW_AT_TI_call
        BL        EndCritical           ; [DPU_3_PIPE] |72| 
        ; CALL OCCURS {EndCritical }     ; [] |72| 
$C$DW$29	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$29, DW_AT_low_pc(0x00)
	.dwattr $C$DW$29, DW_AT_TI_return
        POP       {A4, PC}              ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$25, DW_AT_TI_end_file("../UART.c")
	.dwattr $C$DW$25, DW_AT_TI_end_line(0x48)
	.dwattr $C$DW$25, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$25

	.sect	".text"
	.clink
	.thumbfunc TxFifo_Put
	.thumb
	.global	TxFifo_Put

$C$DW$30	.dwtag  DW_TAG_subprogram, DW_AT_name("TxFifo_Put")
	.dwattr $C$DW$30, DW_AT_low_pc(TxFifo_Put)
	.dwattr $C$DW$30, DW_AT_high_pc(0x00)
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("TxFifo_Put")
	.dwattr $C$DW$30, DW_AT_external
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$30, DW_AT_TI_begin_file("../UART.c")
	.dwattr $C$DW$30, DW_AT_TI_begin_line(0x48)
	.dwattr $C$DW$30, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$30, DW_AT_decl_file("../UART.c")
	.dwattr $C$DW$30, DW_AT_decl_line(0x48)
	.dwattr $C$DW$30, DW_AT_decl_column(0x01)
	.dwattr $C$DW$30, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "../UART.c",line 72,column 1,is_stmt,address TxFifo_Put,isa 1

	.dwfde $C$DW$CIE, TxFifo_Put
$C$DW$31	.dwtag  DW_TAG_formal_parameter, DW_AT_name("data")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("data")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$31, DW_AT_location[DW_OP_reg0]

;*****************************************************************************
;* FUNCTION NAME: TxFifo_Put                                                 *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V1,SP,SR                                *
;*   Regs Used         : A1,A2,A3,A4,V1,SP,LR,SR                             *
;*   Local Frame Size  : 0 Args + 4 Auto + 8 Save = 12 byte                  *
;*****************************************************************************
TxFifo_Put:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        PUSH      {A3, A4, V1, LR}      ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 16
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 4, -8
	.dwcfi	save_reg_to_mem, 3, -12
	.dwcfi	save_reg_to_mem, 2, -16
$C$DW$32	.dwtag  DW_TAG_variable, DW_AT_name("data")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("data")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_breg13 0]
;----------------------------------------------------------------------
;  72 | AddIndexFifo(Tx, 1024, char, FIFOSUCCESS, FIFOFAIL)                    
;----------------------------------------------------------------------
        LDR       A3, $C$CON5           ; [DPU_3_PIPE] |72| 
        LDR       A2, $C$CON4           ; [DPU_3_PIPE] |72| 
        LDR       A3, [A3, #0]          ; [DPU_3_PIPE] |72| 
        LDR       A2, [A2, #0]          ; [DPU_3_PIPE] |72| 
        STRB      A1, [SP, #0]          ; [DPU_3_PIPE] |72| 
        SUBS      A2, A2, A3            ; [DPU_3_PIPE] |72| 
        BFC       A2, #0, #10           ; [DPU_3_PIPE] |72| 
        CBZ       A2, ||$C$L5||         ; [] 
        ; BRANCHCC OCCURS {||$C$L5||}    ; [] |72| 
;* --------------------------------------------------------------------------*
        MOVS      A1, #0                ; [DPU_3_PIPE] |72| 
        B         ||$C$L6||             ; [DPU_3_PIPE] |72| 
        ; BRANCH OCCURS {||$C$L6||}      ; [] |72| 
;* --------------------------------------------------------------------------*
||$C$L5||:    
        LDR       A1, $C$CON4           ; [DPU_3_PIPE] |72| 
        LDR       A3, $C$CON4           ; [DPU_3_PIPE] |72| 
        LDR       V1, $C$CON6           ; [DPU_3_PIPE] |72| 
        LDRB      A4, [SP, #0]          ; [DPU_3_PIPE] |72| 
        LDR       A1, [A1, #0]          ; [DPU_3_PIPE] |72| 
        LDR       A2, [A3, #0]          ; [DPU_3_PIPE] |72| 
        BFC       A1, #10, #22          ; [DPU_3_PIPE] |72| 
        ADDS      A2, A2, #1            ; [DPU_3_PIPE] |72| 
        STRB      A4, [V1, +A1]         ; [DPU_3_PIPE] |72| 
        MOVS      A1, #1                ; [DPU_3_PIPE] |72| 
        STR       A2, [A3, #0]          ; [DPU_3_PIPE] |72| 
;* --------------------------------------------------------------------------*
||$C$L6||:    
$C$DW$33	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$33, DW_AT_low_pc(0x00)
	.dwattr $C$DW$33, DW_AT_TI_return
        POP       {A3, A4, V1, PC}      ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$30, DW_AT_TI_end_file("../UART.c")
	.dwattr $C$DW$30, DW_AT_TI_end_line(0x48)
	.dwattr $C$DW$30, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$30

	.sect	".text"
	.clink
	.thumbfunc TxFifo_Get
	.thumb
	.global	TxFifo_Get

$C$DW$34	.dwtag  DW_TAG_subprogram, DW_AT_name("TxFifo_Get")
	.dwattr $C$DW$34, DW_AT_low_pc(TxFifo_Get)
	.dwattr $C$DW$34, DW_AT_high_pc(0x00)
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("TxFifo_Get")
	.dwattr $C$DW$34, DW_AT_external
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$34, DW_AT_TI_begin_file("../UART.c")
	.dwattr $C$DW$34, DW_AT_TI_begin_line(0x48)
	.dwattr $C$DW$34, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$34, DW_AT_decl_file("../UART.c")
	.dwattr $C$DW$34, DW_AT_decl_line(0x48)
	.dwattr $C$DW$34, DW_AT_decl_column(0x01)
	.dwattr $C$DW$34, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../UART.c",line 72,column 1,is_stmt,address TxFifo_Get,isa 1

	.dwfde $C$DW$CIE, TxFifo_Get
$C$DW$35	.dwtag  DW_TAG_formal_parameter, DW_AT_name("datapt")
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("datapt")
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$35, DW_AT_location[DW_OP_reg0]

;*****************************************************************************
;* FUNCTION NAME: TxFifo_Get                                                 *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,SP,SR                                      *
;*   Regs Used         : A1,A2,A3,SP,LR,SR                                   *
;*   Local Frame Size  : 0 Args + 4 Auto + 0 Save = 4 byte                   *
;*****************************************************************************
TxFifo_Get:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       SP, SP, #8            ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 8
$C$DW$36	.dwtag  DW_TAG_variable, DW_AT_name("datapt")
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("datapt")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$36, DW_AT_location[DW_OP_breg13 0]
;----------------------------------------------------------------------
;  72 | AddIndexFifo(Tx, 1024, char, FIFOSUCCESS, FIFOFAIL)                    
;----------------------------------------------------------------------
        LDR       A2, $C$CON5           ; [DPU_3_PIPE] |72| 
        LDR       A3, $C$CON4           ; [DPU_3_PIPE] |72| 
        LDR       A2, [A2, #0]          ; [DPU_3_PIPE] |72| 
        LDR       A3, [A3, #0]          ; [DPU_3_PIPE] |72| 
        STR       A1, [SP, #0]          ; [DPU_3_PIPE] |72| 
        CMP       A2, A3                ; [DPU_3_PIPE] |72| 
        BNE       ||$C$L7||             ; [DPU_3_PIPE] |72| 
        ; BRANCHCC OCCURS {||$C$L7||}    ; [] |72| 
;* --------------------------------------------------------------------------*
        MOVS      A1, #0                ; [DPU_3_PIPE] |72| 
        B         ||$C$L8||             ; [DPU_3_PIPE] |72| 
        ; BRANCH OCCURS {||$C$L8||}      ; [] |72| 
;* --------------------------------------------------------------------------*
||$C$L7||:    
        LDR       A1, $C$CON5           ; [DPU_3_PIPE] |72| 
        LDR       A3, $C$CON6           ; [DPU_3_PIPE] |72| 
        LDR       A2, [SP, #0]          ; [DPU_3_PIPE] |72| 
        LDR       A1, [A1, #0]          ; [DPU_3_PIPE] |72| 
        BFC       A1, #10, #22          ; [DPU_3_PIPE] |72| 
        LDRB      A1, [A3, +A1]         ; [DPU_3_PIPE] |72| 
        LDR       A3, $C$CON5           ; [DPU_3_PIPE] |72| 
        STRB      A1, [A2, #0]          ; [DPU_3_PIPE] |72| 
        LDR       A2, [A3, #0]          ; [DPU_3_PIPE] |72| 
        MOVS      A1, #1                ; [DPU_3_PIPE] |72| 
        ADDS      A2, A2, #1            ; [DPU_3_PIPE] |72| 
        STR       A2, [A3, #0]          ; [DPU_3_PIPE] |72| 
;* --------------------------------------------------------------------------*
||$C$L8||:    
        ADD       SP, SP, #8            ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
$C$DW$37	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$37, DW_AT_low_pc(0x00)
	.dwattr $C$DW$37, DW_AT_TI_return
        BX        LR                    ; [DPU_3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$34, DW_AT_TI_end_file("../UART.c")
	.dwattr $C$DW$34, DW_AT_TI_end_line(0x48)
	.dwattr $C$DW$34, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$34

	.sect	".text"
	.clink
	.thumbfunc TxFifo_Size
	.thumb
	.global	TxFifo_Size

$C$DW$38	.dwtag  DW_TAG_subprogram, DW_AT_name("TxFifo_Size")
	.dwattr $C$DW$38, DW_AT_low_pc(TxFifo_Size)
	.dwattr $C$DW$38, DW_AT_high_pc(0x00)
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("TxFifo_Size")
	.dwattr $C$DW$38, DW_AT_external
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$38, DW_AT_TI_begin_file("../UART.c")
	.dwattr $C$DW$38, DW_AT_TI_begin_line(0x48)
	.dwattr $C$DW$38, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$38, DW_AT_decl_file("../UART.c")
	.dwattr $C$DW$38, DW_AT_decl_line(0x48)
	.dwattr $C$DW$38, DW_AT_decl_column(0x01)
	.dwattr $C$DW$38, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../UART.c",line 72,column 1,is_stmt,address TxFifo_Size,isa 1

	.dwfde $C$DW$CIE, TxFifo_Size

;*****************************************************************************
;* FUNCTION NAME: TxFifo_Size                                                *
;*                                                                           *
;*   Regs Modified     : A1,A2,SR                                            *
;*   Regs Used         : A1,A2,LR,SR                                         *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
TxFifo_Size:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
;----------------------------------------------------------------------
;  72 | AddIndexFifo(Tx, 1024, char, FIFOSUCCESS, FIFOFAIL)                    
;----------------------------------------------------------------------
        LDR       A2, $C$CON5           ; [DPU_3_PIPE] |72| 
        LDR       A1, $C$CON4           ; [DPU_3_PIPE] |72| 
        LDR       A2, [A2, #0]          ; [DPU_3_PIPE] |72| 
        LDR       A1, [A1, #0]          ; [DPU_3_PIPE] |72| 
        SUBS      A1, A1, A2            ; [DPU_3_PIPE] |72| 
        UXTH      A1, A1                ; [DPU_3_PIPE] |72| 
$C$DW$39	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$39, DW_AT_low_pc(0x00)
	.dwattr $C$DW$39, DW_AT_TI_return
        BX        LR                    ; [DPU_3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$38, DW_AT_TI_end_file("../UART.c")
	.dwattr $C$DW$38, DW_AT_TI_end_line(0x48)
	.dwattr $C$DW$38, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$38

	.sect	".text"
	.clink
	.thumbfunc UART_Init
	.thumb
	.global	UART_Init

$C$DW$40	.dwtag  DW_TAG_subprogram, DW_AT_name("UART_Init")
	.dwattr $C$DW$40, DW_AT_low_pc(UART_Init)
	.dwattr $C$DW$40, DW_AT_high_pc(0x00)
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("UART_Init")
	.dwattr $C$DW$40, DW_AT_external
	.dwattr $C$DW$40, DW_AT_TI_begin_file("../UART.c")
	.dwattr $C$DW$40, DW_AT_TI_begin_line(0x4c)
	.dwattr $C$DW$40, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$40, DW_AT_decl_file("../UART.c")
	.dwattr $C$DW$40, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$40, DW_AT_decl_column(0x06)
	.dwattr $C$DW$40, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../UART.c",line 76,column 21,is_stmt,address UART_Init,isa 1

	.dwfde $C$DW$CIE, UART_Init
;----------------------------------------------------------------------
;  76 | void UART_Init(void){                                                  
;----------------------------------------------------------------------

;*****************************************************************************
;* FUNCTION NAME: UART_Init                                                  *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2,D2_hi, *
;*                           D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,D7_hi,   *
;*                           FPEXC,FPSCR                                     *
;*   Regs Used         : A1,A2,A3,A4,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2,D2_hi, *
;*                           D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,D7_hi,   *
;*                           FPEXC,FPSCR                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                   *
;*****************************************************************************
UART_Init:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        PUSH      {A4, LR}              ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 3, -8
	.dwpsn	file "../UART.c",line 77,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  77 | SYSCTL_RCGCUART_R |= 0x01;            // activate UART0                
;----------------------------------------------------------------------
        LDR       A2, $C$CON7           ; [DPU_3_PIPE] |77| 
        LDR       A1, [A2, #0]          ; [DPU_3_PIPE] |77| 
        ORR       A1, A1, #1            ; [DPU_3_PIPE] |77| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |77| 
	.dwpsn	file "../UART.c",line 78,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  78 | SYSCTL_RCGCGPIO_R |= 0x01;            // activate port A               
;----------------------------------------------------------------------
        LDR       A2, $C$CON8           ; [DPU_3_PIPE] |78| 
        LDR       A1, [A2, #0]          ; [DPU_3_PIPE] |78| 
        ORR       A1, A1, #1            ; [DPU_3_PIPE] |78| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |78| 
	.dwpsn	file "../UART.c",line 79,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  79 | RxFifo_Init();                        // initialize empty FIFOs        
;----------------------------------------------------------------------
$C$DW$41	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$41, DW_AT_low_pc(0x00)
	.dwattr $C$DW$41, DW_AT_name("RxFifo_Init")
	.dwattr $C$DW$41, DW_AT_TI_call
        BL        RxFifo_Init           ; [DPU_3_PIPE] |79| 
        ; CALL OCCURS {RxFifo_Init }     ; [] |79| 
	.dwpsn	file "../UART.c",line 80,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  80 | TxFifo_Init();                                                         
;----------------------------------------------------------------------
$C$DW$42	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$42, DW_AT_low_pc(0x00)
	.dwattr $C$DW$42, DW_AT_name("TxFifo_Init")
	.dwattr $C$DW$42, DW_AT_TI_call
        BL        TxFifo_Init           ; [DPU_3_PIPE] |80| 
        ; CALL OCCURS {TxFifo_Init }     ; [] |80| 
	.dwpsn	file "../UART.c",line 81,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  81 | UART0_CTL_R &= ~UART_CTL_UARTEN;      // disable UART                  
;----------------------------------------------------------------------
        LDR       A2, $C$CON9           ; [DPU_3_PIPE] |81| 
        LDR       A1, [A2, #0]          ; [DPU_3_PIPE] |81| 
        BIC       A1, A1, #1            ; [DPU_3_PIPE] |81| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |81| 
	.dwpsn	file "../UART.c",line 82,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  82 | UART0_IBRD_R = 43;                    // IBRD = int(80,000,000 / (16 *
;     | 115,200)) = int(43.403)                                                
;----------------------------------------------------------------------
        LDR       A2, $C$CON10          ; [DPU_3_PIPE] |82| 
        MOVS      A1, #43               ; [DPU_3_PIPE] |82| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |82| 
	.dwpsn	file "../UART.c",line 83,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  83 | UART0_FBRD_R = 26;                    // FBRD = round(0.4028 * 64 ) = 2
;     | 6                                                                      
;  84 |                                       // 8 bit word length (no parity b
;     | its, one stop bit, FIFOs)                                              
;----------------------------------------------------------------------
        LDR       A2, $C$CON11          ; [DPU_3_PIPE] |83| 
        MOVS      A1, #26               ; [DPU_3_PIPE] |83| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |83| 
	.dwpsn	file "../UART.c",line 85,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  85 | UART0_LCRH_R = (UART_LCRH_WLEN_8|UART_LCRH_FEN);                       
;----------------------------------------------------------------------
        LDR       A2, $C$CON12          ; [DPU_3_PIPE] |85| 
        MOVS      A1, #112              ; [DPU_3_PIPE] |85| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |85| 
	.dwpsn	file "../UART.c",line 86,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  86 | UART0_IFLS_R &= ~0x3F;                // clear TX and RX interrupt FIFO
;     |  level fields                                                          
;  87 |                                       // configure interrupt for TX FIF
;     | O <= 1/8 full                                                          
;  88 |                                       // configure interrupt for RX FIF
;     | O >= 1/8 full                                                          
;----------------------------------------------------------------------
        LDR       A2, $C$CON13          ; [DPU_3_PIPE] |86| 
        LDR       A1, [A2, #0]          ; [DPU_3_PIPE] |86| 
        BIC       A1, A1, #63           ; [DPU_3_PIPE] |86| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |86| 
	.dwpsn	file "../UART.c",line 89,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  89 | UART0_IFLS_R += (UART_IFLS_TX1_8|UART_IFLS_RX1_8);                     
;  90 |                                       // enable TX and RX FIFO interrup
;     | ts and RX time-out interrupt                                           
;----------------------------------------------------------------------
        LDR       A2, $C$CON13          ; [DPU_3_PIPE] |89| 
        LDR       A1, [A2, #0]          ; [DPU_3_PIPE] |89| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |89| 
	.dwpsn	file "../UART.c",line 91,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  91 | UART0_IM_R |= (UART_IM_RXIM|UART_IM_TXIM|UART_IM_RTIM);                
;----------------------------------------------------------------------
        LDR       A2, $C$CON14          ; [DPU_3_PIPE] |91| 
        LDR       A1, [A2, #0]          ; [DPU_3_PIPE] |91| 
        ORR       A1, A1, #112          ; [DPU_3_PIPE] |91| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |91| 
	.dwpsn	file "../UART.c",line 92,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  92 | UART0_CTL_R |= 0x301;                 // enable UART                   
;----------------------------------------------------------------------
        LDR       A2, $C$CON9           ; [DPU_3_PIPE] |92| 
        LDR       A3, [A2, #0]          ; [DPU_3_PIPE] |92| 
        MOV       A1, #769              ; [DPU_3_PIPE] |92| 
        ORRS      A1, A1, A3            ; [DPU_3_PIPE] |92| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |92| 
	.dwpsn	file "../UART.c",line 93,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  93 | GPIO_PORTA_AFSEL_R |= 0x03;           // enable alt funct on PA1-0     
;----------------------------------------------------------------------
        LDR       A2, $C$CON15          ; [DPU_3_PIPE] |93| 
        LDR       A1, [A2, #0]          ; [DPU_3_PIPE] |93| 
        ORR       A1, A1, #3            ; [DPU_3_PIPE] |93| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |93| 
	.dwpsn	file "../UART.c",line 94,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  94 | GPIO_PORTA_DEN_R |= 0x03;             // enable digital I/O on PA1-0   
;  95 |                                       // configure PA1-0 as UART       
;----------------------------------------------------------------------
        LDR       A2, $C$CON16          ; [DPU_3_PIPE] |94| 
        LDR       A1, [A2, #0]          ; [DPU_3_PIPE] |94| 
        ORR       A1, A1, #3            ; [DPU_3_PIPE] |94| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |94| 
	.dwpsn	file "../UART.c",line 96,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  96 | GPIO_PORTA_PCTL_R = (GPIO_PORTA_PCTL_R&0xFFFFFF00)+0x00000011;         
;----------------------------------------------------------------------
        LDR       A1, $C$CON17          ; [DPU_3_PIPE] |96| 
        LDR       A2, $C$CON17          ; [DPU_3_PIPE] |96| 
        LDR       A1, [A1, #0]          ; [DPU_3_PIPE] |96| 
        BIC       A1, A1, #255          ; [DPU_3_PIPE] |96| 
        ADDS      A1, A1, #17           ; [DPU_3_PIPE] |96| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |96| 
	.dwpsn	file "../UART.c",line 97,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  97 | GPIO_PORTA_AMSEL_R = 0;               // disable analog functionality o
;     | n PA                                                                   
;  98 |                                       // UART0=priority 2              
;----------------------------------------------------------------------
        LDR       A2, $C$CON18          ; [DPU_3_PIPE] |97| 
        MOVS      A1, #0                ; [DPU_3_PIPE] |97| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |97| 
	.dwpsn	file "../UART.c",line 99,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  99 | NVIC_PRI1_R = (NVIC_PRI1_R&0xFFFF00FF)|0x00004000; // bits 13-15       
;----------------------------------------------------------------------
        LDR       A1, $C$CON19          ; [DPU_3_PIPE] |99| 
        LDR       A2, $C$CON19          ; [DPU_3_PIPE] |99| 
        LDR       A1, [A1, #0]          ; [DPU_3_PIPE] |99| 
        BIC       A1, A1, #65280        ; [DPU_3_PIPE] |99| 
        ORR       A1, A1, #16384        ; [DPU_3_PIPE] |99| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |99| 
	.dwpsn	file "../UART.c",line 100,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 100 | NVIC_EN0_R = NVIC_EN0_INT5;           // enable interrupt 5 in NVIC    
;----------------------------------------------------------------------
        LDR       A2, $C$CON20          ; [DPU_3_PIPE] |100| 
        MOVS      A1, #32               ; [DPU_3_PIPE] |100| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |100| 
	.dwpsn	file "../UART.c",line 101,column 1,is_stmt,isa 1
$C$DW$43	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$43, DW_AT_low_pc(0x00)
	.dwattr $C$DW$43, DW_AT_TI_return
        POP       {A4, PC}              ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$40, DW_AT_TI_end_file("../UART.c")
	.dwattr $C$DW$40, DW_AT_TI_end_line(0x65)
	.dwattr $C$DW$40, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$40

	.sect	".text"
	.clink
	.thumbfunc copyHardwareToSoftware
	.thumb

$C$DW$44	.dwtag  DW_TAG_subprogram, DW_AT_name("copyHardwareToSoftware")
	.dwattr $C$DW$44, DW_AT_low_pc(copyHardwareToSoftware)
	.dwattr $C$DW$44, DW_AT_high_pc(0x00)
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("copyHardwareToSoftware")
	.dwattr $C$DW$44, DW_AT_TI_begin_file("../UART.c")
	.dwattr $C$DW$44, DW_AT_TI_begin_line(0x68)
	.dwattr $C$DW$44, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$44, DW_AT_decl_file("../UART.c")
	.dwattr $C$DW$44, DW_AT_decl_line(0x68)
	.dwattr $C$DW$44, DW_AT_decl_column(0x0d)
	.dwattr $C$DW$44, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../UART.c",line 104,column 41,is_stmt,address copyHardwareToSoftware,isa 1

	.dwfde $C$DW$CIE, copyHardwareToSoftware
;----------------------------------------------------------------------
; 104 | void static copyHardwareToSoftware(void){                              
; 105 | char letter;                                                           
;----------------------------------------------------------------------

;*****************************************************************************
;* FUNCTION NAME: copyHardwareToSoftware                                     *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,SP,LR,SR,FPEXC,FPSCR                    *
;*   Regs Used         : A1,A2,A3,A4,SP,LR,SR,FPEXC,FPSCR                    *
;*   Local Frame Size  : 0 Args + 4 Auto + 4 Save = 8 byte                   *
;*****************************************************************************
copyHardwareToSoftware:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        PUSH      {A4, LR}              ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 3, -8
$C$DW$45	.dwtag  DW_TAG_variable, DW_AT_name("letter")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("letter")
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$45, DW_AT_location[DW_OP_breg13 0]
	.dwpsn	file "../UART.c",line 106,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 106 | while(((UART0_FR_R&UART_FR_RXFE) == 0) && (RxFifo_Size() < (FIFOSIZE -
;     | 1))){                                                                  
;----------------------------------------------------------------------
        B         ||$C$L10||            ; [DPU_3_PIPE] |106| 
        ; BRANCH OCCURS {||$C$L10||}     ; [] |106| 
;* --------------------------------------------------------------------------*
||$C$L9||:    
	.dwpsn	file "../UART.c",line 107,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 107 | letter = UART0_DR_R;                                                   
;----------------------------------------------------------------------
        LDR       A1, $C$CON21          ; [DPU_3_PIPE] |107| 
        LDR       A1, [A1, #0]          ; [DPU_3_PIPE] |107| 
        STRB      A1, [SP, #0]          ; [DPU_3_PIPE] |107| 
	.dwpsn	file "../UART.c",line 108,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 108 | RxFifo_Put(letter);                                                    
;----------------------------------------------------------------------
        LDRB      A1, [SP, #0]          ; [DPU_3_PIPE] |108| 
$C$DW$46	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$46, DW_AT_low_pc(0x00)
	.dwattr $C$DW$46, DW_AT_name("RxFifo_Put")
	.dwattr $C$DW$46, DW_AT_TI_call
        BL        RxFifo_Put            ; [DPU_3_PIPE] |108| 
        ; CALL OCCURS {RxFifo_Put }      ; [] |108| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L10||
;* --------------------------------------------------------------------------*
||$C$L10||:    
	.dwpsn	file "../UART.c",line 106,column 9,is_stmt,isa 1
        LDR       A1, $C$CON22          ; [DPU_3_PIPE] |106| 
        LDR       A1, [A1, #0]          ; [DPU_3_PIPE] |106| 
        LSRS      A1, A1, #5            ; [DPU_3_PIPE] |106| 
        BCS       ||$C$L11||            ; [DPU_3_PIPE] |106| 
        ; BRANCHCC OCCURS {||$C$L11||}   ; [] |106| 
;* --------------------------------------------------------------------------*
$C$DW$47	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$47, DW_AT_low_pc(0x00)
	.dwattr $C$DW$47, DW_AT_name("RxFifo_Size")
	.dwattr $C$DW$47, DW_AT_TI_call
        BL        RxFifo_Size           ; [DPU_3_PIPE] |106| 
        ; CALL OCCURS {RxFifo_Size }     ; [] |106| 
        CMP       A1, #15               ; [DPU_3_PIPE] |106| 
        BLT       ||$C$L9||             ; [DPU_3_PIPE] |106| 
        ; BRANCHCC OCCURS {||$C$L9||}    ; [] |106| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../UART.c",line 110,column 1,is_stmt,isa 1
;* --------------------------------------------------------------------------*
||$C$L11||:    
$C$DW$48	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$48, DW_AT_low_pc(0x00)
	.dwattr $C$DW$48, DW_AT_TI_return
        POP       {A4, PC}              ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$44, DW_AT_TI_end_file("../UART.c")
	.dwattr $C$DW$44, DW_AT_TI_end_line(0x6e)
	.dwattr $C$DW$44, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$44

	.sect	".text"
	.clink
	.thumbfunc copySoftwareToHardware
	.thumb

$C$DW$49	.dwtag  DW_TAG_subprogram, DW_AT_name("copySoftwareToHardware")
	.dwattr $C$DW$49, DW_AT_low_pc(copySoftwareToHardware)
	.dwattr $C$DW$49, DW_AT_high_pc(0x00)
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("copySoftwareToHardware")
	.dwattr $C$DW$49, DW_AT_TI_begin_file("../UART.c")
	.dwattr $C$DW$49, DW_AT_TI_begin_line(0x71)
	.dwattr $C$DW$49, DW_AT_TI_begin_column(0x0d)
	.dwattr $C$DW$49, DW_AT_decl_file("../UART.c")
	.dwattr $C$DW$49, DW_AT_decl_line(0x71)
	.dwattr $C$DW$49, DW_AT_decl_column(0x0d)
	.dwattr $C$DW$49, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../UART.c",line 113,column 41,is_stmt,address copySoftwareToHardware,isa 1

	.dwfde $C$DW$CIE, copySoftwareToHardware
;----------------------------------------------------------------------
; 113 | void static copySoftwareToHardware(void){                              
; 114 | char letter;                                                           
;----------------------------------------------------------------------

;*****************************************************************************
;* FUNCTION NAME: copySoftwareToHardware                                     *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,SP,LR,SR,FPEXC,FPSCR                    *
;*   Regs Used         : A1,A2,A3,A4,SP,LR,SR,FPEXC,FPSCR                    *
;*   Local Frame Size  : 0 Args + 4 Auto + 4 Save = 8 byte                   *
;*****************************************************************************
copySoftwareToHardware:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        PUSH      {A4, LR}              ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 3, -8
$C$DW$50	.dwtag  DW_TAG_variable, DW_AT_name("letter")
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("letter")
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$50, DW_AT_location[DW_OP_breg13 0]
	.dwpsn	file "../UART.c",line 115,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 115 | while(((UART0_FR_R&UART_FR_TXFF) == 0) && (TxFifo_Size() > 0)){        
;----------------------------------------------------------------------
        B         ||$C$L13||            ; [DPU_3_PIPE] |115| 
        ; BRANCH OCCURS {||$C$L13||}     ; [] |115| 
;* --------------------------------------------------------------------------*
||$C$L12||:    
	.dwpsn	file "../UART.c",line 116,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 116 | TxFifo_Get(&letter);                                                   
;----------------------------------------------------------------------
        MOV       A1, SP                ; [DPU_3_PIPE] |116| 
$C$DW$51	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$51, DW_AT_low_pc(0x00)
	.dwattr $C$DW$51, DW_AT_name("TxFifo_Get")
	.dwattr $C$DW$51, DW_AT_TI_call
        BL        TxFifo_Get            ; [DPU_3_PIPE] |116| 
        ; CALL OCCURS {TxFifo_Get }      ; [] |116| 
	.dwpsn	file "../UART.c",line 117,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 117 | UART0_DR_R = letter;                                                   
;----------------------------------------------------------------------
        LDRB      A1, [SP, #0]          ; [DPU_3_PIPE] |117| 
        LDR       A2, $C$CON21          ; [DPU_3_PIPE] |117| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |117| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L13||
;* --------------------------------------------------------------------------*
||$C$L13||:    
	.dwpsn	file "../UART.c",line 115,column 9,is_stmt,isa 1
        LDR       A1, $C$CON22          ; [DPU_3_PIPE] |115| 
        LDR       A1, [A1, #0]          ; [DPU_3_PIPE] |115| 
        LSRS      A1, A1, #6            ; [DPU_3_PIPE] |115| 
        BCS       ||$C$L14||            ; [DPU_3_PIPE] |115| 
        ; BRANCHCC OCCURS {||$C$L14||}   ; [] |115| 
;* --------------------------------------------------------------------------*
$C$DW$52	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$52, DW_AT_low_pc(0x00)
	.dwattr $C$DW$52, DW_AT_name("TxFifo_Size")
	.dwattr $C$DW$52, DW_AT_TI_call
        BL        TxFifo_Size           ; [DPU_3_PIPE] |115| 
        ; CALL OCCURS {TxFifo_Size }     ; [] |115| 
        CMP       A1, #0                ; [DPU_3_PIPE] |115| 
        BGT       ||$C$L12||            ; [DPU_3_PIPE] |115| 
        ; BRANCHCC OCCURS {||$C$L12||}   ; [] |115| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../UART.c",line 119,column 1,is_stmt,isa 1
;* --------------------------------------------------------------------------*
||$C$L14||:    
$C$DW$53	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$53, DW_AT_low_pc(0x00)
	.dwattr $C$DW$53, DW_AT_TI_return
        POP       {A4, PC}              ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$49, DW_AT_TI_end_file("../UART.c")
	.dwattr $C$DW$49, DW_AT_TI_end_line(0x77)
	.dwattr $C$DW$49, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$49

	.sect	".text"
	.clink
	.thumbfunc UART_InChar
	.thumb
	.global	UART_InChar

$C$DW$54	.dwtag  DW_TAG_subprogram, DW_AT_name("UART_InChar")
	.dwattr $C$DW$54, DW_AT_low_pc(UART_InChar)
	.dwattr $C$DW$54, DW_AT_high_pc(0x00)
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("UART_InChar")
	.dwattr $C$DW$54, DW_AT_external
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$54, DW_AT_TI_begin_file("../UART.c")
	.dwattr $C$DW$54, DW_AT_TI_begin_line(0x7a)
	.dwattr $C$DW$54, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$54, DW_AT_decl_file("../UART.c")
	.dwattr $C$DW$54, DW_AT_decl_line(0x7a)
	.dwattr $C$DW$54, DW_AT_decl_column(0x06)
	.dwattr $C$DW$54, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../UART.c",line 122,column 23,is_stmt,address UART_InChar,isa 1

	.dwfde $C$DW$CIE, UART_InChar
;----------------------------------------------------------------------
; 122 | char UART_InChar(void){                                                
; 123 | char letter;                                                           
;----------------------------------------------------------------------

;*****************************************************************************
;* FUNCTION NAME: UART_InChar                                                *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,SP,LR,SR,FPEXC,FPSCR                    *
;*   Regs Used         : A1,A2,A3,A4,SP,LR,SR,FPEXC,FPSCR                    *
;*   Local Frame Size  : 0 Args + 4 Auto + 4 Save = 8 byte                   *
;*****************************************************************************
UART_InChar:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        PUSH      {A4, LR}              ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 3, -8
$C$DW$55	.dwtag  DW_TAG_variable, DW_AT_name("letter")
	.dwattr $C$DW$55, DW_AT_TI_symbol_name("letter")
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$55, DW_AT_location[DW_OP_breg13 0]
	.dwpsn	file "../UART.c",line 124,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 124 | while(RxFifo_Get(&letter) == FIFOFAIL){};                              
;----------------------------------------------------------------------
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L15||
;*
;*   Loop source line                : 124
;*   Loop closing brace source line  : 124
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L15||:    
	.dwpsn	file "../UART.c",line 124,column 9,is_stmt,isa 1
        MOV       A1, SP                ; [DPU_3_PIPE] |124| 
$C$DW$56	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$56, DW_AT_low_pc(0x00)
	.dwattr $C$DW$56, DW_AT_name("RxFifo_Get")
	.dwattr $C$DW$56, DW_AT_TI_call
        BL        RxFifo_Get            ; [DPU_3_PIPE] |124| 
        ; CALL OCCURS {RxFifo_Get }      ; [] |124| 
        CMP       A1, #0                ; [DPU_3_PIPE] |124| 
        BEQ       ||$C$L15||            ; [DPU_3_PIPE] |124| 
        ; BRANCHCC OCCURS {||$C$L15||}   ; [] |124| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../UART.c",line 125,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 125 | return(letter);                                                        
;----------------------------------------------------------------------
        LDRB      A1, [SP, #0]          ; [DPU_3_PIPE] |125| 
	.dwpsn	file "../UART.c",line 126,column 1,is_stmt,isa 1
$C$DW$57	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$57, DW_AT_low_pc(0x00)
	.dwattr $C$DW$57, DW_AT_TI_return
        POP       {A4, PC}              ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$54, DW_AT_TI_end_file("../UART.c")
	.dwattr $C$DW$54, DW_AT_TI_end_line(0x7e)
	.dwattr $C$DW$54, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$54

	.sect	".text"
	.clink
	.thumbfunc UART_OutChar
	.thumb
	.global	UART_OutChar

$C$DW$58	.dwtag  DW_TAG_subprogram, DW_AT_name("UART_OutChar")
	.dwattr $C$DW$58, DW_AT_low_pc(UART_OutChar)
	.dwattr $C$DW$58, DW_AT_high_pc(0x00)
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("UART_OutChar")
	.dwattr $C$DW$58, DW_AT_external
	.dwattr $C$DW$58, DW_AT_TI_begin_file("../UART.c")
	.dwattr $C$DW$58, DW_AT_TI_begin_line(0x81)
	.dwattr $C$DW$58, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$58, DW_AT_decl_file("../UART.c")
	.dwattr $C$DW$58, DW_AT_decl_line(0x81)
	.dwattr $C$DW$58, DW_AT_decl_column(0x06)
	.dwattr $C$DW$58, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../UART.c",line 129,column 29,is_stmt,address UART_OutChar,isa 1

	.dwfde $C$DW$CIE, UART_OutChar
$C$DW$59	.dwtag  DW_TAG_formal_parameter, DW_AT_name("data")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("data")
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$59, DW_AT_location[DW_OP_reg0]

;*****************************************************************************
;* FUNCTION NAME: UART_OutChar                                               *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,SP,LR,SR,FPEXC,FPSCR                    *
;*   Regs Used         : A1,A2,A3,A4,SP,LR,SR,FPEXC,FPSCR                    *
;*   Local Frame Size  : 0 Args + 4 Auto + 4 Save = 8 byte                   *
;*****************************************************************************
UART_OutChar:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        PUSH      {A4, LR}              ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 3, -8
$C$DW$60	.dwtag  DW_TAG_variable, DW_AT_name("data")
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("data")
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$60, DW_AT_location[DW_OP_breg13 0]
;----------------------------------------------------------------------
; 129 | void UART_OutChar(char data){                                          
;----------------------------------------------------------------------
        STRB      A1, [SP, #0]          ; [DPU_3_PIPE] |129| 
	.dwpsn	file "../UART.c",line 130,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 130 | while(TxFifo_Put(data) == FIFOFAIL){};                                 
;----------------------------------------------------------------------
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L16||
;*
;*   Loop source line                : 130
;*   Loop closing brace source line  : 130
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L16||:    
	.dwpsn	file "../UART.c",line 130,column 9,is_stmt,isa 1
        LDRB      A1, [SP, #0]          ; [DPU_3_PIPE] |130| 
$C$DW$61	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$61, DW_AT_low_pc(0x00)
	.dwattr $C$DW$61, DW_AT_name("TxFifo_Put")
	.dwattr $C$DW$61, DW_AT_TI_call
        BL        TxFifo_Put            ; [DPU_3_PIPE] |130| 
        ; CALL OCCURS {TxFifo_Put }      ; [] |130| 
        CMP       A1, #0                ; [DPU_3_PIPE] |130| 
        BEQ       ||$C$L16||            ; [DPU_3_PIPE] |130| 
        ; BRANCHCC OCCURS {||$C$L16||}   ; [] |130| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../UART.c",line 131,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 131 | UART0_IM_R &= ~UART_IM_TXIM;          // disable TX FIFO interrupt     
;----------------------------------------------------------------------
        LDR       A2, $C$CON14          ; [DPU_3_PIPE] |131| 
        LDR       A1, [A2, #0]          ; [DPU_3_PIPE] |131| 
        BIC       A1, A1, #32           ; [DPU_3_PIPE] |131| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |131| 
	.dwpsn	file "../UART.c",line 132,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 132 | copySoftwareToHardware();                                              
;----------------------------------------------------------------------
$C$DW$62	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$62, DW_AT_low_pc(0x00)
	.dwattr $C$DW$62, DW_AT_name("copySoftwareToHardware")
	.dwattr $C$DW$62, DW_AT_TI_call
        BL        copySoftwareToHardware ; [DPU_3_PIPE] |132| 
        ; CALL OCCURS {copySoftwareToHardware }  ; [] |132| 
	.dwpsn	file "../UART.c",line 133,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 133 | UART0_IM_R |= UART_IM_TXIM;           // enable TX FIFO interrupt      
;----------------------------------------------------------------------
        LDR       A2, $C$CON14          ; [DPU_3_PIPE] |133| 
        LDR       A1, [A2, #0]          ; [DPU_3_PIPE] |133| 
        ORR       A1, A1, #32           ; [DPU_3_PIPE] |133| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |133| 
	.dwpsn	file "../UART.c",line 134,column 1,is_stmt,isa 1
$C$DW$63	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$63, DW_AT_low_pc(0x00)
	.dwattr $C$DW$63, DW_AT_TI_return
        POP       {A4, PC}              ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$58, DW_AT_TI_end_file("../UART.c")
	.dwattr $C$DW$58, DW_AT_TI_end_line(0x86)
	.dwattr $C$DW$58, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$58

	.sect	".text"
	.clink
	.thumbfunc UART_OutCharNonBlock
	.thumb
	.global	UART_OutCharNonBlock

$C$DW$64	.dwtag  DW_TAG_subprogram, DW_AT_name("UART_OutCharNonBlock")
	.dwattr $C$DW$64, DW_AT_low_pc(UART_OutCharNonBlock)
	.dwattr $C$DW$64, DW_AT_high_pc(0x00)
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("UART_OutCharNonBlock")
	.dwattr $C$DW$64, DW_AT_external
	.dwattr $C$DW$64, DW_AT_TI_begin_file("../UART.c")
	.dwattr $C$DW$64, DW_AT_TI_begin_line(0x8c)
	.dwattr $C$DW$64, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$64, DW_AT_decl_file("../UART.c")
	.dwattr $C$DW$64, DW_AT_decl_line(0x8c)
	.dwattr $C$DW$64, DW_AT_decl_column(0x06)
	.dwattr $C$DW$64, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../UART.c",line 140,column 37,is_stmt,address UART_OutCharNonBlock,isa 1

	.dwfde $C$DW$CIE, UART_OutCharNonBlock
$C$DW$65	.dwtag  DW_TAG_formal_parameter, DW_AT_name("data")
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("data")
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$65, DW_AT_location[DW_OP_reg0]

;*****************************************************************************
;* FUNCTION NAME: UART_OutCharNonBlock                                       *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,SP,LR,SR,FPEXC,FPSCR                    *
;*   Regs Used         : A1,A2,A3,A4,SP,LR,SR,FPEXC,FPSCR                    *
;*   Local Frame Size  : 0 Args + 4 Auto + 4 Save = 8 byte                   *
;*****************************************************************************
UART_OutCharNonBlock:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        PUSH      {A4, LR}              ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 3, -8
$C$DW$66	.dwtag  DW_TAG_variable, DW_AT_name("data")
	.dwattr $C$DW$66, DW_AT_TI_symbol_name("data")
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$66, DW_AT_location[DW_OP_breg13 0]
;----------------------------------------------------------------------
; 140 | void UART_OutCharNonBlock(char data){                                  
;----------------------------------------------------------------------
        STRB      A1, [SP, #0]          ; [DPU_3_PIPE] |140| 
	.dwpsn	file "../UART.c",line 141,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 141 | if(TxFifo_Put(data) == FIFOFAIL) return; // lost data                  
;----------------------------------------------------------------------
        LDRB      A1, [SP, #0]          ; [DPU_3_PIPE] |141| 
$C$DW$67	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$67, DW_AT_low_pc(0x00)
	.dwattr $C$DW$67, DW_AT_name("TxFifo_Put")
	.dwattr $C$DW$67, DW_AT_TI_call
        BL        TxFifo_Put            ; [DPU_3_PIPE] |141| 
        ; CALL OCCURS {TxFifo_Put }      ; [] |141| 
        CBZ       A1, ||$C$L17||        ; [] 
        ; BRANCHCC OCCURS {||$C$L17||}   ; [] |141| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../UART.c",line 141,column 36,is_stmt,isa 1
	.dwpsn	file "../UART.c",line 142,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 142 | UART0_IM_R &= ~UART_IM_TXIM;          // disable TX FIFO interrupt     
;----------------------------------------------------------------------
        LDR       A2, $C$CON14          ; [DPU_3_PIPE] |142| 
        LDR       A1, [A2, #0]          ; [DPU_3_PIPE] |142| 
        BIC       A1, A1, #32           ; [DPU_3_PIPE] |142| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |142| 
	.dwpsn	file "../UART.c",line 143,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 143 | copySoftwareToHardware();                                              
;----------------------------------------------------------------------
$C$DW$68	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$68, DW_AT_low_pc(0x00)
	.dwattr $C$DW$68, DW_AT_name("copySoftwareToHardware")
	.dwattr $C$DW$68, DW_AT_TI_call
        BL        copySoftwareToHardware ; [DPU_3_PIPE] |143| 
        ; CALL OCCURS {copySoftwareToHardware }  ; [] |143| 
	.dwpsn	file "../UART.c",line 144,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 144 | UART0_IM_R |= UART_IM_TXIM;           // enable TX FIFO interrupt      
;----------------------------------------------------------------------
        LDR       A2, $C$CON14          ; [DPU_3_PIPE] |144| 
        LDR       A1, [A2, #0]          ; [DPU_3_PIPE] |144| 
        ORR       A1, A1, #32           ; [DPU_3_PIPE] |144| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |144| 
	.dwpsn	file "../UART.c",line 145,column 1,is_stmt,isa 1
;* --------------------------------------------------------------------------*
||$C$L17||:    
$C$DW$69	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$69, DW_AT_low_pc(0x00)
	.dwattr $C$DW$69, DW_AT_TI_return
        POP       {A4, PC}              ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$64, DW_AT_TI_end_file("../UART.c")
	.dwattr $C$DW$64, DW_AT_TI_end_line(0x91)
	.dwattr $C$DW$64, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$64

	.sect	".text"
	.clink
	.thumbfunc UART0_Handler
	.thumb
	.global	UART0_Handler

$C$DW$70	.dwtag  DW_TAG_subprogram, DW_AT_name("UART0_Handler")
	.dwattr $C$DW$70, DW_AT_low_pc(UART0_Handler)
	.dwattr $C$DW$70, DW_AT_high_pc(0x00)
	.dwattr $C$DW$70, DW_AT_TI_symbol_name("UART0_Handler")
	.dwattr $C$DW$70, DW_AT_external
	.dwattr $C$DW$70, DW_AT_TI_begin_file("../UART.c")
	.dwattr $C$DW$70, DW_AT_TI_begin_line(0x96)
	.dwattr $C$DW$70, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$70, DW_AT_decl_file("../UART.c")
	.dwattr $C$DW$70, DW_AT_decl_line(0x96)
	.dwattr $C$DW$70, DW_AT_decl_column(0x06)
	.dwattr $C$DW$70, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../UART.c",line 150,column 25,is_stmt,address UART0_Handler,isa 1

	.dwfde $C$DW$CIE, UART0_Handler
;----------------------------------------------------------------------
; 150 | void UART0_Handler(void){                                              
;----------------------------------------------------------------------

;*****************************************************************************
;* FUNCTION NAME: UART0_Handler                                              *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,SP,LR,SR,FPEXC,FPSCR                    *
;*   Regs Used         : A1,A2,A3,A4,SP,LR,SR,FPEXC,FPSCR                    *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                   *
;*****************************************************************************
UART0_Handler:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        PUSH      {A4, LR}              ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 3, -8
	.dwpsn	file "../UART.c",line 151,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 151 | if(UART0_RIS_R&UART_RIS_TXRIS){       // hardware TX FIFO <= 2 items   
;----------------------------------------------------------------------
        LDR       A1, $C$CON23          ; [DPU_3_PIPE] |151| 
        LDR       A1, [A1, #0]          ; [DPU_3_PIPE] |151| 
        LSRS      A1, A1, #6            ; [DPU_3_PIPE] |151| 
        BCC       ||$C$L18||            ; [DPU_3_PIPE] |151| 
        ; BRANCHCC OCCURS {||$C$L18||}   ; [] |151| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../UART.c",line 152,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 152 | UART0_ICR_R = UART_ICR_TXIC;        // acknowledge TX FIFO             
; 153 | // copy from software TX FIFO to hardware TX FIFO                      
;----------------------------------------------------------------------
        LDR       A2, $C$CON24          ; [DPU_3_PIPE] |152| 
        MOVS      A1, #32               ; [DPU_3_PIPE] |152| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |152| 
	.dwpsn	file "../UART.c",line 154,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 154 | copySoftwareToHardware();                                              
;----------------------------------------------------------------------
$C$DW$71	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$71, DW_AT_low_pc(0x00)
	.dwattr $C$DW$71, DW_AT_name("copySoftwareToHardware")
	.dwattr $C$DW$71, DW_AT_TI_call
        BL        copySoftwareToHardware ; [DPU_3_PIPE] |154| 
        ; CALL OCCURS {copySoftwareToHardware }  ; [] |154| 
	.dwpsn	file "../UART.c",line 155,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 155 | if(TxFifo_Size() == 0){             // software TX FIFO is empty       
;----------------------------------------------------------------------
$C$DW$72	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$72, DW_AT_low_pc(0x00)
	.dwattr $C$DW$72, DW_AT_name("TxFifo_Size")
	.dwattr $C$DW$72, DW_AT_TI_call
        BL        TxFifo_Size           ; [DPU_3_PIPE] |155| 
        ; CALL OCCURS {TxFifo_Size }     ; [] |155| 
        CBNZ      A1, ||$C$L18||        ; [] 
        ; BRANCHCC OCCURS {||$C$L18||}   ; [] |155| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../UART.c",line 156,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 156 | UART0_IM_R &= ~UART_IM_TXIM;      // disable TX FIFO interrupt         
;----------------------------------------------------------------------
        LDR       A2, $C$CON14          ; [DPU_3_PIPE] |156| 
        LDR       A1, [A2, #0]          ; [DPU_3_PIPE] |156| 
        BIC       A1, A1, #32           ; [DPU_3_PIPE] |156| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |156| 
;* --------------------------------------------------------------------------*
||$C$L18||:    
	.dwpsn	file "../UART.c",line 159,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 159 | if(UART0_RIS_R&UART_RIS_RXRIS){       // hardware RX FIFO >= 2 items   
;----------------------------------------------------------------------
        LDR       A1, $C$CON23          ; [DPU_3_PIPE] |159| 
        LDR       A1, [A1, #0]          ; [DPU_3_PIPE] |159| 
        LSRS      A1, A1, #5            ; [DPU_3_PIPE] |159| 
        BCC       ||$C$L19||            ; [DPU_3_PIPE] |159| 
        ; BRANCHCC OCCURS {||$C$L19||}   ; [] |159| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../UART.c",line 160,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 160 | UART0_ICR_R = UART_ICR_RXIC;        // acknowledge RX FIFO             
; 161 | // copy from hardware RX FIFO to software RX FIFO                      
;----------------------------------------------------------------------
        LDR       A2, $C$CON24          ; [DPU_3_PIPE] |160| 
        MOVS      A1, #16               ; [DPU_3_PIPE] |160| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |160| 
	.dwpsn	file "../UART.c",line 162,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 162 | copyHardwareToSoftware();                                              
;----------------------------------------------------------------------
$C$DW$73	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$73, DW_AT_low_pc(0x00)
	.dwattr $C$DW$73, DW_AT_name("copyHardwareToSoftware")
	.dwattr $C$DW$73, DW_AT_TI_call
        BL        copyHardwareToSoftware ; [DPU_3_PIPE] |162| 
        ; CALL OCCURS {copyHardwareToSoftware }  ; [] |162| 
;* --------------------------------------------------------------------------*
||$C$L19||:    
	.dwpsn	file "../UART.c",line 164,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 164 | if(UART0_RIS_R&UART_RIS_RTRIS){       // receiver timed out            
;----------------------------------------------------------------------
        LDR       A1, $C$CON23          ; [DPU_3_PIPE] |164| 
        LDR       A1, [A1, #0]          ; [DPU_3_PIPE] |164| 
        LSRS      A1, A1, #7            ; [DPU_3_PIPE] |164| 
        BCC       ||$C$L20||            ; [DPU_3_PIPE] |164| 
        ; BRANCHCC OCCURS {||$C$L20||}   ; [] |164| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../UART.c",line 165,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 165 | UART0_ICR_R = UART_ICR_RTIC;        // acknowledge receiver time out   
; 166 | // copy from hardware RX FIFO to software RX FIFO                      
;----------------------------------------------------------------------
        LDR       A2, $C$CON24          ; [DPU_3_PIPE] |165| 
        MOVS      A1, #64               ; [DPU_3_PIPE] |165| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |165| 
	.dwpsn	file "../UART.c",line 167,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 167 | copyHardwareToSoftware();                                              
;----------------------------------------------------------------------
$C$DW$74	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$74, DW_AT_low_pc(0x00)
	.dwattr $C$DW$74, DW_AT_name("copyHardwareToSoftware")
	.dwattr $C$DW$74, DW_AT_TI_call
        BL        copyHardwareToSoftware ; [DPU_3_PIPE] |167| 
        ; CALL OCCURS {copyHardwareToSoftware }  ; [] |167| 
	.dwpsn	file "../UART.c",line 169,column 1,is_stmt,isa 1
;* --------------------------------------------------------------------------*
||$C$L20||:    
$C$DW$75	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$75, DW_AT_low_pc(0x00)
	.dwattr $C$DW$75, DW_AT_TI_return
        POP       {A4, PC}              ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$70, DW_AT_TI_end_file("../UART.c")
	.dwattr $C$DW$70, DW_AT_TI_end_line(0xa9)
	.dwattr $C$DW$70, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$70

	.sect	".text"
	.clink
	.thumbfunc UART_OutString
	.thumb
	.global	UART_OutString

$C$DW$76	.dwtag  DW_TAG_subprogram, DW_AT_name("UART_OutString")
	.dwattr $C$DW$76, DW_AT_low_pc(UART_OutString)
	.dwattr $C$DW$76, DW_AT_high_pc(0x00)
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("UART_OutString")
	.dwattr $C$DW$76, DW_AT_external
	.dwattr $C$DW$76, DW_AT_TI_begin_file("../UART.c")
	.dwattr $C$DW$76, DW_AT_TI_begin_line(0xaf)
	.dwattr $C$DW$76, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$76, DW_AT_decl_file("../UART.c")
	.dwattr $C$DW$76, DW_AT_decl_line(0xaf)
	.dwattr $C$DW$76, DW_AT_decl_column(0x06)
	.dwattr $C$DW$76, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../UART.c",line 175,column 30,is_stmt,address UART_OutString,isa 1

	.dwfde $C$DW$CIE, UART_OutString
$C$DW$77	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pt")
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("pt")
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$77, DW_AT_location[DW_OP_reg0]

;*****************************************************************************
;* FUNCTION NAME: UART_OutString                                             *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,SP,LR,SR,FPEXC,FPSCR                    *
;*   Regs Used         : A1,A2,A3,A4,SP,LR,SR,FPEXC,FPSCR                    *
;*   Local Frame Size  : 0 Args + 4 Auto + 4 Save = 8 byte                   *
;*****************************************************************************
UART_OutString:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        PUSH      {A4, LR}              ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 3, -8
$C$DW$78	.dwtag  DW_TAG_variable, DW_AT_name("pt")
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("pt")
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$78, DW_AT_location[DW_OP_breg13 0]
;----------------------------------------------------------------------
; 175 | void UART_OutString(char *pt){                                         
;----------------------------------------------------------------------
        STR       A1, [SP, #0]          ; [DPU_3_PIPE] |175| 
	.dwpsn	file "../UART.c",line 176,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 176 | while(*pt){                                                            
;----------------------------------------------------------------------
        B         ||$C$L22||            ; [DPU_3_PIPE] |176| 
        ; BRANCH OCCURS {||$C$L22||}     ; [] |176| 
;* --------------------------------------------------------------------------*
||$C$L21||:    
	.dwpsn	file "../UART.c",line 177,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 177 | UART_OutChar(*pt);                                                     
;----------------------------------------------------------------------
        LDR       A1, [SP, #0]          ; [DPU_3_PIPE] |177| 
        LDRB      A1, [A1, #0]          ; [DPU_3_PIPE] |177| 
$C$DW$79	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$79, DW_AT_low_pc(0x00)
	.dwattr $C$DW$79, DW_AT_name("UART_OutChar")
	.dwattr $C$DW$79, DW_AT_TI_call
        BL        UART_OutChar          ; [DPU_3_PIPE] |177| 
        ; CALL OCCURS {UART_OutChar }    ; [] |177| 
	.dwpsn	file "../UART.c",line 178,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 178 | pt++;                                                                  
;----------------------------------------------------------------------
        LDR       A1, [SP, #0]          ; [DPU_3_PIPE] |178| 
        ADDS      A1, A1, #1            ; [DPU_3_PIPE] |178| 
        STR       A1, [SP, #0]          ; [DPU_3_PIPE] |178| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L22||
;* --------------------------------------------------------------------------*
||$C$L22||:    
	.dwpsn	file "../UART.c",line 176,column 3,is_stmt,isa 1
        LDR       A1, [SP, #0]          ; [DPU_3_PIPE] |176| 
        LDRB      A1, [A1, #0]          ; [DPU_3_PIPE] |176| 
        CMP       A1, #0                ; [DPU_3_PIPE] |176| 
        BNE       ||$C$L21||            ; [DPU_3_PIPE] |176| 
        ; BRANCHCC OCCURS {||$C$L21||}   ; [] |176| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../UART.c",line 180,column 1,is_stmt,isa 1
$C$DW$80	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$80, DW_AT_low_pc(0x00)
	.dwattr $C$DW$80, DW_AT_TI_return
        POP       {A4, PC}              ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$76, DW_AT_TI_end_file("../UART.c")
	.dwattr $C$DW$76, DW_AT_TI_end_line(0xb4)
	.dwattr $C$DW$76, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$76

;******************************************************************************
;* CONSTANT TABLE                                                             *
;******************************************************************************
	.sect	".text"
	.align	4
||$C$CON1||:	.bits	RxPutI,32
	.align	4
||$C$CON2||:	.bits	RxGetI,32
	.align	4
||$C$CON3||:	.bits	RxFifo,32
	.sect	".text"
	.clink
	.thumbfunc UART_InUDec
	.thumb
	.global	UART_InUDec

$C$DW$81	.dwtag  DW_TAG_subprogram, DW_AT_name("UART_InUDec")
	.dwattr $C$DW$81, DW_AT_low_pc(UART_InUDec)
	.dwattr $C$DW$81, DW_AT_high_pc(0x00)
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("UART_InUDec")
	.dwattr $C$DW$81, DW_AT_external
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$81, DW_AT_TI_begin_file("../UART.c")
	.dwattr $C$DW$81, DW_AT_TI_begin_line(0xbe)
	.dwattr $C$DW$81, DW_AT_TI_begin_column(0x0a)
	.dwattr $C$DW$81, DW_AT_decl_file("../UART.c")
	.dwattr $C$DW$81, DW_AT_decl_line(0xbe)
	.dwattr $C$DW$81, DW_AT_decl_column(0x0a)
	.dwattr $C$DW$81, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "../UART.c",line 190,column 27,is_stmt,address UART_InUDec,isa 1

	.dwfde $C$DW$CIE, UART_InUDec
;----------------------------------------------------------------------
; 190 | uint32_t UART_InUDec(void){                                            
;----------------------------------------------------------------------

;*****************************************************************************
;* FUNCTION NAME: UART_InUDec                                                *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,SP,LR,SR,FPEXC,FPSCR                    *
;*   Regs Used         : A1,A2,A3,A4,SP,LR,SR,FPEXC,FPSCR                    *
;*   Local Frame Size  : 0 Args + 12 Auto + 4 Save = 16 byte                 *
;*****************************************************************************
UART_InUDec:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        PUSH      {A2, A3, A4, LR}      ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 16
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 3, -8
	.dwcfi	save_reg_to_mem, 2, -12
	.dwcfi	save_reg_to_mem, 1, -16
$C$DW$82	.dwtag  DW_TAG_variable, DW_AT_name("number")
	.dwattr $C$DW$82, DW_AT_TI_symbol_name("number")
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$82, DW_AT_location[DW_OP_breg13 0]
$C$DW$83	.dwtag  DW_TAG_variable, DW_AT_name("length")
	.dwattr $C$DW$83, DW_AT_TI_symbol_name("length")
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$83, DW_AT_location[DW_OP_breg13 4]
$C$DW$84	.dwtag  DW_TAG_variable, DW_AT_name("character")
	.dwattr $C$DW$84, DW_AT_TI_symbol_name("character")
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$84, DW_AT_location[DW_OP_breg13 8]
	.dwpsn	file "../UART.c",line 191,column 16,is_stmt,isa 1
;----------------------------------------------------------------------
; 191 | uint32_t number=0, length=0;                                           
;----------------------------------------------------------------------
        MOVS      A1, #0                ; [DPU_3_PIPE] |191| 
        STR       A1, [SP, #0]          ; [DPU_3_PIPE] |191| 
	.dwpsn	file "../UART.c",line 191,column 26,is_stmt,isa 1
;----------------------------------------------------------------------
; 192 | char character;                                                        
;----------------------------------------------------------------------
        MOVS      A1, #0                ; [DPU_3_PIPE] |191| 
        STR       A1, [SP, #4]          ; [DPU_3_PIPE] |191| 
	.dwpsn	file "../UART.c",line 193,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 193 | character = UART_InChar();                                             
;----------------------------------------------------------------------
$C$DW$85	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$85, DW_AT_low_pc(0x00)
	.dwattr $C$DW$85, DW_AT_name("UART_InChar")
	.dwattr $C$DW$85, DW_AT_TI_call
        BL        UART_InChar           ; [DPU_3_PIPE] |193| 
        ; CALL OCCURS {UART_InChar }     ; [] |193| 
        STRB      A1, [SP, #8]          ; [DPU_3_PIPE] |193| 
	.dwpsn	file "../UART.c",line 194,column 9,is_stmt,isa 1
;----------------------------------------------------------------------
; 194 | while(character != CR){ // accepts until <enter> is typed              
; 195 | // The next line checks that the input is a digit, 0-9.                
; 196 | // If the character is not 0-9, it is ignored and not echoed           
;----------------------------------------------------------------------
        LDRB      A1, [SP, #8]          ; [DPU_3_PIPE] |194| 
        CMP       A1, #13               ; [DPU_3_PIPE] |194| 
        BEQ       ||$C$L26||            ; [DPU_3_PIPE] |194| 
        ; BRANCHCC OCCURS {||$C$L26||}   ; [] |194| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L23||
;*
;*   Loop source line                : 194
;*   Loop closing brace source line  : 210
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L23||:    
	.dwpsn	file "../UART.c",line 197,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 197 | if((character>='0') && (character<='9')) {                             
;----------------------------------------------------------------------
        LDRB      A1, [SP, #8]          ; [DPU_3_PIPE] |197| 
        CMP       A1, #48               ; [DPU_3_PIPE] |197| 
        BLT       ||$C$L24||            ; [DPU_3_PIPE] |197| 
        ; BRANCHCC OCCURS {||$C$L24||}   ; [] |197| 
;* --------------------------------------------------------------------------*
        LDRB      A1, [SP, #8]          ; [DPU_3_PIPE] |197| 
        CMP       A1, #57               ; [DPU_3_PIPE] |197| 
        BGT       ||$C$L24||            ; [DPU_3_PIPE] |197| 
        ; BRANCHCC OCCURS {||$C$L24||}   ; [] |197| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../UART.c",line 198,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 198 | number = 10*number+(character-'0');   // this line overflows if above 4
;     | 294967295                                                              
;----------------------------------------------------------------------
        LDR       A3, [SP, #0]          ; [DPU_3_PIPE] |198| 
        LDRB      A1, [SP, #8]          ; [DPU_3_PIPE] |198| 
        LSLS      A2, A3, #1            ; [DPU_3_PIPE] |198| 
        SUBS      A1, A1, #48           ; [DPU_3_PIPE] |198| 
        ADD       A2, A2, A3, LSL #3    ; [DPU_3_PIPE] |198| 
        ADDS      A2, A2, A1            ; [DPU_3_PIPE] |198| 
        STR       A2, [SP, #0]          ; [DPU_3_PIPE] |198| 
	.dwpsn	file "../UART.c",line 199,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 199 | length++;                                                              
;----------------------------------------------------------------------
        LDR       A1, [SP, #4]          ; [DPU_3_PIPE] |199| 
        ADDS      A1, A1, #1            ; [DPU_3_PIPE] |199| 
        STR       A1, [SP, #4]          ; [DPU_3_PIPE] |199| 
	.dwpsn	file "../UART.c",line 200,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 200 | UART_OutChar(character);                                               
;----------------------------------------------------------------------
        LDRB      A1, [SP, #8]          ; [DPU_3_PIPE] |200| 
$C$DW$86	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$86, DW_AT_low_pc(0x00)
	.dwattr $C$DW$86, DW_AT_name("UART_OutChar")
	.dwattr $C$DW$86, DW_AT_TI_call
        BL        UART_OutChar          ; [DPU_3_PIPE] |200| 
        ; CALL OCCURS {UART_OutChar }    ; [] |200| 
	.dwpsn	file "../UART.c",line 201,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 202 | // If the input is a backspace, then the return number is              
; 203 | // changed and a backspace is outputted to the screen                  
;----------------------------------------------------------------------
        B         ||$C$L25||            ; [DPU_3_PIPE] |201| 
        ; BRANCH OCCURS {||$C$L25||}     ; [] |201| 
;* --------------------------------------------------------------------------*
||$C$L24||:    
	.dwpsn	file "../UART.c",line 204,column 10,is_stmt,isa 1
;----------------------------------------------------------------------
; 204 | else if((character==BS) && length){                                    
;----------------------------------------------------------------------
        LDRB      A1, [SP, #8]          ; [DPU_3_PIPE] |204| 
        CMP       A1, #8                ; [DPU_3_PIPE] |204| 
        BNE       ||$C$L25||            ; [DPU_3_PIPE] |204| 
        ; BRANCHCC OCCURS {||$C$L25||}   ; [] |204| 
;* --------------------------------------------------------------------------*
        LDR       A1, [SP, #4]          ; [DPU_3_PIPE] |204| 
        CBZ       A1, ||$C$L25||        ; [] 
        ; BRANCHCC OCCURS {||$C$L25||}   ; [] |204| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../UART.c",line 205,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 205 | number /= 10;                                                          
;----------------------------------------------------------------------
        LDR       A2, [SP, #0]          ; [DPU_3_PIPE] |205| 
        MOVS      A1, #10               ; [DPU_3_PIPE] |205| 
        UDIV      A1, A2, A1            ; [DPU_3_PIPE] |205| 
        STR       A1, [SP, #0]          ; [DPU_3_PIPE] |205| 
	.dwpsn	file "../UART.c",line 206,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 206 | length--;                                                              
;----------------------------------------------------------------------
        LDR       A1, [SP, #4]          ; [DPU_3_PIPE] |206| 
        SUBS      A1, A1, #1            ; [DPU_3_PIPE] |206| 
        STR       A1, [SP, #4]          ; [DPU_3_PIPE] |206| 
	.dwpsn	file "../UART.c",line 207,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 207 | UART_OutChar(character);                                               
;----------------------------------------------------------------------
        LDRB      A1, [SP, #8]          ; [DPU_3_PIPE] |207| 
$C$DW$87	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$87, DW_AT_low_pc(0x00)
	.dwattr $C$DW$87, DW_AT_name("UART_OutChar")
	.dwattr $C$DW$87, DW_AT_TI_call
        BL        UART_OutChar          ; [DPU_3_PIPE] |207| 
        ; CALL OCCURS {UART_OutChar }    ; [] |207| 
;* --------------------------------------------------------------------------*
||$C$L25||:    
	.dwpsn	file "../UART.c",line 209,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 209 | character = UART_InChar();                                             
;----------------------------------------------------------------------
$C$DW$88	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$88, DW_AT_low_pc(0x00)
	.dwattr $C$DW$88, DW_AT_name("UART_InChar")
	.dwattr $C$DW$88, DW_AT_TI_call
        BL        UART_InChar           ; [DPU_3_PIPE] |209| 
        ; CALL OCCURS {UART_InChar }     ; [] |209| 
        STRB      A1, [SP, #8]          ; [DPU_3_PIPE] |209| 
	.dwpsn	file "../UART.c",line 194,column 9,is_stmt,isa 1
        LDRB      A1, [SP, #8]          ; [DPU_3_PIPE] |194| 
        CMP       A1, #13               ; [DPU_3_PIPE] |194| 
        BNE       ||$C$L23||            ; [DPU_3_PIPE] |194| 
        ; BRANCHCC OCCURS {||$C$L23||}   ; [] |194| 
;* --------------------------------------------------------------------------*
||$C$L26||:    
	.dwpsn	file "../UART.c",line 211,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 211 | return number;                                                         
;----------------------------------------------------------------------
        LDR       A1, [SP, #0]          ; [DPU_3_PIPE] |211| 
	.dwpsn	file "../UART.c",line 212,column 1,is_stmt,isa 1
$C$DW$89	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$89, DW_AT_low_pc(0x00)
	.dwattr $C$DW$89, DW_AT_TI_return
        POP       {A2, A3, A4, PC}      ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$81, DW_AT_TI_end_file("../UART.c")
	.dwattr $C$DW$81, DW_AT_TI_end_line(0xd4)
	.dwattr $C$DW$81, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$81

	.sect	".text"
	.clink
	.thumbfunc UART_OutUDec
	.thumb
	.global	UART_OutUDec

$C$DW$90	.dwtag  DW_TAG_subprogram, DW_AT_name("UART_OutUDec")
	.dwattr $C$DW$90, DW_AT_low_pc(UART_OutUDec)
	.dwattr $C$DW$90, DW_AT_high_pc(0x00)
	.dwattr $C$DW$90, DW_AT_TI_symbol_name("UART_OutUDec")
	.dwattr $C$DW$90, DW_AT_external
	.dwattr $C$DW$90, DW_AT_TI_begin_file("../UART.c")
	.dwattr $C$DW$90, DW_AT_TI_begin_line(0xdb)
	.dwattr $C$DW$90, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$90, DW_AT_decl_file("../UART.c")
	.dwattr $C$DW$90, DW_AT_decl_line(0xdb)
	.dwattr $C$DW$90, DW_AT_decl_column(0x06)
	.dwattr $C$DW$90, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../UART.c",line 219,column 30,is_stmt,address UART_OutUDec,isa 1

	.dwfde $C$DW$CIE, UART_OutUDec
$C$DW$91	.dwtag  DW_TAG_formal_parameter, DW_AT_name("n")
	.dwattr $C$DW$91, DW_AT_TI_symbol_name("n")
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$91, DW_AT_location[DW_OP_reg0]

;*****************************************************************************
;* FUNCTION NAME: UART_OutUDec                                               *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2,D2_hi, *
;*                           D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,D7_hi,   *
;*                           FPEXC,FPSCR                                     *
;*   Regs Used         : A1,A2,A3,A4,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2,D2_hi, *
;*                           D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,D7_hi,   *
;*                           FPEXC,FPSCR                                     *
;*   Local Frame Size  : 0 Args + 4 Auto + 4 Save = 8 byte                   *
;*****************************************************************************
UART_OutUDec:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        PUSH      {A4, LR}              ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 3, -8
$C$DW$92	.dwtag  DW_TAG_variable, DW_AT_name("n")
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("n")
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$92, DW_AT_location[DW_OP_breg13 0]
;----------------------------------------------------------------------
; 219 | void UART_OutUDec(uint32_t n){                                         
; 220 | // This function uses recursion to convert decimal number              
; 221 | //   of unspecified length as an ASCII string                          
;----------------------------------------------------------------------
        STR       A1, [SP, #0]          ; [DPU_3_PIPE] |219| 
	.dwpsn	file "../UART.c",line 222,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 222 | if(n >= 10){                                                           
;----------------------------------------------------------------------
        LDR       A1, [SP, #0]          ; [DPU_3_PIPE] |222| 
        CMP       A1, #10               ; [DPU_3_PIPE] |222| 
        BCC       ||$C$L27||            ; [DPU_3_PIPE] |222| 
        ; BRANCHCC OCCURS {||$C$L27||}   ; [] |222| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../UART.c",line 223,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 223 | UART_OutUDec(n/10);                                                    
;----------------------------------------------------------------------
        LDR       A2, [SP, #0]          ; [DPU_3_PIPE] |223| 
        MOVS      A1, #10               ; [DPU_3_PIPE] |223| 
        UDIV      A1, A2, A1            ; [DPU_3_PIPE] |223| 
$C$DW$93	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$93, DW_AT_low_pc(0x00)
	.dwattr $C$DW$93, DW_AT_name("UART_OutUDec")
	.dwattr $C$DW$93, DW_AT_TI_call
        BL        UART_OutUDec          ; [DPU_3_PIPE] |223| 
        ; CALL OCCURS {UART_OutUDec }    ; [] |223| 
	.dwpsn	file "../UART.c",line 224,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 224 | n = n%10;                                                              
;----------------------------------------------------------------------
        LDR       A1, [SP, #0]          ; [DPU_3_PIPE] |224| 
        MOVS      A3, #10               ; [DPU_3_PIPE] |224| 
        UDIV      A2, A1, A3            ; [DPU_3_PIPE] |224| 
        MULS      A2, A2, A3            ; [DPU_3_PIPE] |224| 
        SUBS      A1, A1, A2            ; [DPU_3_PIPE] |224| 
        STR       A1, [SP, #0]          ; [DPU_3_PIPE] |224| 
;* --------------------------------------------------------------------------*
||$C$L27||:    
	.dwpsn	file "../UART.c",line 226,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 226 | UART_OutChar(n+'0'); /* n is between 0 and 9 */                        
;----------------------------------------------------------------------
        LDR       A1, [SP, #0]          ; [DPU_3_PIPE] |226| 
        ADDS      A1, A1, #48           ; [DPU_3_PIPE] |226| 
        UXTB      A1, A1                ; [DPU_3_PIPE] |226| 
$C$DW$94	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$94, DW_AT_low_pc(0x00)
	.dwattr $C$DW$94, DW_AT_name("UART_OutChar")
	.dwattr $C$DW$94, DW_AT_TI_call
        BL        UART_OutChar          ; [DPU_3_PIPE] |226| 
        ; CALL OCCURS {UART_OutChar }    ; [] |226| 
	.dwpsn	file "../UART.c",line 227,column 1,is_stmt,isa 1
$C$DW$95	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$95, DW_AT_low_pc(0x00)
	.dwattr $C$DW$95, DW_AT_TI_return
        POP       {A4, PC}              ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$90, DW_AT_TI_end_file("../UART.c")
	.dwattr $C$DW$90, DW_AT_TI_end_line(0xe3)
	.dwattr $C$DW$90, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$90

;******************************************************************************
;* CONSTANT TABLE                                                             *
;******************************************************************************
	.sect	".text"
	.align	4
||$C$CON4||:	.bits	TxPutI,32
	.align	4
||$C$CON5||:	.bits	TxGetI,32
	.align	4
||$C$CON6||:	.bits	TxFifo,32
	.align	4
||$C$CON7||:	.bits	1074783768,32
	.align	4
||$C$CON8||:	.bits	1074783752,32
	.align	4
||$C$CON9||:	.bits	1073791024,32
	.align	4
||$C$CON10||:	.bits	1073791012,32
	.align	4
||$C$CON11||:	.bits	1073791016,32
	.align	4
||$C$CON12||:	.bits	1073791020,32
	.align	4
||$C$CON13||:	.bits	1073791028,32
	.align	4
||$C$CON14||:	.bits	1073791032,32
	.align	4
||$C$CON15||:	.bits	1073759264,32
	.align	4
||$C$CON16||:	.bits	1073759516,32
	.align	4
||$C$CON17||:	.bits	1073759532,32
	.sect	".text"
	.clink
	.thumbfunc UART_InUHex
	.thumb
	.global	UART_InUHex

$C$DW$96	.dwtag  DW_TAG_subprogram, DW_AT_name("UART_InUHex")
	.dwattr $C$DW$96, DW_AT_low_pc(UART_InUHex)
	.dwattr $C$DW$96, DW_AT_high_pc(0x00)
	.dwattr $C$DW$96, DW_AT_TI_symbol_name("UART_InUHex")
	.dwattr $C$DW$96, DW_AT_external
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$96, DW_AT_TI_begin_file("../UART.c")
	.dwattr $C$DW$96, DW_AT_TI_begin_line(0xef)
	.dwattr $C$DW$96, DW_AT_TI_begin_column(0x0a)
	.dwattr $C$DW$96, DW_AT_decl_file("../UART.c")
	.dwattr $C$DW$96, DW_AT_decl_line(0xef)
	.dwattr $C$DW$96, DW_AT_decl_column(0x0a)
	.dwattr $C$DW$96, DW_AT_TI_max_frame_size(0x18)
	.dwpsn	file "../UART.c",line 239,column 27,is_stmt,address UART_InUHex,isa 1

	.dwfde $C$DW$CIE, UART_InUHex
;----------------------------------------------------------------------
; 239 | uint32_t UART_InUHex(void){                                            
;----------------------------------------------------------------------

;*****************************************************************************
;* FUNCTION NAME: UART_InUHex                                                *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,SP,LR,SR,FPEXC,FPSCR                    *
;*   Regs Used         : A1,A2,A3,A4,SP,LR,SR,FPEXC,FPSCR                    *
;*   Local Frame Size  : 0 Args + 16 Auto + 4 Save = 20 byte                 *
;*****************************************************************************
UART_InUHex:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        PUSH      {LR}                  ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 4
	.dwcfi	save_reg_to_mem, 14, -4
        SUB       SP, SP, #20           ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 24
$C$DW$97	.dwtag  DW_TAG_variable, DW_AT_name("number")
	.dwattr $C$DW$97, DW_AT_TI_symbol_name("number")
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$97, DW_AT_location[DW_OP_breg13 0]
$C$DW$98	.dwtag  DW_TAG_variable, DW_AT_name("digit")
	.dwattr $C$DW$98, DW_AT_TI_symbol_name("digit")
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$98, DW_AT_location[DW_OP_breg13 4]
$C$DW$99	.dwtag  DW_TAG_variable, DW_AT_name("length")
	.dwattr $C$DW$99, DW_AT_TI_symbol_name("length")
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$99, DW_AT_location[DW_OP_breg13 8]
$C$DW$100	.dwtag  DW_TAG_variable, DW_AT_name("character")
	.dwattr $C$DW$100, DW_AT_TI_symbol_name("character")
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$100, DW_AT_location[DW_OP_breg13 12]
	.dwpsn	file "../UART.c",line 240,column 16,is_stmt,isa 1
;----------------------------------------------------------------------
; 240 | uint32_t number=0, digit, length=0;                                    
;----------------------------------------------------------------------
        MOVS      A1, #0                ; [DPU_3_PIPE] |240| 
        STR       A1, [SP, #0]          ; [DPU_3_PIPE] |240| 
	.dwpsn	file "../UART.c",line 240,column 33,is_stmt,isa 1
;----------------------------------------------------------------------
; 241 | char character;                                                        
;----------------------------------------------------------------------
        MOVS      A1, #0                ; [DPU_3_PIPE] |240| 
        STR       A1, [SP, #8]          ; [DPU_3_PIPE] |240| 
	.dwpsn	file "../UART.c",line 242,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 242 | character = UART_InChar();                                             
;----------------------------------------------------------------------
$C$DW$101	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$101, DW_AT_low_pc(0x00)
	.dwattr $C$DW$101, DW_AT_name("UART_InChar")
	.dwattr $C$DW$101, DW_AT_TI_call
        BL        UART_InChar           ; [DPU_3_PIPE] |242| 
        ; CALL OCCURS {UART_InChar }     ; [] |242| 
        STRB      A1, [SP, #12]         ; [DPU_3_PIPE] |242| 
	.dwpsn	file "../UART.c",line 243,column 9,is_stmt,isa 1
;----------------------------------------------------------------------
; 243 | while(character != CR){                                                
;----------------------------------------------------------------------
        LDRB      A1, [SP, #12]         ; [DPU_3_PIPE] |243| 
        CMP       A1, #13               ; [DPU_3_PIPE] |243| 
        BEQ       ||$C$L34||            ; [DPU_3_PIPE] |243| 
        ; BRANCHCC OCCURS {||$C$L34||}   ; [] |243| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L28||
;*
;*   Loop source line                : 243
;*   Loop closing brace source line  : 267
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L28||:    
	.dwpsn	file "../UART.c",line 244,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 244 | digit = 0x10; // assume bad                                            
;----------------------------------------------------------------------
        MOVS      A1, #16               ; [DPU_3_PIPE] |244| 
        STR       A1, [SP, #4]          ; [DPU_3_PIPE] |244| 
	.dwpsn	file "../UART.c",line 245,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 245 | if((character>='0') && (character<='9')){                              
;----------------------------------------------------------------------
        LDRB      A1, [SP, #12]         ; [DPU_3_PIPE] |245| 
        CMP       A1, #48               ; [DPU_3_PIPE] |245| 
        BLT       ||$C$L29||            ; [DPU_3_PIPE] |245| 
        ; BRANCHCC OCCURS {||$C$L29||}   ; [] |245| 
;* --------------------------------------------------------------------------*
        LDRB      A1, [SP, #12]         ; [DPU_3_PIPE] |245| 
        CMP       A1, #57               ; [DPU_3_PIPE] |245| 
        BGT       ||$C$L29||            ; [DPU_3_PIPE] |245| 
        ; BRANCHCC OCCURS {||$C$L29||}   ; [] |245| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../UART.c",line 246,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 246 | digit = character-'0';                                                 
;----------------------------------------------------------------------
        LDRB      A1, [SP, #12]         ; [DPU_3_PIPE] |246| 
        SUBS      A1, A1, #48           ; [DPU_3_PIPE] |246| 
        STR       A1, [SP, #4]          ; [DPU_3_PIPE] |246| 
	.dwpsn	file "../UART.c",line 247,column 5,is_stmt,isa 1
        B         ||$C$L31||            ; [DPU_3_PIPE] |247| 
        ; BRANCH OCCURS {||$C$L31||}     ; [] |247| 
;* --------------------------------------------------------------------------*
||$C$L29||:    
	.dwpsn	file "../UART.c",line 248,column 10,is_stmt,isa 1
;----------------------------------------------------------------------
; 248 | else if((character>='A') && (character<='F')){                         
;----------------------------------------------------------------------
        LDRB      A1, [SP, #12]         ; [DPU_3_PIPE] |248| 
        CMP       A1, #65               ; [DPU_3_PIPE] |248| 
        BLT       ||$C$L30||            ; [DPU_3_PIPE] |248| 
        ; BRANCHCC OCCURS {||$C$L30||}   ; [] |248| 
;* --------------------------------------------------------------------------*
        LDRB      A1, [SP, #12]         ; [DPU_3_PIPE] |248| 
        CMP       A1, #70               ; [DPU_3_PIPE] |248| 
        BGT       ||$C$L30||            ; [DPU_3_PIPE] |248| 
        ; BRANCHCC OCCURS {||$C$L30||}   ; [] |248| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../UART.c",line 249,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 249 | digit = (character-'A')+0xA;                                           
;----------------------------------------------------------------------
        LDRB      A1, [SP, #12]         ; [DPU_3_PIPE] |249| 
        SUBS      A1, A1, #55           ; [DPU_3_PIPE] |249| 
        STR       A1, [SP, #4]          ; [DPU_3_PIPE] |249| 
	.dwpsn	file "../UART.c",line 250,column 5,is_stmt,isa 1
        B         ||$C$L31||            ; [DPU_3_PIPE] |250| 
        ; BRANCH OCCURS {||$C$L31||}     ; [] |250| 
;* --------------------------------------------------------------------------*
||$C$L30||:    
	.dwpsn	file "../UART.c",line 251,column 10,is_stmt,isa 1
;----------------------------------------------------------------------
; 251 | else if((character>='a') && (character<='f')){                         
;----------------------------------------------------------------------
        LDRB      A1, [SP, #12]         ; [DPU_3_PIPE] |251| 
        CMP       A1, #97               ; [DPU_3_PIPE] |251| 
        BLT       ||$C$L31||            ; [DPU_3_PIPE] |251| 
        ; BRANCHCC OCCURS {||$C$L31||}   ; [] |251| 
;* --------------------------------------------------------------------------*
        LDRB      A1, [SP, #12]         ; [DPU_3_PIPE] |251| 
        CMP       A1, #102              ; [DPU_3_PIPE] |251| 
        BGT       ||$C$L31||            ; [DPU_3_PIPE] |251| 
        ; BRANCHCC OCCURS {||$C$L31||}   ; [] |251| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../UART.c",line 252,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 252 | digit = (character-'a')+0xA;                                           
; 254 | // If the character is not 0-9 or A-F, it is ignored and not echoed    
;----------------------------------------------------------------------
        LDRB      A1, [SP, #12]         ; [DPU_3_PIPE] |252| 
        SUBS      A1, A1, #87           ; [DPU_3_PIPE] |252| 
        STR       A1, [SP, #4]          ; [DPU_3_PIPE] |252| 
;* --------------------------------------------------------------------------*
||$C$L31||:    
	.dwpsn	file "../UART.c",line 255,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 255 | if(digit <= 0xF){                                                      
;----------------------------------------------------------------------
        LDR       A1, [SP, #4]          ; [DPU_3_PIPE] |255| 
        CMP       A1, #15               ; [DPU_3_PIPE] |255| 
        BHI       ||$C$L32||            ; [DPU_3_PIPE] |255| 
        ; BRANCHCC OCCURS {||$C$L32||}   ; [] |255| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../UART.c",line 256,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 256 | number = number*0x10+digit;                                            
;----------------------------------------------------------------------
        LDR       A2, [SP, #0]          ; [DPU_3_PIPE] |256| 
        LDR       A1, [SP, #4]          ; [DPU_3_PIPE] |256| 
        ADD       A1, A1, A2, LSL #4    ; [DPU_3_PIPE] |256| 
        STR       A1, [SP, #0]          ; [DPU_3_PIPE] |256| 
	.dwpsn	file "../UART.c",line 257,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 257 | length++;                                                              
;----------------------------------------------------------------------
        LDR       A1, [SP, #8]          ; [DPU_3_PIPE] |257| 
        ADDS      A1, A1, #1            ; [DPU_3_PIPE] |257| 
        STR       A1, [SP, #8]          ; [DPU_3_PIPE] |257| 
	.dwpsn	file "../UART.c",line 258,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 258 | UART_OutChar(character);                                               
;----------------------------------------------------------------------
        LDRB      A1, [SP, #12]         ; [DPU_3_PIPE] |258| 
$C$DW$102	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$102, DW_AT_low_pc(0x00)
	.dwattr $C$DW$102, DW_AT_name("UART_OutChar")
	.dwattr $C$DW$102, DW_AT_TI_call
        BL        UART_OutChar          ; [DPU_3_PIPE] |258| 
        ; CALL OCCURS {UART_OutChar }    ; [] |258| 
	.dwpsn	file "../UART.c",line 259,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 260 | // Backspace outputted and return value changed if a backspace is input
;     | ted                                                                    
;----------------------------------------------------------------------
        B         ||$C$L33||            ; [DPU_3_PIPE] |259| 
        ; BRANCH OCCURS {||$C$L33||}     ; [] |259| 
;* --------------------------------------------------------------------------*
||$C$L32||:    
	.dwpsn	file "../UART.c",line 261,column 10,is_stmt,isa 1
;----------------------------------------------------------------------
; 261 | else if((character==BS) && length){                                    
;----------------------------------------------------------------------
        LDRB      A1, [SP, #12]         ; [DPU_3_PIPE] |261| 
        CMP       A1, #8                ; [DPU_3_PIPE] |261| 
        BNE       ||$C$L33||            ; [DPU_3_PIPE] |261| 
        ; BRANCHCC OCCURS {||$C$L33||}   ; [] |261| 
;* --------------------------------------------------------------------------*
        LDR       A1, [SP, #8]          ; [DPU_3_PIPE] |261| 
        CBZ       A1, ||$C$L33||        ; [] 
        ; BRANCHCC OCCURS {||$C$L33||}   ; [] |261| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../UART.c",line 262,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 262 | number /= 0x10;                                                        
;----------------------------------------------------------------------
        LDR       A1, [SP, #0]          ; [DPU_3_PIPE] |262| 
        LSRS      A1, A1, #4            ; [DPU_3_PIPE] |262| 
        STR       A1, [SP, #0]          ; [DPU_3_PIPE] |262| 
	.dwpsn	file "../UART.c",line 263,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 263 | length--;                                                              
;----------------------------------------------------------------------
        LDR       A1, [SP, #8]          ; [DPU_3_PIPE] |263| 
        SUBS      A1, A1, #1            ; [DPU_3_PIPE] |263| 
        STR       A1, [SP, #8]          ; [DPU_3_PIPE] |263| 
	.dwpsn	file "../UART.c",line 264,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 264 | UART_OutChar(character);                                               
;----------------------------------------------------------------------
        LDRB      A1, [SP, #12]         ; [DPU_3_PIPE] |264| 
$C$DW$103	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$103, DW_AT_low_pc(0x00)
	.dwattr $C$DW$103, DW_AT_name("UART_OutChar")
	.dwattr $C$DW$103, DW_AT_TI_call
        BL        UART_OutChar          ; [DPU_3_PIPE] |264| 
        ; CALL OCCURS {UART_OutChar }    ; [] |264| 
;* --------------------------------------------------------------------------*
||$C$L33||:    
	.dwpsn	file "../UART.c",line 266,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 266 | character = UART_InChar();                                             
;----------------------------------------------------------------------
$C$DW$104	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$104, DW_AT_low_pc(0x00)
	.dwattr $C$DW$104, DW_AT_name("UART_InChar")
	.dwattr $C$DW$104, DW_AT_TI_call
        BL        UART_InChar           ; [DPU_3_PIPE] |266| 
        ; CALL OCCURS {UART_InChar }     ; [] |266| 
        STRB      A1, [SP, #12]         ; [DPU_3_PIPE] |266| 
	.dwpsn	file "../UART.c",line 243,column 9,is_stmt,isa 1
        LDRB      A1, [SP, #12]         ; [DPU_3_PIPE] |243| 
        CMP       A1, #13               ; [DPU_3_PIPE] |243| 
        BNE       ||$C$L28||            ; [DPU_3_PIPE] |243| 
        ; BRANCHCC OCCURS {||$C$L28||}   ; [] |243| 
;* --------------------------------------------------------------------------*
||$C$L34||:    
	.dwpsn	file "../UART.c",line 268,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 268 | return number;                                                         
;----------------------------------------------------------------------
        LDR       A1, [SP, #0]          ; [DPU_3_PIPE] |268| 
	.dwpsn	file "../UART.c",line 269,column 1,is_stmt,isa 1
        ADD       SP, SP, #20           ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 4
$C$DW$105	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$105, DW_AT_low_pc(0x00)
	.dwattr $C$DW$105, DW_AT_TI_return
        POP       {PC}                  ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$96, DW_AT_TI_end_file("../UART.c")
	.dwattr $C$DW$96, DW_AT_TI_end_line(0x10d)
	.dwattr $C$DW$96, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$96

;******************************************************************************
;* CONSTANT TABLE                                                             *
;******************************************************************************
	.sect	".text"
	.align	4
||$C$CON18||:	.bits	1073759528,32
	.align	4
||$C$CON19||:	.bits	-536812540,32
	.align	4
||$C$CON20||:	.bits	-536813312,32
	.align	4
||$C$CON21||:	.bits	1073790976,32
	.align	4
||$C$CON22||:	.bits	1073791000,32
	.sect	".text"
	.clink
	.thumbfunc UART_OutUHex
	.thumb
	.global	UART_OutUHex

$C$DW$106	.dwtag  DW_TAG_subprogram, DW_AT_name("UART_OutUHex")
	.dwattr $C$DW$106, DW_AT_low_pc(UART_OutUHex)
	.dwattr $C$DW$106, DW_AT_high_pc(0x00)
	.dwattr $C$DW$106, DW_AT_TI_symbol_name("UART_OutUHex")
	.dwattr $C$DW$106, DW_AT_external
	.dwattr $C$DW$106, DW_AT_TI_begin_file("../UART.c")
	.dwattr $C$DW$106, DW_AT_TI_begin_line(0x114)
	.dwattr $C$DW$106, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$106, DW_AT_decl_file("../UART.c")
	.dwattr $C$DW$106, DW_AT_decl_line(0x114)
	.dwattr $C$DW$106, DW_AT_decl_column(0x06)
	.dwattr $C$DW$106, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../UART.c",line 276,column 35,is_stmt,address UART_OutUHex,isa 1

	.dwfde $C$DW$CIE, UART_OutUHex
$C$DW$107	.dwtag  DW_TAG_formal_parameter, DW_AT_name("number")
	.dwattr $C$DW$107, DW_AT_TI_symbol_name("number")
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$107, DW_AT_location[DW_OP_reg0]

;*****************************************************************************
;* FUNCTION NAME: UART_OutUHex                                               *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2,D2_hi, *
;*                           D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,D7_hi,   *
;*                           FPEXC,FPSCR                                     *
;*   Regs Used         : A1,A2,A3,A4,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2,D2_hi, *
;*                           D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,D7_hi,   *
;*                           FPEXC,FPSCR                                     *
;*   Local Frame Size  : 0 Args + 4 Auto + 4 Save = 8 byte                   *
;*****************************************************************************
UART_OutUHex:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        PUSH      {A4, LR}              ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 3, -8
$C$DW$108	.dwtag  DW_TAG_variable, DW_AT_name("number")
	.dwattr $C$DW$108, DW_AT_TI_symbol_name("number")
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$108, DW_AT_location[DW_OP_breg13 0]
;----------------------------------------------------------------------
; 276 | void UART_OutUHex(uint32_t number){                                    
; 277 | // This function uses recursion to convert the number of               
; 278 | //   unspecified length as an ASCII string                             
;----------------------------------------------------------------------
        STR       A1, [SP, #0]          ; [DPU_3_PIPE] |276| 
	.dwpsn	file "../UART.c",line 279,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 279 | if(number >= 0x10){                                                    
;----------------------------------------------------------------------
        LDR       A1, [SP, #0]          ; [DPU_3_PIPE] |279| 
        CMP       A1, #16               ; [DPU_3_PIPE] |279| 
        BCC       ||$C$L35||            ; [DPU_3_PIPE] |279| 
        ; BRANCHCC OCCURS {||$C$L35||}   ; [] |279| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../UART.c",line 280,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 280 | UART_OutUHex(number/0x10);                                             
;----------------------------------------------------------------------
        LDR       A1, [SP, #0]          ; [DPU_3_PIPE] |280| 
        LSRS      A1, A1, #4            ; [DPU_3_PIPE] |280| 
$C$DW$109	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$109, DW_AT_low_pc(0x00)
	.dwattr $C$DW$109, DW_AT_name("UART_OutUHex")
	.dwattr $C$DW$109, DW_AT_TI_call
        BL        UART_OutUHex          ; [DPU_3_PIPE] |280| 
        ; CALL OCCURS {UART_OutUHex }    ; [] |280| 
	.dwpsn	file "../UART.c",line 281,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 281 | UART_OutUHex(number%0x10);                                             
;----------------------------------------------------------------------
        LDR       A1, [SP, #0]          ; [DPU_3_PIPE] |281| 
        AND       A1, A1, #15           ; [DPU_3_PIPE] |281| 
$C$DW$110	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$110, DW_AT_low_pc(0x00)
	.dwattr $C$DW$110, DW_AT_name("UART_OutUHex")
	.dwattr $C$DW$110, DW_AT_TI_call
        BL        UART_OutUHex          ; [DPU_3_PIPE] |281| 
        ; CALL OCCURS {UART_OutUHex }    ; [] |281| 
	.dwpsn	file "../UART.c",line 282,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 283 | else{                                                                  
;----------------------------------------------------------------------
        B         ||$C$L37||            ; [DPU_3_PIPE] |282| 
        ; BRANCH OCCURS {||$C$L37||}     ; [] |282| 
;* --------------------------------------------------------------------------*
||$C$L35||:    
	.dwpsn	file "../UART.c",line 284,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 284 | if(number < 0xA){                                                      
;----------------------------------------------------------------------
        LDR       A1, [SP, #0]          ; [DPU_3_PIPE] |284| 
        CMP       A1, #10               ; [DPU_3_PIPE] |284| 
        BCS       ||$C$L36||            ; [DPU_3_PIPE] |284| 
        ; BRANCHCC OCCURS {||$C$L36||}   ; [] |284| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../UART.c",line 285,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 285 | UART_OutChar(number+'0');                                              
;----------------------------------------------------------------------
        LDR       A1, [SP, #0]          ; [DPU_3_PIPE] |285| 
        ADDS      A1, A1, #48           ; [DPU_3_PIPE] |285| 
        UXTB      A1, A1                ; [DPU_3_PIPE] |285| 
$C$DW$111	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$111, DW_AT_low_pc(0x00)
	.dwattr $C$DW$111, DW_AT_name("UART_OutChar")
	.dwattr $C$DW$111, DW_AT_TI_call
        BL        UART_OutChar          ; [DPU_3_PIPE] |285| 
        ; CALL OCCURS {UART_OutChar }    ; [] |285| 
	.dwpsn	file "../UART.c",line 286,column 6,is_stmt,isa 1
;----------------------------------------------------------------------
; 287 | else{                                                                  
;----------------------------------------------------------------------
        B         ||$C$L37||            ; [DPU_3_PIPE] |286| 
        ; BRANCH OCCURS {||$C$L37||}     ; [] |286| 
;* --------------------------------------------------------------------------*
||$C$L36||:    
	.dwpsn	file "../UART.c",line 288,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 288 | UART_OutChar((number-0x0A)+'A');                                       
;----------------------------------------------------------------------
        LDR       A1, [SP, #0]          ; [DPU_3_PIPE] |288| 
        ADDS      A1, A1, #55           ; [DPU_3_PIPE] |288| 
        UXTB      A1, A1                ; [DPU_3_PIPE] |288| 
$C$DW$112	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$112, DW_AT_low_pc(0x00)
	.dwattr $C$DW$112, DW_AT_name("UART_OutChar")
	.dwattr $C$DW$112, DW_AT_TI_call
        BL        UART_OutChar          ; [DPU_3_PIPE] |288| 
        ; CALL OCCURS {UART_OutChar }    ; [] |288| 
	.dwpsn	file "../UART.c",line 291,column 1,is_stmt,isa 1
;* --------------------------------------------------------------------------*
||$C$L37||:    
$C$DW$113	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$113, DW_AT_low_pc(0x00)
	.dwattr $C$DW$113, DW_AT_TI_return
        POP       {A4, PC}              ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$106, DW_AT_TI_end_file("../UART.c")
	.dwattr $C$DW$106, DW_AT_TI_end_line(0x123)
	.dwattr $C$DW$106, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$106

;******************************************************************************
;* CONSTANT TABLE                                                             *
;******************************************************************************
	.sect	".text"
	.align	4
||$C$CON23||:	.bits	1073791036,32
	.align	4
||$C$CON24||:	.bits	1073791044,32
	.sect	".text"
	.clink
	.thumbfunc UART_InString
	.thumb
	.global	UART_InString

$C$DW$114	.dwtag  DW_TAG_subprogram, DW_AT_name("UART_InString")
	.dwattr $C$DW$114, DW_AT_low_pc(UART_InString)
	.dwattr $C$DW$114, DW_AT_high_pc(0x00)
	.dwattr $C$DW$114, DW_AT_TI_symbol_name("UART_InString")
	.dwattr $C$DW$114, DW_AT_external
	.dwattr $C$DW$114, DW_AT_TI_begin_file("../UART.c")
	.dwattr $C$DW$114, DW_AT_TI_begin_line(0x131)
	.dwattr $C$DW$114, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$114, DW_AT_decl_file("../UART.c")
	.dwattr $C$DW$114, DW_AT_decl_line(0x131)
	.dwattr $C$DW$114, DW_AT_decl_column(0x06)
	.dwattr $C$DW$114, DW_AT_TI_max_frame_size(0x18)
	.dwpsn	file "../UART.c",line 305,column 47,is_stmt,address UART_InString,isa 1

	.dwfde $C$DW$CIE, UART_InString
$C$DW$115	.dwtag  DW_TAG_formal_parameter, DW_AT_name("bufPt")
	.dwattr $C$DW$115, DW_AT_TI_symbol_name("bufPt")
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$115, DW_AT_location[DW_OP_reg0]
$C$DW$116	.dwtag  DW_TAG_formal_parameter, DW_AT_name("max")
	.dwattr $C$DW$116, DW_AT_TI_symbol_name("max")
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$116, DW_AT_location[DW_OP_reg1]

;*****************************************************************************
;* FUNCTION NAME: UART_InString                                              *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,SP,LR,SR,FPEXC,FPSCR                    *
;*   Regs Used         : A1,A2,A3,A4,SP,LR,SR,FPEXC,FPSCR                    *
;*   Local Frame Size  : 0 Args + 16 Auto + 4 Save = 20 byte                 *
;*****************************************************************************
UART_InString:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        PUSH      {LR}                  ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 4
	.dwcfi	save_reg_to_mem, 14, -4
        SUB       SP, SP, #20           ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 24
$C$DW$117	.dwtag  DW_TAG_variable, DW_AT_name("bufPt")
	.dwattr $C$DW$117, DW_AT_TI_symbol_name("bufPt")
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$117, DW_AT_location[DW_OP_breg13 0]
$C$DW$118	.dwtag  DW_TAG_variable, DW_AT_name("max")
	.dwattr $C$DW$118, DW_AT_TI_symbol_name("max")
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$118, DW_AT_location[DW_OP_breg13 4]
$C$DW$119	.dwtag  DW_TAG_variable, DW_AT_name("length")
	.dwattr $C$DW$119, DW_AT_TI_symbol_name("length")
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$119, DW_AT_location[DW_OP_breg13 8]
$C$DW$120	.dwtag  DW_TAG_variable, DW_AT_name("character")
	.dwattr $C$DW$120, DW_AT_TI_symbol_name("character")
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$120, DW_AT_location[DW_OP_breg13 12]
;----------------------------------------------------------------------
; 305 | void UART_InString(char *bufPt, uint16_t max) {                        
;----------------------------------------------------------------------
        STRH      A2, [SP, #4]          ; [DPU_3_PIPE] |305| 
        STR       A1, [SP, #0]          ; [DPU_3_PIPE] |305| 
	.dwpsn	file "../UART.c",line 306,column 11,is_stmt,isa 1
;----------------------------------------------------------------------
; 306 | int length=0;                                                          
; 307 | char character;                                                        
;----------------------------------------------------------------------
        MOVS      A1, #0                ; [DPU_3_PIPE] |306| 
        STR       A1, [SP, #8]          ; [DPU_3_PIPE] |306| 
	.dwpsn	file "../UART.c",line 308,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 308 | character = UART_InChar();                                             
;----------------------------------------------------------------------
$C$DW$121	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$121, DW_AT_low_pc(0x00)
	.dwattr $C$DW$121, DW_AT_name("UART_InChar")
	.dwattr $C$DW$121, DW_AT_TI_call
        BL        UART_InChar           ; [DPU_3_PIPE] |308| 
        ; CALL OCCURS {UART_InChar }     ; [] |308| 
        STRB      A1, [SP, #12]         ; [DPU_3_PIPE] |308| 
	.dwpsn	file "../UART.c",line 309,column 9,is_stmt,isa 1
;----------------------------------------------------------------------
; 309 | while(character != CR){                                                
;----------------------------------------------------------------------
        LDRB      A1, [SP, #12]         ; [DPU_3_PIPE] |309| 
        CMP       A1, #13               ; [DPU_3_PIPE] |309| 
        BEQ       ||$C$L41||            ; [DPU_3_PIPE] |309| 
        ; BRANCHCC OCCURS {||$C$L41||}   ; [] |309| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L38||
;*
;*   Loop source line                : 309
;*   Loop closing brace source line  : 324
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L38||:    
	.dwpsn	file "../UART.c",line 310,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 310 | if(character == BS){                                                   
;----------------------------------------------------------------------
        LDRB      A1, [SP, #12]         ; [DPU_3_PIPE] |310| 
        CMP       A1, #8                ; [DPU_3_PIPE] |310| 
        BNE       ||$C$L39||            ; [DPU_3_PIPE] |310| 
        ; BRANCHCC OCCURS {||$C$L39||}   ; [] |310| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../UART.c",line 311,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 311 | if(length){                                                            
;----------------------------------------------------------------------
        LDR       A1, [SP, #8]          ; [DPU_3_PIPE] |311| 
        CBZ       A1, ||$C$L40||        ; [] 
        ; BRANCHCC OCCURS {||$C$L40||}   ; [] |311| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../UART.c",line 312,column 9,is_stmt,isa 1
;----------------------------------------------------------------------
; 312 | bufPt--;                                                               
;----------------------------------------------------------------------
        LDR       A1, [SP, #0]          ; [DPU_3_PIPE] |312| 
        SUBS      A1, A1, #1            ; [DPU_3_PIPE] |312| 
        STR       A1, [SP, #0]          ; [DPU_3_PIPE] |312| 
	.dwpsn	file "../UART.c",line 313,column 9,is_stmt,isa 1
;----------------------------------------------------------------------
; 313 | length--;                                                              
;----------------------------------------------------------------------
        LDR       A1, [SP, #8]          ; [DPU_3_PIPE] |313| 
        SUBS      A1, A1, #1            ; [DPU_3_PIPE] |313| 
        STR       A1, [SP, #8]          ; [DPU_3_PIPE] |313| 
	.dwpsn	file "../UART.c",line 314,column 9,is_stmt,isa 1
;----------------------------------------------------------------------
; 314 | UART_OutChar(BS);                                                      
;----------------------------------------------------------------------
        MOVS      A1, #8                ; [DPU_3_PIPE] |314| 
$C$DW$122	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$122, DW_AT_low_pc(0x00)
	.dwattr $C$DW$122, DW_AT_name("UART_OutChar")
	.dwattr $C$DW$122, DW_AT_TI_call
        BL        UART_OutChar          ; [DPU_3_PIPE] |314| 
        ; CALL OCCURS {UART_OutChar }    ; [] |314| 
	.dwpsn	file "../UART.c",line 316,column 5,is_stmt,isa 1
        B         ||$C$L40||            ; [DPU_3_PIPE] |316| 
        ; BRANCH OCCURS {||$C$L40||}     ; [] |316| 
;* --------------------------------------------------------------------------*
||$C$L39||:    
	.dwpsn	file "../UART.c",line 317,column 10,is_stmt,isa 1
;----------------------------------------------------------------------
; 317 | else if(length < max){                                                 
;----------------------------------------------------------------------
        LDRH      A1, [SP, #4]          ; [DPU_3_PIPE] |317| 
        LDR       A2, [SP, #8]          ; [DPU_3_PIPE] |317| 
        CMP       A1, A2                ; [DPU_3_PIPE] |317| 
        BLE       ||$C$L40||            ; [DPU_3_PIPE] |317| 
        ; BRANCHCC OCCURS {||$C$L40||}   ; [] |317| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../UART.c",line 318,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 318 | *bufPt = character;                                                    
;----------------------------------------------------------------------
        LDRB      A1, [SP, #12]         ; [DPU_3_PIPE] |318| 
        LDR       A2, [SP, #0]          ; [DPU_3_PIPE] |318| 
        STRB      A1, [A2, #0]          ; [DPU_3_PIPE] |318| 
	.dwpsn	file "../UART.c",line 319,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 319 | bufPt++;                                                               
;----------------------------------------------------------------------
        LDR       A1, [SP, #0]          ; [DPU_3_PIPE] |319| 
        ADDS      A1, A1, #1            ; [DPU_3_PIPE] |319| 
        STR       A1, [SP, #0]          ; [DPU_3_PIPE] |319| 
	.dwpsn	file "../UART.c",line 320,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 320 | length++;                                                              
;----------------------------------------------------------------------
        LDR       A1, [SP, #8]          ; [DPU_3_PIPE] |320| 
        ADDS      A1, A1, #1            ; [DPU_3_PIPE] |320| 
        STR       A1, [SP, #8]          ; [DPU_3_PIPE] |320| 
	.dwpsn	file "../UART.c",line 321,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
; 321 | UART_OutChar(character);                                               
;----------------------------------------------------------------------
        LDRB      A1, [SP, #12]         ; [DPU_3_PIPE] |321| 
$C$DW$123	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$123, DW_AT_low_pc(0x00)
	.dwattr $C$DW$123, DW_AT_name("UART_OutChar")
	.dwattr $C$DW$123, DW_AT_TI_call
        BL        UART_OutChar          ; [DPU_3_PIPE] |321| 
        ; CALL OCCURS {UART_OutChar }    ; [] |321| 
;* --------------------------------------------------------------------------*
||$C$L40||:    
	.dwpsn	file "../UART.c",line 323,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 323 | character = UART_InChar();                                             
;----------------------------------------------------------------------
$C$DW$124	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$124, DW_AT_low_pc(0x00)
	.dwattr $C$DW$124, DW_AT_name("UART_InChar")
	.dwattr $C$DW$124, DW_AT_TI_call
        BL        UART_InChar           ; [DPU_3_PIPE] |323| 
        ; CALL OCCURS {UART_InChar }     ; [] |323| 
        STRB      A1, [SP, #12]         ; [DPU_3_PIPE] |323| 
	.dwpsn	file "../UART.c",line 309,column 9,is_stmt,isa 1
        LDRB      A1, [SP, #12]         ; [DPU_3_PIPE] |309| 
        CMP       A1, #13               ; [DPU_3_PIPE] |309| 
        BNE       ||$C$L38||            ; [DPU_3_PIPE] |309| 
        ; BRANCHCC OCCURS {||$C$L38||}   ; [] |309| 
;* --------------------------------------------------------------------------*
||$C$L41||:    
	.dwpsn	file "../UART.c",line 325,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 325 | *bufPt = 0;                                                            
;----------------------------------------------------------------------
        LDR       A1, [SP, #0]          ; [DPU_3_PIPE] |325| 
        MOVS      A2, #0                ; [DPU_3_PIPE] |325| 
        STRB      A2, [A1, #0]          ; [DPU_3_PIPE] |325| 
	.dwpsn	file "../UART.c",line 326,column 1,is_stmt,isa 1
        ADD       SP, SP, #20           ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 4
$C$DW$125	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$125, DW_AT_low_pc(0x00)
	.dwattr $C$DW$125, DW_AT_TI_return
        POP       {PC}                  ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$114, DW_AT_TI_end_file("../UART.c")
	.dwattr $C$DW$114, DW_AT_TI_end_line(0x146)
	.dwattr $C$DW$114, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$114

;*****************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                             *
;*****************************************************************************
	.global	StartCritical
	.global	EndCritical

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
$C$DW$T$33	.dwtag  DW_TAG_typedef, DW_AT_name("int8_t")
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$5)
	.dwattr $C$DW$T$33, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$33, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$33, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$T$33, DW_AT_decl_column(0x1d)
$C$DW$T$34	.dwtag  DW_TAG_typedef, DW_AT_name("int_least8_t")
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$34, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$34, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$34, DW_AT_decl_line(0x37)
	.dwattr $C$DW$T$34, DW_AT_decl_column(0x17)
$C$DW$T$6	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$6, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$6, DW_AT_byte_size(0x01)
$C$DW$T$35	.dwtag  DW_TAG_typedef, DW_AT_name("uint8_t")
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$35, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$35, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$35, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$T$35, DW_AT_decl_column(0x1c)
$C$DW$T$36	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least8_t")
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$T$36, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$36, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$36, DW_AT_decl_line(0x38)
	.dwattr $C$DW$T$36, DW_AT_decl_column(0x16)
$C$DW$T$7	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$7, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$7, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$7, DW_AT_byte_size(0x02)
$C$DW$T$8	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$8, DW_AT_name("short")
	.dwattr $C$DW$T$8, DW_AT_byte_size(0x02)
$C$DW$T$37	.dwtag  DW_TAG_typedef, DW_AT_name("int16_t")
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$37, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$37, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$37, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$T$37, DW_AT_decl_column(0x1d)
$C$DW$T$38	.dwtag  DW_TAG_typedef, DW_AT_name("int_least16_t")
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$38, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$38, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$38, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$T$38, DW_AT_decl_column(0x17)
$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x02)
$C$DW$T$31	.dwtag  DW_TAG_typedef, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$31, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$31, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$31, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$T$31, DW_AT_decl_column(0x1c)
$C$DW$T$41	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least16_t")
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$T$41, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$41, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$41, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$T$41, DW_AT_decl_column(0x16)
$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x04)
$C$DW$T$46	.dwtag  DW_TAG_typedef, DW_AT_name("int32_t")
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$46, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$46, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$46, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$T$46, DW_AT_decl_column(0x1d)
$C$DW$T$47	.dwtag  DW_TAG_typedef, DW_AT_name("int_fast16_t")
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$T$47, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$47, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$47, DW_AT_decl_line(0x47)
	.dwattr $C$DW$T$47, DW_AT_decl_column(0x17)
$C$DW$T$48	.dwtag  DW_TAG_typedef, DW_AT_name("int_fast32_t")
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$T$48, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$48, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$48, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$T$48, DW_AT_decl_column(0x17)
$C$DW$T$49	.dwtag  DW_TAG_typedef, DW_AT_name("int_fast8_t")
	.dwattr $C$DW$T$49, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$T$49, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$49, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$49, DW_AT_decl_line(0x45)
	.dwattr $C$DW$T$49, DW_AT_decl_column(0x17)
$C$DW$T$50	.dwtag  DW_TAG_typedef, DW_AT_name("int_least32_t")
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$T$50, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$50, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$50, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$T$50, DW_AT_decl_column(0x17)
$C$DW$T$51	.dwtag  DW_TAG_typedef, DW_AT_name("intptr_t")
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$51, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$51, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$51, DW_AT_decl_line(0x52)
	.dwattr $C$DW$T$51, DW_AT_decl_column(0x1a)
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x04)
$C$DW$T$28	.dwtag  DW_TAG_typedef, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$28, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$28, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$28, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$T$28, DW_AT_decl_column(0x1c)
$C$DW$T$53	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$53, DW_AT_type(*$C$DW$T$28)
$C$DW$T$55	.dwtag  DW_TAG_typedef, DW_AT_name("uint_fast16_t")
	.dwattr $C$DW$T$55, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$55, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$55, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$55, DW_AT_decl_line(0x48)
	.dwattr $C$DW$T$55, DW_AT_decl_column(0x16)
$C$DW$T$56	.dwtag  DW_TAG_typedef, DW_AT_name("uint_fast32_t")
	.dwattr $C$DW$T$56, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$56, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$56, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$56, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$T$56, DW_AT_decl_column(0x16)
$C$DW$T$57	.dwtag  DW_TAG_typedef, DW_AT_name("uint_fast8_t")
	.dwattr $C$DW$T$57, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$57, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$57, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$57, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$57, DW_AT_decl_column(0x16)
$C$DW$T$58	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least32_t")
	.dwattr $C$DW$T$58, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$58, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$58, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$58, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$T$58, DW_AT_decl_column(0x16)
$C$DW$T$59	.dwtag  DW_TAG_typedef, DW_AT_name("uintptr_t")
	.dwattr $C$DW$T$59, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$59, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$59, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$59, DW_AT_decl_line(0x53)
	.dwattr $C$DW$T$59, DW_AT_decl_column(0x1a)
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
$C$DW$T$62	.dwtag  DW_TAG_typedef, DW_AT_name("int64_t")
	.dwattr $C$DW$T$62, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$T$62, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$62, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$62, DW_AT_decl_line(0x32)
	.dwattr $C$DW$T$62, DW_AT_decl_column(0x21)
$C$DW$T$63	.dwtag  DW_TAG_typedef, DW_AT_name("int_fast64_t")
	.dwattr $C$DW$T$63, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$T$63, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$63, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$63, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$T$63, DW_AT_decl_column(0x17)
$C$DW$T$64	.dwtag  DW_TAG_typedef, DW_AT_name("int_least64_t")
	.dwattr $C$DW$T$64, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$T$64, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$64, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$64, DW_AT_decl_line(0x40)
	.dwattr $C$DW$T$64, DW_AT_decl_column(0x17)
$C$DW$T$65	.dwtag  DW_TAG_typedef, DW_AT_name("intmax_t")
	.dwattr $C$DW$T$65, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$T$65, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$65, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$65, DW_AT_decl_line(0x56)
	.dwattr $C$DW$T$65, DW_AT_decl_column(0x20)
$C$DW$T$15	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$15, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$15, DW_AT_name("unsigned long long")
	.dwattr $C$DW$T$15, DW_AT_byte_size(0x08)
$C$DW$T$66	.dwtag  DW_TAG_typedef, DW_AT_name("uint64_t")
	.dwattr $C$DW$T$66, DW_AT_type(*$C$DW$T$15)
	.dwattr $C$DW$T$66, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$66, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$66, DW_AT_decl_line(0x33)
	.dwattr $C$DW$T$66, DW_AT_decl_column(0x20)
$C$DW$T$67	.dwtag  DW_TAG_typedef, DW_AT_name("uint_fast64_t")
	.dwattr $C$DW$T$67, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$T$67, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$67, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$67, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$T$67, DW_AT_decl_column(0x16)
$C$DW$T$68	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least64_t")
	.dwattr $C$DW$T$68, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$T$68, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$68, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$68, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$68, DW_AT_decl_column(0x16)
$C$DW$T$69	.dwtag  DW_TAG_typedef, DW_AT_name("uintmax_t")
	.dwattr $C$DW$T$69, DW_AT_type(*$C$DW$T$15)
	.dwattr $C$DW$T$69, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$69, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$69, DW_AT_decl_line(0x57)
	.dwattr $C$DW$T$69, DW_AT_decl_column(0x20)
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
$C$DW$T$26	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$26, DW_AT_address_class(0x20)
$C$DW$T$70	.dwtag  DW_TAG_typedef, DW_AT_name("__builtin_va_list")
	.dwattr $C$DW$T$70, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$70, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$70, DW_AT_decl_file("../UART.c")
	.dwattr $C$DW$T$70, DW_AT_decl_line(0x146)
	.dwattr $C$DW$T$70, DW_AT_decl_column(0x01)

$C$DW$T$73	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$73, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$73, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$73, DW_AT_byte_size(0x10)
$C$DW$126	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$126, DW_AT_upper_bound(0x0f)
	.dwendtag $C$DW$T$73


$C$DW$T$74	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$74, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$74, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$74, DW_AT_byte_size(0x400)
$C$DW$127	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$127, DW_AT_upper_bound(0x3ff)
	.dwendtag $C$DW$T$74

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

