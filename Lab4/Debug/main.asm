;******************************************************************************
;* TI ARM C/C++ Codegen                                             PC v5.2.4 *
;* Date/Time created: Thu Sep 17 23:20:50 2015                                *
;******************************************************************************
	.compiler_opts --abi=eabi --arm_vmrs_si_workaround=off --code_state=16 --diag_wrap=off --disable_dual_state --embedded_constants=on --endian=little --float_support=FPv4SPD16 --hll_source=on --object_format=elf --silicon_version=7M4 --symdebug:dwarf --symdebug:dwarf_version=3 --unaligned_access=on 
	.thumb

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../main.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TI ARM C/C++ Codegen PC v5.2.4 Copyright (c) 1996-2015 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Dropbox\ArmBook\LaunchPad\ValvanoWareTM4C123\ESP8266_4C123\Debug")

$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("fopen")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("fopen")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdio.h")
	.dwattr $C$DW$1, DW_AT_decl_line(0xe6)
	.dwattr $C$DW$1, DW_AT_decl_column(0x1d)
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$29)
$C$DW$3	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$29)
	.dwendtag $C$DW$1


$C$DW$4	.dwtag  DW_TAG_subprogram, DW_AT_name("freopen")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("freopen")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$4, DW_AT_declaration
	.dwattr $C$DW$4, DW_AT_external
	.dwattr $C$DW$4, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdio.h")
	.dwattr $C$DW$4, DW_AT_decl_line(0xe7)
	.dwattr $C$DW$4, DW_AT_decl_column(0x1d)
$C$DW$5	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$29)
$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$29)
$C$DW$7	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$26)
	.dwendtag $C$DW$4


$C$DW$8	.dwtag  DW_TAG_subprogram, DW_AT_name("setvbuf")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("setvbuf")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$8, DW_AT_declaration
	.dwattr $C$DW$8, DW_AT_external
	.dwattr $C$DW$8, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdio.h")
	.dwattr $C$DW$8, DW_AT_decl_line(0xea)
	.dwattr $C$DW$8, DW_AT_decl_column(0x1d)
$C$DW$9	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$26)
$C$DW$10	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$60)
$C$DW$11	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$10)
$C$DW$12	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$61)
	.dwendtag $C$DW$8


$C$DW$13	.dwtag  DW_TAG_subprogram, DW_AT_name("printf")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("printf")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$13, DW_AT_declaration
	.dwattr $C$DW$13, DW_AT_external
	.dwattr $C$DW$13, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdio.h")
	.dwattr $C$DW$13, DW_AT_decl_line(0xf5)
	.dwattr $C$DW$13, DW_AT_decl_column(0x19)
$C$DW$14	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$29)
$C$DW$15	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag $C$DW$13


$C$DW$16	.dwtag  DW_TAG_subprogram, DW_AT_name("PLL_Init")
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("PLL_Init")
	.dwattr $C$DW$16, DW_AT_declaration
	.dwattr $C$DW$16, DW_AT_external
	.dwattr $C$DW$16, DW_AT_decl_file("..\pll.h")
	.dwattr $C$DW$16, DW_AT_decl_line(0x1f)
	.dwattr $C$DW$16, DW_AT_decl_column(0x06)
$C$DW$17	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$38)
	.dwendtag $C$DW$16


$C$DW$18	.dwtag  DW_TAG_subprogram, DW_AT_name("UART_Init")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("UART_Init")
	.dwattr $C$DW$18, DW_AT_declaration
	.dwattr $C$DW$18, DW_AT_external
	.dwattr $C$DW$18, DW_AT_decl_file("..\UART.h")
	.dwattr $C$DW$18, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$18, DW_AT_decl_column(0x06)

$C$DW$19	.dwtag  DW_TAG_subprogram, DW_AT_name("UART_InChar")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("UART_InChar")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$19, DW_AT_declaration
	.dwattr $C$DW$19, DW_AT_external
	.dwattr $C$DW$19, DW_AT_decl_file("..\UART.h")
	.dwattr $C$DW$19, DW_AT_decl_line(0x31)
	.dwattr $C$DW$19, DW_AT_decl_column(0x06)

$C$DW$20	.dwtag  DW_TAG_subprogram, DW_AT_name("UART_OutChar")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("UART_OutChar")
	.dwattr $C$DW$20, DW_AT_declaration
	.dwattr $C$DW$20, DW_AT_external
	.dwattr $C$DW$20, DW_AT_decl_file("..\UART.h")
	.dwattr $C$DW$20, DW_AT_decl_line(0x37)
	.dwattr $C$DW$20, DW_AT_decl_column(0x06)
$C$DW$21	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$6)
	.dwendtag $C$DW$20


$C$DW$22	.dwtag  DW_TAG_subprogram, DW_AT_name("SysTick_Init")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("SysTick_Init")
	.dwattr $C$DW$22, DW_AT_declaration
	.dwattr $C$DW$22, DW_AT_external
	.dwattr $C$DW$22, DW_AT_decl_file("..\systick.h")
	.dwattr $C$DW$22, DW_AT_decl_line(0x23)
	.dwattr $C$DW$22, DW_AT_decl_column(0x06)
$C$DW$23	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$38)
	.dwendtag $C$DW$22


$C$DW$24	.dwtag  DW_TAG_subprogram, DW_AT_name("ESP8266_Init")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("ESP8266_Init")
	.dwattr $C$DW$24, DW_AT_declaration
	.dwattr $C$DW$24, DW_AT_external
	.dwattr $C$DW$24, DW_AT_decl_file("..\esp8266.h")
	.dwattr $C$DW$24, DW_AT_decl_line(0x23)
	.dwattr $C$DW$24, DW_AT_decl_column(0x06)

$C$DW$25	.dwtag  DW_TAG_subprogram, DW_AT_name("ESP8266_CloseTCPConnection")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("ESP8266_CloseTCPConnection")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$25, DW_AT_declaration
	.dwattr $C$DW$25, DW_AT_external
	.dwattr $C$DW$25, DW_AT_decl_file("..\esp8266.h")
	.dwattr $C$DW$25, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$25, DW_AT_decl_column(0x05)

$C$DW$26	.dwtag  DW_TAG_subprogram, DW_AT_name("ESP8266_MakeTCPConnection")
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("ESP8266_MakeTCPConnection")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$26, DW_AT_declaration
	.dwattr $C$DW$26, DW_AT_external
	.dwattr $C$DW$26, DW_AT_decl_file("..\esp8266.h")
	.dwattr $C$DW$26, DW_AT_decl_line(0x64)
	.dwattr $C$DW$26, DW_AT_decl_column(0x05)

$C$DW$27	.dwtag  DW_TAG_subprogram, DW_AT_name("ESP8266_SendTCP")
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("ESP8266_SendTCP")
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$27, DW_AT_declaration
	.dwattr $C$DW$27, DW_AT_external
	.dwattr $C$DW$27, DW_AT_decl_file("..\esp8266.h")
	.dwattr $C$DW$27, DW_AT_decl_line(0x6a)
	.dwattr $C$DW$27, DW_AT_decl_column(0x05)

$C$DW$28	.dwtag  DW_TAG_subprogram, DW_AT_name("ESP8266_GetStatus")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("ESP8266_GetStatus")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$28, DW_AT_declaration
	.dwattr $C$DW$28, DW_AT_external
	.dwattr $C$DW$28, DW_AT_decl_file("..\esp8266.h")
	.dwattr $C$DW$28, DW_AT_decl_line(0x76)
	.dwattr $C$DW$28, DW_AT_decl_column(0x05)

$C$DW$29	.dwtag  DW_TAG_subprogram, DW_AT_name("LED_Init")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("LED_Init")
	.dwattr $C$DW$29, DW_AT_declaration
	.dwattr $C$DW$29, DW_AT_external
	.dwattr $C$DW$29, DW_AT_decl_file("..\LED.h")
	.dwattr $C$DW$29, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$29, DW_AT_decl_column(0x06)

$C$DW$30	.dwtag  DW_TAG_subprogram, DW_AT_name("Board_Input")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("Board_Input")
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$30, DW_AT_declaration
	.dwattr $C$DW$30, DW_AT_external
	.dwattr $C$DW$30, DW_AT_decl_file("..\LED.h")
	.dwattr $C$DW$30, DW_AT_decl_line(0x34)
	.dwattr $C$DW$30, DW_AT_decl_column(0x0a)

$C$DW$31	.dwtag  DW_TAG_subprogram, DW_AT_name("LED_RedToggle")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("LED_RedToggle")
	.dwattr $C$DW$31, DW_AT_declaration
	.dwattr $C$DW$31, DW_AT_external
	.dwattr $C$DW$31, DW_AT_decl_file("..\LED.h")
	.dwattr $C$DW$31, DW_AT_decl_line(0x47)
	.dwattr $C$DW$31, DW_AT_decl_column(0x06)

$C$DW$32	.dwtag  DW_TAG_subprogram, DW_AT_name("LED_GreenOn")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("LED_GreenOn")
	.dwattr $C$DW$32, DW_AT_declaration
	.dwattr $C$DW$32, DW_AT_external
	.dwattr $C$DW$32, DW_AT_decl_file("..\LED.h")
	.dwattr $C$DW$32, DW_AT_decl_line(0x5a)
	.dwattr $C$DW$32, DW_AT_decl_column(0x06)

$C$DW$33	.dwtag  DW_TAG_subprogram, DW_AT_name("LED_GreenOff")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("LED_GreenOff")
	.dwattr $C$DW$33, DW_AT_declaration
	.dwattr $C$DW$33, DW_AT_external
	.dwattr $C$DW$33, DW_AT_decl_file("..\LED.h")
	.dwattr $C$DW$33, DW_AT_decl_line(0x60)
	.dwattr $C$DW$33, DW_AT_decl_column(0x06)

$C$DW$34	.dwtag  DW_TAG_subprogram, DW_AT_name("DisableInterrupts")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("DisableInterrupts")
	.dwattr $C$DW$34, DW_AT_declaration
	.dwattr $C$DW$34, DW_AT_external
	.dwattr $C$DW$34, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$34, DW_AT_decl_line(0x1e)
	.dwattr $C$DW$34, DW_AT_decl_column(0x06)

$C$DW$35	.dwtag  DW_TAG_subprogram, DW_AT_name("WaitForInterrupt")
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("WaitForInterrupt")
	.dwattr $C$DW$35, DW_AT_declaration
	.dwattr $C$DW$35, DW_AT_external
	.dwattr $C$DW$35, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$35, DW_AT_decl_line(0x22)
	.dwattr $C$DW$35, DW_AT_decl_column(0x06)

$C$DW$36	.dwtag  DW_TAG_subprogram, DW_AT_name("add_device")
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("add_device")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$36, DW_AT_declaration
	.dwattr $C$DW$36, DW_AT_external
	.dwattr $C$DW$36, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/file.h")
	.dwattr $C$DW$36, DW_AT_decl_line(0x5a)
	.dwattr $C$DW$36, DW_AT_decl_column(0x18)
$C$DW$37	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$60)
$C$DW$38	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$11)
$C$DW$39	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$70)
$C$DW$40	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$72)
$C$DW$41	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$74)
$C$DW$42	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$76)
$C$DW$43	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$83)
$C$DW$44	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$78)
$C$DW$45	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$80)
	.dwendtag $C$DW$36

$C$DW$46	.dwtag  DW_TAG_variable, DW_AT_name("_ftable")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("_ftable")
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$46, DW_AT_declaration
	.dwattr $C$DW$46, DW_AT_external
	.dwattr $C$DW$46, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdio.h")
	.dwattr $C$DW$46, DW_AT_decl_line(0xd4)
	.dwattr $C$DW$46, DW_AT_decl_column(0x1a)
	.global	Msec
	.data
	.align	4
	.elfsym	Msec,SYM_SIZE(4)
Msec:
	.bits	0,32			; Msec @ 0

$C$DW$47	.dwtag  DW_TAG_variable, DW_AT_name("Msec")
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("Msec")
	.dwattr $C$DW$47, DW_AT_location[DW_OP_addr Msec]
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$98)
	.dwattr $C$DW$47, DW_AT_external
	.dwattr $C$DW$47, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$47, DW_AT_decl_line(0x25)
	.dwattr $C$DW$47, DW_AT_decl_column(0x13)
	.global	Seconds
	.data
	.align	4
	.elfsym	Seconds,SYM_SIZE(4)
Seconds:
	.bits	0,32			; Seconds @ 0

$C$DW$48	.dwtag  DW_TAG_variable, DW_AT_name("Seconds")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("Seconds")
	.dwattr $C$DW$48, DW_AT_location[DW_OP_addr Seconds]
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$98)
	.dwattr $C$DW$48, DW_AT_external
	.dwattr $C$DW$48, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$48, DW_AT_decl_line(0x26)
	.dwattr $C$DW$48, DW_AT_decl_column(0x13)
;	C:\ti\ccsv6\tools\compiler\ti-cgt-arm_5.2.4\bin\armacpia.exe -@C:\\Users\\VALVAN~1\\AppData\\Local\\Temp\\0323612 
	.sect	".text"
	.clink
	.thumbfunc main
	.thumb
	.global	main

$C$DW$49	.dwtag  DW_TAG_subprogram, DW_AT_name("main")
	.dwattr $C$DW$49, DW_AT_low_pc(main)
	.dwattr $C$DW$49, DW_AT_high_pc(0x00)
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("main")
	.dwattr $C$DW$49, DW_AT_external
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$49, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$49, DW_AT_TI_begin_line(0x28)
	.dwattr $C$DW$49, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$49, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$49, DW_AT_decl_line(0x28)
	.dwattr $C$DW$49, DW_AT_decl_column(0x05)
	.dwattr $C$DW$49, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../main.c",line 40,column 15,is_stmt,address main,isa 1

	.dwfde $C$DW$CIE, main
;----------------------------------------------------------------------
;  40 | int main(void){                                                        
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
	.dwpsn	file "../main.c",line 41,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  41 | DisableInterrupts();                                                   
;----------------------------------------------------------------------
$C$DW$50	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$50, DW_AT_low_pc(0x00)
	.dwattr $C$DW$50, DW_AT_name("DisableInterrupts")
	.dwattr $C$DW$50, DW_AT_TI_call
        BL        DisableInterrupts     ; [DPU_3_PIPE] |41| 
        ; CALL OCCURS {DisableInterrupts }  ; [] |41| 
	.dwpsn	file "../main.c",line 42,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  42 | PLL_Init(Bus80MHz);                                                    
;----------------------------------------------------------------------
        MOVS      A1, #4                ; [DPU_3_PIPE] |42| 
$C$DW$51	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$51, DW_AT_low_pc(0x00)
	.dwattr $C$DW$51, DW_AT_name("PLL_Init")
	.dwattr $C$DW$51, DW_AT_TI_call
        BL        PLL_Init              ; [DPU_3_PIPE] |42| 
        ; CALL OCCURS {PLL_Init }        ; [] |42| 
	.dwpsn	file "../main.c",line 43,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  43 | LED_Init();                                                            
;----------------------------------------------------------------------
$C$DW$52	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$52, DW_AT_low_pc(0x00)
	.dwattr $C$DW$52, DW_AT_name("LED_Init")
	.dwattr $C$DW$52, DW_AT_TI_call
        BL        LED_Init              ; [DPU_3_PIPE] |43| 
        ; CALL OCCURS {LED_Init }        ; [] |43| 
	.dwpsn	file "../main.c",line 44,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  44 | SysTick_Init(80000); // interrupt every 1ms (every 80000 cycles)       
;----------------------------------------------------------------------
        LDR       A1, $C$CON1           ; [DPU_3_PIPE] |44| 
$C$DW$53	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$53, DW_AT_low_pc(0x00)
	.dwattr $C$DW$53, DW_AT_name("SysTick_Init")
	.dwattr $C$DW$53, DW_AT_TI_call
        BL        SysTick_Init          ; [DPU_3_PIPE] |44| 
        ; CALL OCCURS {SysTick_Init }    ; [] |44| 
	.dwpsn	file "../main.c",line 45,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  45 | Output_Init();       // UART0 only used for debugging                  
;----------------------------------------------------------------------
$C$DW$54	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$54, DW_AT_low_pc(0x00)
	.dwattr $C$DW$54, DW_AT_name("Output_Init")
	.dwattr $C$DW$54, DW_AT_TI_call
        BL        Output_Init           ; [DPU_3_PIPE] |45| 
        ; CALL OCCURS {Output_Init }     ; [] |45| 
	.dwpsn	file "../main.c",line 46,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  46 | printf("\n\r-----------\n\rSystem starting...\n\r");                   
;----------------------------------------------------------------------
        ADR       A1, $C$SL1            ; [DPU_3_PIPE] |46| 
$C$DW$55	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$55, DW_AT_low_pc(0x00)
	.dwattr $C$DW$55, DW_AT_name("printf")
	.dwattr $C$DW$55, DW_AT_TI_call
        BL        printf                ; [DPU_3_PIPE] |46| 
        ; CALL OCCURS {printf }          ; [] |46| 
	.dwpsn	file "../main.c",line 47,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  47 | ESP8266_Init();      // global enable interrupts                       
;----------------------------------------------------------------------
$C$DW$56	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$56, DW_AT_low_pc(0x00)
	.dwattr $C$DW$56, DW_AT_name("ESP8266_Init")
	.dwattr $C$DW$56, DW_AT_TI_call
        BL        ESP8266_Init          ; [DPU_3_PIPE] |47| 
        ; CALL OCCURS {ESP8266_Init }    ; [] |47| 
	.dwpsn	file "../main.c",line 48,column 9,is_stmt,isa 1
;----------------------------------------------------------------------
;  48 | while(1){                                                              
;----------------------------------------------------------------------
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L1||
;*
;*   Loop source line                : 48
;*   Loop closing brace source line  : 62
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L1||:    
	.dwpsn	file "../main.c",line 49,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
;  49 | ESP8266_GetStatus();                                                   
;----------------------------------------------------------------------
$C$DW$57	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$57, DW_AT_low_pc(0x00)
	.dwattr $C$DW$57, DW_AT_name("ESP8266_GetStatus")
	.dwattr $C$DW$57, DW_AT_TI_call
        BL        ESP8266_GetStatus     ; [DPU_3_PIPE] |49| 
        ; CALL OCCURS {ESP8266_GetStatus }  ; [] |49| 
	.dwpsn	file "../main.c",line 50,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
;  50 | if(ESP8266_MakeTCPConnection()==0){ // data streamed to UART0          
;----------------------------------------------------------------------
$C$DW$58	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$58, DW_AT_low_pc(0x00)
	.dwattr $C$DW$58, DW_AT_name("ESP8266_MakeTCPConnection")
	.dwattr $C$DW$58, DW_AT_TI_call
        BL        ESP8266_MakeTCPConnection ; [DPU_3_PIPE] |50| 
        ; CALL OCCURS {ESP8266_MakeTCPConnection }  ; [] |50| 
        CBNZ      A1, ||$C$L3||         ; [] 
        ; BRANCHCC OCCURS {||$C$L3||}    ; [] |50| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main.c",line 51,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
;  51 | printf("MakeTCPConnection, could not make connection\n\r");            
;----------------------------------------------------------------------
        ADR       A1, $C$SL2            ; [DPU_3_PIPE] |51| 
$C$DW$59	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$59, DW_AT_low_pc(0x00)
	.dwattr $C$DW$59, DW_AT_name("printf")
	.dwattr $C$DW$59, DW_AT_TI_call
        BL        printf                ; [DPU_3_PIPE] |51| 
        ; CALL OCCURS {printf }          ; [] |51| 
	.dwpsn	file "../main.c",line 52,column 13,is_stmt,isa 1
;----------------------------------------------------------------------
;  52 | while(1){};                                                            
;----------------------------------------------------------------------
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L2||
;*
;*   Loop source line                : 52
;*   Loop closing brace source line  : 52
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L2||:    
        B         ||$C$L2||             ; [DPU_3_PIPE] |52| 
        ; BRANCH OCCURS {||$C$L2||}      ; [] |52| 
;* --------------------------------------------------------------------------*
||$C$L3||:    
	.dwpsn	file "../main.c",line 54,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
;  54 | LED_GreenOn();                                                         
;----------------------------------------------------------------------
$C$DW$60	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$60, DW_AT_low_pc(0x00)
	.dwattr $C$DW$60, DW_AT_name("LED_GreenOn")
	.dwattr $C$DW$60, DW_AT_TI_call
        BL        LED_GreenOn           ; [DPU_3_PIPE] |54| 
        ; CALL OCCURS {LED_GreenOn }     ; [] |54| 
	.dwpsn	file "../main.c",line 55,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
;  55 | ESP8266_SendTCP();                                                     
;----------------------------------------------------------------------
$C$DW$61	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$61, DW_AT_low_pc(0x00)
	.dwattr $C$DW$61, DW_AT_name("ESP8266_SendTCP")
	.dwattr $C$DW$61, DW_AT_TI_call
        BL        ESP8266_SendTCP       ; [DPU_3_PIPE] |55| 
        ; CALL OCCURS {ESP8266_SendTCP }  ; [] |55| 
	.dwpsn	file "../main.c",line 56,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
;  56 | ESP8266_CloseTCPConnection();                                          
;----------------------------------------------------------------------
$C$DW$62	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$62, DW_AT_low_pc(0x00)
	.dwattr $C$DW$62, DW_AT_name("ESP8266_CloseTCPConnection")
	.dwattr $C$DW$62, DW_AT_TI_call
        BL        ESP8266_CloseTCPConnection ; [DPU_3_PIPE] |56| 
        ; CALL OCCURS {ESP8266_CloseTCPConnection }  ; [] |56| 
	.dwpsn	file "../main.c",line 57,column 11,is_stmt,isa 1
;----------------------------------------------------------------------
;  57 | while(Board_Input()==0){                                               
;----------------------------------------------------------------------
$C$DW$63	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$63, DW_AT_low_pc(0x00)
	.dwattr $C$DW$63, DW_AT_name("Board_Input")
	.dwattr $C$DW$63, DW_AT_TI_call
        BL        Board_Input           ; [DPU_3_PIPE] |57| 
        ; CALL OCCURS {Board_Input }     ; [] |57| 
        CBNZ      A1, ||$C$L5||         ; [] 
        ; BRANCHCC OCCURS {||$C$L5||}    ; [] |57| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L4||
;*
;*   Loop source line                : 57
;*   Loop closing brace source line  : 59
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L4||:    
	.dwpsn	file "../main.c",line 58,column 7,is_stmt,isa 1
;----------------------------------------------------------------------
;  58 | WaitForInterrupt();                                                    
;  59 | }; // wait for touch                                                   
;----------------------------------------------------------------------
$C$DW$64	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$64, DW_AT_low_pc(0x00)
	.dwattr $C$DW$64, DW_AT_name("WaitForInterrupt")
	.dwattr $C$DW$64, DW_AT_TI_call
        BL        WaitForInterrupt      ; [DPU_3_PIPE] |58| 
        ; CALL OCCURS {WaitForInterrupt }  ; [] |58| 
	.dwpsn	file "../main.c",line 57,column 11,is_stmt,isa 1
$C$DW$65	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$65, DW_AT_low_pc(0x00)
	.dwattr $C$DW$65, DW_AT_name("Board_Input")
	.dwattr $C$DW$65, DW_AT_TI_call
        BL        Board_Input           ; [DPU_3_PIPE] |57| 
        ; CALL OCCURS {Board_Input }     ; [] |57| 
        CMP       A1, #0                ; [DPU_3_PIPE] |57| 
        BEQ       ||$C$L4||             ; [DPU_3_PIPE] |57| 
        ; BRANCHCC OCCURS {||$C$L4||}    ; [] |57| 
;* --------------------------------------------------------------------------*
||$C$L5||:    
	.dwpsn	file "../main.c",line 60,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
;  60 | LED_GreenOff();                                                        
;----------------------------------------------------------------------
$C$DW$66	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$66, DW_AT_low_pc(0x00)
	.dwattr $C$DW$66, DW_AT_name("LED_GreenOff")
	.dwattr $C$DW$66, DW_AT_TI_call
        BL        LED_GreenOff          ; [DPU_3_PIPE] |60| 
        ; CALL OCCURS {LED_GreenOff }    ; [] |60| 
	.dwpsn	file "../main.c",line 61,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
;  61 | LED_RedToggle();                                                       
;----------------------------------------------------------------------
$C$DW$67	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$67, DW_AT_low_pc(0x00)
	.dwattr $C$DW$67, DW_AT_name("LED_RedToggle")
	.dwattr $C$DW$67, DW_AT_TI_call
        BL        LED_RedToggle         ; [DPU_3_PIPE] |61| 
        ; CALL OCCURS {LED_RedToggle }   ; [] |61| 
	.dwpsn	file "../main.c",line 48,column 9,is_stmt,isa 1
        B         ||$C$L1||             ; [DPU_3_PIPE] |48| 
        ; BRANCH OCCURS {||$C$L1||}      ; [] |48| 
;* --------------------------------------------------------------------------*
	.dwattr $C$DW$49, DW_AT_TI_end_file("../main.c")
	.dwattr $C$DW$49, DW_AT_TI_end_line(0x3f)
	.dwattr $C$DW$49, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$49

	.sect	".text"
	.clink
	.thumbfunc SysTick_Handler
	.thumb
	.global	SysTick_Handler

$C$DW$68	.dwtag  DW_TAG_subprogram, DW_AT_name("SysTick_Handler")
	.dwattr $C$DW$68, DW_AT_low_pc(SysTick_Handler)
	.dwattr $C$DW$68, DW_AT_high_pc(0x00)
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("SysTick_Handler")
	.dwattr $C$DW$68, DW_AT_external
	.dwattr $C$DW$68, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$68, DW_AT_TI_begin_line(0x42)
	.dwattr $C$DW$68, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$68, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$68, DW_AT_decl_line(0x42)
	.dwattr $C$DW$68, DW_AT_decl_column(0x06)
	.dwattr $C$DW$68, DW_AT_TI_max_frame_size(0x00)
	.dwpsn	file "../main.c",line 66,column 27,is_stmt,address SysTick_Handler,isa 1

	.dwfde $C$DW$CIE, SysTick_Handler
;----------------------------------------------------------------------
;  66 | void SysTick_Handler(void){                                            
;----------------------------------------------------------------------

;*****************************************************************************
;* FUNCTION NAME: SysTick_Handler                                            *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,SR                                         *
;*   Regs Used         : A1,A2,A3,LR,SR                                      *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
SysTick_Handler:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwpsn	file "../main.c",line 67,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  67 | Msec++;                                                                
;----------------------------------------------------------------------
        LDR       A2, $C$CON2           ; [DPU_3_PIPE] |67| 
        LDR       A1, [A2, #0]          ; [DPU_3_PIPE] |67| 
        ADDS      A1, A1, #1            ; [DPU_3_PIPE] |67| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |67| 
	.dwpsn	file "../main.c",line 68,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  68 | if(Msec % 1000 == 0){                                                  
;----------------------------------------------------------------------
        LDR       A1, $C$CON2           ; [DPU_3_PIPE] |68| 
        LDR       A1, [A1, #0]          ; [DPU_3_PIPE] |68| 
        MOV       A3, #1000             ; [DPU_3_PIPE] |68| 
        UDIV      A2, A1, A3            ; [DPU_3_PIPE] |68| 
        MULS      A2, A2, A3            ; [DPU_3_PIPE] |68| 
        SUBS      A1, A1, A2            ; [DPU_3_PIPE] |68| 
        BNE       ||$C$L6||             ; [DPU_3_PIPE] |68| 
        ; BRANCHCC OCCURS {||$C$L6||}    ; [] |68| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main.c",line 69,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  69 | Seconds++;                                                             
;  70 |     // toggle a flag or do something every ms here                     
;----------------------------------------------------------------------
        LDR       A2, $C$CON3           ; [DPU_3_PIPE] |69| 
        LDR       A1, [A2, #0]          ; [DPU_3_PIPE] |69| 
        ADDS      A1, A1, #1            ; [DPU_3_PIPE] |69| 
        STR       A1, [A2, #0]          ; [DPU_3_PIPE] |69| 
	.dwpsn	file "../main.c",line 72,column 1,is_stmt,isa 1
;* --------------------------------------------------------------------------*
||$C$L6||:    
$C$DW$69	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$69, DW_AT_low_pc(0x00)
	.dwattr $C$DW$69, DW_AT_TI_return
        BX        LR                    ; [DPU_3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$68, DW_AT_TI_end_file("../main.c")
	.dwattr $C$DW$68, DW_AT_TI_end_line(0x48)
	.dwattr $C$DW$68, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$68

	.sect	".text"
	.clink
	.thumbfunc fputc
	.thumb
	.global	fputc

$C$DW$70	.dwtag  DW_TAG_subprogram, DW_AT_name("fputc")
	.dwattr $C$DW$70, DW_AT_low_pc(fputc)
	.dwattr $C$DW$70, DW_AT_high_pc(0x00)
	.dwattr $C$DW$70, DW_AT_TI_symbol_name("fputc")
	.dwattr $C$DW$70, DW_AT_external
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$70, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$70, DW_AT_TI_begin_line(0x4b)
	.dwattr $C$DW$70, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$70, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$70, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$70, DW_AT_decl_column(0x05)
	.dwattr $C$DW$70, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "../main.c",line 75,column 27,is_stmt,address fputc,isa 1

	.dwfde $C$DW$CIE, fputc
$C$DW$71	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ch")
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("ch")
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$71, DW_AT_location[DW_OP_reg0]
$C$DW$72	.dwtag  DW_TAG_formal_parameter, DW_AT_name("f")
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("f")
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$72, DW_AT_location[DW_OP_reg1]

;*****************************************************************************
;* FUNCTION NAME: fputc                                                      *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2,D2_hi, *
;*                           D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,D7_hi,   *
;*                           FPEXC,FPSCR                                     *
;*   Regs Used         : A1,A2,A3,A4,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2,D2_hi, *
;*                           D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,D7_hi,   *
;*                           FPEXC,FPSCR                                     *
;*   Local Frame Size  : 0 Args + 8 Auto + 4 Save = 12 byte                  *
;*****************************************************************************
fputc:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        PUSH      {A2, A3, A4, LR}      ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 16
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 3, -8
	.dwcfi	save_reg_to_mem, 2, -12
	.dwcfi	save_reg_to_mem, 1, -16
$C$DW$73	.dwtag  DW_TAG_variable, DW_AT_name("ch")
	.dwattr $C$DW$73, DW_AT_TI_symbol_name("ch")
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$73, DW_AT_location[DW_OP_breg13 0]
$C$DW$74	.dwtag  DW_TAG_variable, DW_AT_name("f")
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("f")
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$74, DW_AT_location[DW_OP_breg13 4]
;----------------------------------------------------------------------
;  75 | int fputc(int ch, FILE *f){                                            
;----------------------------------------------------------------------
        STR       A2, [SP, #4]          ; [DPU_3_PIPE] |75| 
        STR       A1, [SP, #0]          ; [DPU_3_PIPE] |75| 
	.dwpsn	file "../main.c",line 76,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  76 | UART_OutChar(ch);                                                      
;----------------------------------------------------------------------
        LDRB      A1, [SP, #0]          ; [DPU_3_PIPE] |76| 
$C$DW$75	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$75, DW_AT_low_pc(0x00)
	.dwattr $C$DW$75, DW_AT_name("UART_OutChar")
	.dwattr $C$DW$75, DW_AT_TI_call
        BL        UART_OutChar          ; [DPU_3_PIPE] |76| 
        ; CALL OCCURS {UART_OutChar }    ; [] |76| 
	.dwpsn	file "../main.c",line 77,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  77 | return 1;                                                              
;----------------------------------------------------------------------
        MOVS      A1, #1                ; [DPU_3_PIPE] |77| 
	.dwpsn	file "../main.c",line 78,column 1,is_stmt,isa 1
$C$DW$76	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$76, DW_AT_low_pc(0x00)
	.dwattr $C$DW$76, DW_AT_TI_return
        POP       {A2, A3, A4, PC}      ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$70, DW_AT_TI_end_file("../main.c")
	.dwattr $C$DW$70, DW_AT_TI_end_line(0x4e)
	.dwattr $C$DW$70, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$70

	.sect	".text"
	.clink
	.thumbfunc uart_open
	.thumb
	.global	uart_open

$C$DW$77	.dwtag  DW_TAG_subprogram, DW_AT_name("uart_open")
	.dwattr $C$DW$77, DW_AT_low_pc(uart_open)
	.dwattr $C$DW$77, DW_AT_high_pc(0x00)
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("uart_open")
	.dwattr $C$DW$77, DW_AT_external
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$77, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$77, DW_AT_TI_begin_line(0x53)
	.dwattr $C$DW$77, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$77, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$77, DW_AT_decl_line(0x53)
	.dwattr $C$DW$77, DW_AT_decl_column(0x05)
	.dwattr $C$DW$77, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "../main.c",line 83,column 60,is_stmt,address uart_open,isa 1

	.dwfde $C$DW$CIE, uart_open
$C$DW$78	.dwtag  DW_TAG_formal_parameter, DW_AT_name("path")
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("path")
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$78, DW_AT_location[DW_OP_reg0]
$C$DW$79	.dwtag  DW_TAG_formal_parameter, DW_AT_name("flags")
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("flags")
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$79, DW_AT_location[DW_OP_reg1]
$C$DW$80	.dwtag  DW_TAG_formal_parameter, DW_AT_name("llv_fd")
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("llv_fd")
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$80, DW_AT_location[DW_OP_reg2]

;*****************************************************************************
;* FUNCTION NAME: uart_open                                                  *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2,D2_hi, *
;*                           D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,D7_hi,   *
;*                           FPEXC,FPSCR                                     *
;*   Regs Used         : A1,A2,A3,A4,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2,D2_hi, *
;*                           D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,D7_hi,   *
;*                           FPEXC,FPSCR                                     *
;*   Local Frame Size  : 0 Args + 12 Auto + 4 Save = 16 byte                 *
;*****************************************************************************
uart_open:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        PUSH      {A2, A3, A4, LR}      ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 16
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 3, -8
	.dwcfi	save_reg_to_mem, 2, -12
	.dwcfi	save_reg_to_mem, 1, -16
$C$DW$81	.dwtag  DW_TAG_variable, DW_AT_name("path")
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("path")
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$81, DW_AT_location[DW_OP_breg13 0]
$C$DW$82	.dwtag  DW_TAG_variable, DW_AT_name("flags")
	.dwattr $C$DW$82, DW_AT_TI_symbol_name("flags")
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$82, DW_AT_location[DW_OP_breg13 4]
$C$DW$83	.dwtag  DW_TAG_variable, DW_AT_name("llv_fd")
	.dwattr $C$DW$83, DW_AT_TI_symbol_name("llv_fd")
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$83, DW_AT_location[DW_OP_breg13 8]
;----------------------------------------------------------------------
;  83 | int uart_open(const char *path, unsigned flags, int llv_fd){           
;----------------------------------------------------------------------
        STR       A3, [SP, #8]          ; [DPU_3_PIPE] |83| 
        STR       A2, [SP, #4]          ; [DPU_3_PIPE] |83| 
        STR       A1, [SP, #0]          ; [DPU_3_PIPE] |83| 
	.dwpsn	file "../main.c",line 84,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  84 | UART_Init();                                                           
;----------------------------------------------------------------------
$C$DW$84	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$84, DW_AT_low_pc(0x00)
	.dwattr $C$DW$84, DW_AT_name("UART_Init")
	.dwattr $C$DW$84, DW_AT_TI_call
        BL        UART_Init             ; [DPU_3_PIPE] |84| 
        ; CALL OCCURS {UART_Init }       ; [] |84| 
	.dwpsn	file "../main.c",line 85,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  85 | return 0;                                                              
;----------------------------------------------------------------------
        MOVS      A1, #0                ; [DPU_3_PIPE] |85| 
	.dwpsn	file "../main.c",line 86,column 1,is_stmt,isa 1
$C$DW$85	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$85, DW_AT_low_pc(0x00)
	.dwattr $C$DW$85, DW_AT_TI_return
        POP       {A2, A3, A4, PC}      ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$77, DW_AT_TI_end_file("../main.c")
	.dwattr $C$DW$77, DW_AT_TI_end_line(0x56)
	.dwattr $C$DW$77, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$77

	.sect	".text"
	.clink
	.thumbfunc uart_close
	.thumb
	.global	uart_close

$C$DW$86	.dwtag  DW_TAG_subprogram, DW_AT_name("uart_close")
	.dwattr $C$DW$86, DW_AT_low_pc(uart_close)
	.dwattr $C$DW$86, DW_AT_high_pc(0x00)
	.dwattr $C$DW$86, DW_AT_TI_symbol_name("uart_close")
	.dwattr $C$DW$86, DW_AT_external
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$86, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$86, DW_AT_TI_begin_line(0x57)
	.dwattr $C$DW$86, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$86, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$86, DW_AT_decl_line(0x57)
	.dwattr $C$DW$86, DW_AT_decl_column(0x05)
	.dwattr $C$DW$86, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../main.c",line 87,column 28,is_stmt,address uart_close,isa 1

	.dwfde $C$DW$CIE, uart_close
$C$DW$87	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dev_fd")
	.dwattr $C$DW$87, DW_AT_TI_symbol_name("dev_fd")
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$87, DW_AT_location[DW_OP_reg0]

;*****************************************************************************
;* FUNCTION NAME: uart_close                                                 *
;*                                                                           *
;*   Regs Modified     : A1,SP,SR                                            *
;*   Regs Used         : A1,SP,LR,SR                                         *
;*   Local Frame Size  : 0 Args + 4 Auto + 0 Save = 4 byte                   *
;*****************************************************************************
uart_close:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       SP, SP, #8            ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 8
$C$DW$88	.dwtag  DW_TAG_variable, DW_AT_name("dev_fd")
	.dwattr $C$DW$88, DW_AT_TI_symbol_name("dev_fd")
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$88, DW_AT_location[DW_OP_breg13 0]
;----------------------------------------------------------------------
;  87 | int uart_close( int dev_fd){                                           
;----------------------------------------------------------------------
        STR       A1, [SP, #0]          ; [DPU_3_PIPE] |87| 
	.dwpsn	file "../main.c",line 88,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  88 | return 0;                                                              
;----------------------------------------------------------------------
        MOVS      A1, #0                ; [DPU_3_PIPE] |88| 
	.dwpsn	file "../main.c",line 89,column 1,is_stmt,isa 1
        ADD       SP, SP, #8            ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
$C$DW$89	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$89, DW_AT_low_pc(0x00)
	.dwattr $C$DW$89, DW_AT_TI_return
        BX        LR                    ; [DPU_3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$86, DW_AT_TI_end_file("../main.c")
	.dwattr $C$DW$86, DW_AT_TI_end_line(0x59)
	.dwattr $C$DW$86, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$86

	.sect	".text"
	.clink
	.thumbfunc uart_read
	.thumb
	.global	uart_read

$C$DW$90	.dwtag  DW_TAG_subprogram, DW_AT_name("uart_read")
	.dwattr $C$DW$90, DW_AT_low_pc(uart_read)
	.dwattr $C$DW$90, DW_AT_high_pc(0x00)
	.dwattr $C$DW$90, DW_AT_TI_symbol_name("uart_read")
	.dwattr $C$DW$90, DW_AT_external
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$90, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$90, DW_AT_TI_begin_line(0x5a)
	.dwattr $C$DW$90, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$90, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$90, DW_AT_decl_line(0x5a)
	.dwattr $C$DW$90, DW_AT_decl_column(0x05)
	.dwattr $C$DW$90, DW_AT_TI_max_frame_size(0x18)
	.dwpsn	file "../main.c",line 90,column 53,is_stmt,address uart_read,isa 1

	.dwfde $C$DW$CIE, uart_read
$C$DW$91	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dev_fd")
	.dwattr $C$DW$91, DW_AT_TI_symbol_name("dev_fd")
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$91, DW_AT_location[DW_OP_reg0]
$C$DW$92	.dwtag  DW_TAG_formal_parameter, DW_AT_name("buf")
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("buf")
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$92, DW_AT_location[DW_OP_reg1]
$C$DW$93	.dwtag  DW_TAG_formal_parameter, DW_AT_name("count")
	.dwattr $C$DW$93, DW_AT_TI_symbol_name("count")
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$93, DW_AT_location[DW_OP_reg2]

;*****************************************************************************
;* FUNCTION NAME: uart_read                                                  *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2,D2_hi, *
;*                           D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,D7_hi,   *
;*                           FPEXC,FPSCR                                     *
;*   Regs Used         : A1,A2,A3,A4,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2,D2_hi, *
;*                           D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,D7_hi,   *
;*                           FPEXC,FPSCR                                     *
;*   Local Frame Size  : 0 Args + 16 Auto + 4 Save = 20 byte                 *
;*****************************************************************************
uart_read:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        PUSH      {LR}                  ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 4
	.dwcfi	save_reg_to_mem, 14, -4
        SUB       SP, SP, #20           ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 24
$C$DW$94	.dwtag  DW_TAG_variable, DW_AT_name("dev_fd")
	.dwattr $C$DW$94, DW_AT_TI_symbol_name("dev_fd")
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$94, DW_AT_location[DW_OP_breg13 0]
$C$DW$95	.dwtag  DW_TAG_variable, DW_AT_name("buf")
	.dwattr $C$DW$95, DW_AT_TI_symbol_name("buf")
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$95, DW_AT_location[DW_OP_breg13 4]
$C$DW$96	.dwtag  DW_TAG_variable, DW_AT_name("count")
	.dwattr $C$DW$96, DW_AT_TI_symbol_name("count")
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$96, DW_AT_location[DW_OP_breg13 8]
$C$DW$97	.dwtag  DW_TAG_variable, DW_AT_name("ch")
	.dwattr $C$DW$97, DW_AT_TI_symbol_name("ch")
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$97, DW_AT_location[DW_OP_breg13 12]
;----------------------------------------------------------------------
;  90 | int uart_read(int dev_fd, char *buf, unsigned count){char ch;          
;----------------------------------------------------------------------
        STR       A3, [SP, #8]          ; [DPU_3_PIPE] |90| 
        STR       A2, [SP, #4]          ; [DPU_3_PIPE] |90| 
        STR       A1, [SP, #0]          ; [DPU_3_PIPE] |90| 
	.dwpsn	file "../main.c",line 91,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  91 | ch = UART_InChar();    // receive from keyboard                        
;----------------------------------------------------------------------
$C$DW$98	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$98, DW_AT_low_pc(0x00)
	.dwattr $C$DW$98, DW_AT_name("UART_InChar")
	.dwattr $C$DW$98, DW_AT_TI_call
        BL        UART_InChar           ; [DPU_3_PIPE] |91| 
        ; CALL OCCURS {UART_InChar }     ; [] |91| 
        STRB      A1, [SP, #12]         ; [DPU_3_PIPE] |91| 
	.dwpsn	file "../main.c",line 92,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  92 | ch = *buf;         // return by reference                              
;----------------------------------------------------------------------
        LDR       A1, [SP, #4]          ; [DPU_3_PIPE] |92| 
        LDRB      A1, [A1, #0]          ; [DPU_3_PIPE] |92| 
        STRB      A1, [SP, #12]         ; [DPU_3_PIPE] |92| 
	.dwpsn	file "../main.c",line 93,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  93 | UART_OutChar(ch);  // echo                                             
;----------------------------------------------------------------------
        LDRB      A1, [SP, #12]         ; [DPU_3_PIPE] |93| 
$C$DW$99	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$99, DW_AT_low_pc(0x00)
	.dwattr $C$DW$99, DW_AT_name("UART_OutChar")
	.dwattr $C$DW$99, DW_AT_TI_call
        BL        UART_OutChar          ; [DPU_3_PIPE] |93| 
        ; CALL OCCURS {UART_OutChar }    ; [] |93| 
	.dwpsn	file "../main.c",line 94,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  94 | return 1;                                                              
;----------------------------------------------------------------------
        MOVS      A1, #1                ; [DPU_3_PIPE] |94| 
	.dwpsn	file "../main.c",line 95,column 1,is_stmt,isa 1
        ADD       SP, SP, #20           ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 4
$C$DW$100	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$100, DW_AT_low_pc(0x00)
	.dwattr $C$DW$100, DW_AT_TI_return
        POP       {PC}                  ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$90, DW_AT_TI_end_file("../main.c")
	.dwattr $C$DW$90, DW_AT_TI_end_line(0x5f)
	.dwattr $C$DW$90, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$90

	.sect	".text"
	.clink
	.thumbfunc uart_write
	.thumb
	.global	uart_write

$C$DW$101	.dwtag  DW_TAG_subprogram, DW_AT_name("uart_write")
	.dwattr $C$DW$101, DW_AT_low_pc(uart_write)
	.dwattr $C$DW$101, DW_AT_high_pc(0x00)
	.dwattr $C$DW$101, DW_AT_TI_symbol_name("uart_write")
	.dwattr $C$DW$101, DW_AT_external
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$101, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$101, DW_AT_TI_begin_line(0x60)
	.dwattr $C$DW$101, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$101, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$101, DW_AT_decl_line(0x60)
	.dwattr $C$DW$101, DW_AT_decl_column(0x05)
	.dwattr $C$DW$101, DW_AT_TI_max_frame_size(0x18)
	.dwpsn	file "../main.c",line 96,column 60,is_stmt,address uart_write,isa 1

	.dwfde $C$DW$CIE, uart_write
$C$DW$102	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dev_fd")
	.dwattr $C$DW$102, DW_AT_TI_symbol_name("dev_fd")
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$102, DW_AT_location[DW_OP_reg0]
$C$DW$103	.dwtag  DW_TAG_formal_parameter, DW_AT_name("buf")
	.dwattr $C$DW$103, DW_AT_TI_symbol_name("buf")
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$103, DW_AT_location[DW_OP_reg1]
$C$DW$104	.dwtag  DW_TAG_formal_parameter, DW_AT_name("count")
	.dwattr $C$DW$104, DW_AT_TI_symbol_name("count")
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$104, DW_AT_location[DW_OP_reg2]

;*****************************************************************************
;* FUNCTION NAME: uart_write                                                 *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2,D2_hi, *
;*                           D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,D7_hi,   *
;*                           FPEXC,FPSCR                                     *
;*   Regs Used         : A1,A2,A3,A4,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2,D2_hi, *
;*                           D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,D7_hi,   *
;*                           FPEXC,FPSCR                                     *
;*   Local Frame Size  : 0 Args + 16 Auto + 4 Save = 20 byte                 *
;*****************************************************************************
uart_write:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        PUSH      {LR}                  ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 4
	.dwcfi	save_reg_to_mem, 14, -4
        SUB       SP, SP, #20           ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 24
$C$DW$105	.dwtag  DW_TAG_variable, DW_AT_name("dev_fd")
	.dwattr $C$DW$105, DW_AT_TI_symbol_name("dev_fd")
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$105, DW_AT_location[DW_OP_breg13 0]
$C$DW$106	.dwtag  DW_TAG_variable, DW_AT_name("buf")
	.dwattr $C$DW$106, DW_AT_TI_symbol_name("buf")
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$106, DW_AT_location[DW_OP_breg13 4]
$C$DW$107	.dwtag  DW_TAG_variable, DW_AT_name("count")
	.dwattr $C$DW$107, DW_AT_TI_symbol_name("count")
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$107, DW_AT_location[DW_OP_breg13 8]
$C$DW$108	.dwtag  DW_TAG_variable, DW_AT_name("num")
	.dwattr $C$DW$108, DW_AT_TI_symbol_name("num")
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$108, DW_AT_location[DW_OP_breg13 12]
;----------------------------------------------------------------------
;  96 | int uart_write(int dev_fd, const char *buf, unsigned count){ unsigned i
;     | nt num=count;                                                          
;----------------------------------------------------------------------
        STR       A3, [SP, #8]          ; [DPU_3_PIPE] |96| 
        STR       A2, [SP, #4]          ; [DPU_3_PIPE] |96| 
        STR       A1, [SP, #0]          ; [DPU_3_PIPE] |96| 
	.dwpsn	file "../main.c",line 96,column 78,is_stmt,isa 1
        LDR       A1, [SP, #8]          ; [DPU_3_PIPE] |96| 
        STR       A1, [SP, #12]         ; [DPU_3_PIPE] |96| 
	.dwpsn	file "../main.c",line 97,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
;  97 | while(num){                                                            
;----------------------------------------------------------------------
        LDR       A1, [SP, #12]         ; [DPU_3_PIPE] |97| 
        CBZ       A1, ||$C$L8||         ; [] 
        ; BRANCHCC OCCURS {||$C$L8||}    ; [] |97| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP ||$C$L7||
;*
;*   Loop source line                : 97
;*   Loop closing brace source line  : 101
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
||$C$L7||:    
	.dwpsn	file "../main.c",line 98,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
;  98 | UART_OutChar(*buf);                                                    
;----------------------------------------------------------------------
        LDR       A1, [SP, #4]          ; [DPU_3_PIPE] |98| 
        LDRB      A1, [A1, #0]          ; [DPU_3_PIPE] |98| 
$C$DW$109	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$109, DW_AT_low_pc(0x00)
	.dwattr $C$DW$109, DW_AT_name("UART_OutChar")
	.dwattr $C$DW$109, DW_AT_TI_call
        BL        UART_OutChar          ; [DPU_3_PIPE] |98| 
        ; CALL OCCURS {UART_OutChar }    ; [] |98| 
	.dwpsn	file "../main.c",line 99,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
;  99 | buf++;                                                                 
;----------------------------------------------------------------------
        LDR       A1, [SP, #4]          ; [DPU_3_PIPE] |99| 
        ADDS      A1, A1, #1            ; [DPU_3_PIPE] |99| 
        STR       A1, [SP, #4]          ; [DPU_3_PIPE] |99| 
	.dwpsn	file "../main.c",line 100,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
; 100 | num--;                                                                 
;----------------------------------------------------------------------
        LDR       A1, [SP, #12]         ; [DPU_3_PIPE] |100| 
        SUBS      A1, A1, #1            ; [DPU_3_PIPE] |100| 
        STR       A1, [SP, #12]         ; [DPU_3_PIPE] |100| 
	.dwpsn	file "../main.c",line 97,column 3,is_stmt,isa 1
        LDR       A1, [SP, #12]         ; [DPU_3_PIPE] |97| 
        CMP       A1, #0                ; [DPU_3_PIPE] |97| 
        BNE       ||$C$L7||             ; [DPU_3_PIPE] |97| 
        ; BRANCHCC OCCURS {||$C$L7||}    ; [] |97| 
;* --------------------------------------------------------------------------*
||$C$L8||:    
	.dwpsn	file "../main.c",line 102,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 102 | return count;                                                          
;----------------------------------------------------------------------
        LDR       A1, [SP, #8]          ; [DPU_3_PIPE] |102| 
	.dwpsn	file "../main.c",line 103,column 1,is_stmt,isa 1
        ADD       SP, SP, #20           ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 4
$C$DW$110	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$110, DW_AT_low_pc(0x00)
	.dwattr $C$DW$110, DW_AT_TI_return
        POP       {PC}                  ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$101, DW_AT_TI_end_file("../main.c")
	.dwattr $C$DW$101, DW_AT_TI_end_line(0x67)
	.dwattr $C$DW$101, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$101

	.sect	".text"
	.clink
	.thumbfunc uart_lseek
	.thumb
	.global	uart_lseek

$C$DW$111	.dwtag  DW_TAG_subprogram, DW_AT_name("uart_lseek")
	.dwattr $C$DW$111, DW_AT_low_pc(uart_lseek)
	.dwattr $C$DW$111, DW_AT_high_pc(0x00)
	.dwattr $C$DW$111, DW_AT_TI_symbol_name("uart_lseek")
	.dwattr $C$DW$111, DW_AT_external
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$111, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$111, DW_AT_TI_begin_line(0x68)
	.dwattr $C$DW$111, DW_AT_TI_begin_column(0x07)
	.dwattr $C$DW$111, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$111, DW_AT_decl_line(0x68)
	.dwattr $C$DW$111, DW_AT_decl_column(0x07)
	.dwattr $C$DW$111, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "../main.c",line 104,column 56,is_stmt,address uart_lseek,isa 1

	.dwfde $C$DW$CIE, uart_lseek
$C$DW$112	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dev_fd")
	.dwattr $C$DW$112, DW_AT_TI_symbol_name("dev_fd")
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$112, DW_AT_location[DW_OP_reg0]
$C$DW$113	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ioffset")
	.dwattr $C$DW$113, DW_AT_TI_symbol_name("ioffset")
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$113, DW_AT_location[DW_OP_reg1]
$C$DW$114	.dwtag  DW_TAG_formal_parameter, DW_AT_name("origin")
	.dwattr $C$DW$114, DW_AT_TI_symbol_name("origin")
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$114, DW_AT_location[DW_OP_reg2]

;*****************************************************************************
;* FUNCTION NAME: uart_lseek                                                 *
;*                                                                           *
;*   Regs Modified     : A1,SP,SR                                            *
;*   Regs Used         : A1,A2,A3,SP,LR,SR                                   *
;*   Local Frame Size  : 0 Args + 12 Auto + 0 Save = 12 byte                 *
;*****************************************************************************
uart_lseek:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       SP, SP, #16           ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 16
$C$DW$115	.dwtag  DW_TAG_variable, DW_AT_name("dev_fd")
	.dwattr $C$DW$115, DW_AT_TI_symbol_name("dev_fd")
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$115, DW_AT_location[DW_OP_breg13 0]
$C$DW$116	.dwtag  DW_TAG_variable, DW_AT_name("ioffset")
	.dwattr $C$DW$116, DW_AT_TI_symbol_name("ioffset")
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$116, DW_AT_location[DW_OP_breg13 4]
$C$DW$117	.dwtag  DW_TAG_variable, DW_AT_name("origin")
	.dwattr $C$DW$117, DW_AT_TI_symbol_name("origin")
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$117, DW_AT_location[DW_OP_breg13 8]
;----------------------------------------------------------------------
; 104 | off_t uart_lseek(int dev_fd, off_t ioffset, int origin){               
;----------------------------------------------------------------------
        STR       A3, [SP, #8]          ; [DPU_3_PIPE] |104| 
        STR       A2, [SP, #4]          ; [DPU_3_PIPE] |104| 
        STR       A1, [SP, #0]          ; [DPU_3_PIPE] |104| 
	.dwpsn	file "../main.c",line 105,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 105 | return 0;                                                              
;----------------------------------------------------------------------
        MOVS      A1, #0                ; [DPU_3_PIPE] |105| 
	.dwpsn	file "../main.c",line 106,column 1,is_stmt,isa 1
        ADD       SP, SP, #16           ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
$C$DW$118	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$118, DW_AT_low_pc(0x00)
	.dwattr $C$DW$118, DW_AT_TI_return
        BX        LR                    ; [DPU_3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$111, DW_AT_TI_end_file("../main.c")
	.dwattr $C$DW$111, DW_AT_TI_end_line(0x6a)
	.dwattr $C$DW$111, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$111

	.sect	".text"
	.clink
	.thumbfunc uart_unlink
	.thumb
	.global	uart_unlink

$C$DW$119	.dwtag  DW_TAG_subprogram, DW_AT_name("uart_unlink")
	.dwattr $C$DW$119, DW_AT_low_pc(uart_unlink)
	.dwattr $C$DW$119, DW_AT_high_pc(0x00)
	.dwattr $C$DW$119, DW_AT_TI_symbol_name("uart_unlink")
	.dwattr $C$DW$119, DW_AT_external
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$119, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$119, DW_AT_TI_begin_line(0x6b)
	.dwattr $C$DW$119, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$119, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$119, DW_AT_decl_line(0x6b)
	.dwattr $C$DW$119, DW_AT_decl_column(0x05)
	.dwattr $C$DW$119, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../main.c",line 107,column 35,is_stmt,address uart_unlink,isa 1

	.dwfde $C$DW$CIE, uart_unlink
$C$DW$120	.dwtag  DW_TAG_formal_parameter, DW_AT_name("path")
	.dwattr $C$DW$120, DW_AT_TI_symbol_name("path")
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$120, DW_AT_location[DW_OP_reg0]

;*****************************************************************************
;* FUNCTION NAME: uart_unlink                                                *
;*                                                                           *
;*   Regs Modified     : A1,SP,SR                                            *
;*   Regs Used         : A1,SP,LR,SR                                         *
;*   Local Frame Size  : 0 Args + 4 Auto + 0 Save = 4 byte                   *
;*****************************************************************************
uart_unlink:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       SP, SP, #8            ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 8
$C$DW$121	.dwtag  DW_TAG_variable, DW_AT_name("path")
	.dwattr $C$DW$121, DW_AT_TI_symbol_name("path")
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$121, DW_AT_location[DW_OP_breg13 0]
;----------------------------------------------------------------------
; 107 | int uart_unlink(const char * path){                                    
;----------------------------------------------------------------------
        STR       A1, [SP, #0]          ; [DPU_3_PIPE] |107| 
	.dwpsn	file "../main.c",line 108,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 108 | return 0;                                                              
;----------------------------------------------------------------------
        MOVS      A1, #0                ; [DPU_3_PIPE] |108| 
	.dwpsn	file "../main.c",line 109,column 1,is_stmt,isa 1
        ADD       SP, SP, #8            ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
$C$DW$122	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$122, DW_AT_low_pc(0x00)
	.dwattr $C$DW$122, DW_AT_TI_return
        BX        LR                    ; [DPU_3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$119, DW_AT_TI_end_file("../main.c")
	.dwattr $C$DW$119, DW_AT_TI_end_line(0x6d)
	.dwattr $C$DW$119, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$119

	.sect	".text"
	.clink
	.thumbfunc uart_rename
	.thumb
	.global	uart_rename

$C$DW$123	.dwtag  DW_TAG_subprogram, DW_AT_name("uart_rename")
	.dwattr $C$DW$123, DW_AT_low_pc(uart_rename)
	.dwattr $C$DW$123, DW_AT_high_pc(0x00)
	.dwattr $C$DW$123, DW_AT_TI_symbol_name("uart_rename")
	.dwattr $C$DW$123, DW_AT_external
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$123, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$123, DW_AT_TI_begin_line(0x6e)
	.dwattr $C$DW$123, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$123, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$123, DW_AT_decl_line(0x6e)
	.dwattr $C$DW$123, DW_AT_decl_column(0x05)
	.dwattr $C$DW$123, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../main.c",line 110,column 60,is_stmt,address uart_rename,isa 1

	.dwfde $C$DW$CIE, uart_rename
$C$DW$124	.dwtag  DW_TAG_formal_parameter, DW_AT_name("old_name")
	.dwattr $C$DW$124, DW_AT_TI_symbol_name("old_name")
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$124, DW_AT_location[DW_OP_reg0]
$C$DW$125	.dwtag  DW_TAG_formal_parameter, DW_AT_name("new_name")
	.dwattr $C$DW$125, DW_AT_TI_symbol_name("new_name")
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$125, DW_AT_location[DW_OP_reg1]

;*****************************************************************************
;* FUNCTION NAME: uart_rename                                                *
;*                                                                           *
;*   Regs Modified     : A1,SP,SR                                            *
;*   Regs Used         : A1,A2,SP,LR,SR                                      *
;*   Local Frame Size  : 0 Args + 8 Auto + 0 Save = 8 byte                   *
;*****************************************************************************
uart_rename:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        SUB       SP, SP, #8            ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 8
$C$DW$126	.dwtag  DW_TAG_variable, DW_AT_name("old_name")
	.dwattr $C$DW$126, DW_AT_TI_symbol_name("old_name")
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$126, DW_AT_location[DW_OP_breg13 0]
$C$DW$127	.dwtag  DW_TAG_variable, DW_AT_name("new_name")
	.dwattr $C$DW$127, DW_AT_TI_symbol_name("new_name")
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$127, DW_AT_location[DW_OP_breg13 4]
;----------------------------------------------------------------------
; 110 | int uart_rename(const char *old_name, const char *new_name){           
;----------------------------------------------------------------------
        STR       A2, [SP, #4]          ; [DPU_3_PIPE] |110| 
        STR       A1, [SP, #0]          ; [DPU_3_PIPE] |110| 
	.dwpsn	file "../main.c",line 111,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 111 | return 0;                                                              
;----------------------------------------------------------------------
        MOVS      A1, #0                ; [DPU_3_PIPE] |111| 
	.dwpsn	file "../main.c",line 112,column 1,is_stmt,isa 1
        ADD       SP, SP, #8            ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
$C$DW$128	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$128, DW_AT_low_pc(0x00)
	.dwattr $C$DW$128, DW_AT_TI_return
        BX        LR                    ; [DPU_3_PIPE] 
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$123, DW_AT_TI_end_file("../main.c")
	.dwattr $C$DW$123, DW_AT_TI_end_line(0x70)
	.dwattr $C$DW$123, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$123

	.sect	".text"
	.clink
	.thumbfunc Output_Init
	.thumb
	.global	Output_Init

$C$DW$129	.dwtag  DW_TAG_subprogram, DW_AT_name("Output_Init")
	.dwattr $C$DW$129, DW_AT_low_pc(Output_Init)
	.dwattr $C$DW$129, DW_AT_high_pc(0x00)
	.dwattr $C$DW$129, DW_AT_TI_symbol_name("Output_Init")
	.dwattr $C$DW$129, DW_AT_external
	.dwattr $C$DW$129, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$129, DW_AT_TI_begin_line(0x77)
	.dwattr $C$DW$129, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$129, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$129, DW_AT_decl_line(0x77)
	.dwattr $C$DW$129, DW_AT_decl_column(0x06)
	.dwattr $C$DW$129, DW_AT_TI_max_frame_size(0x20)
	.dwpsn	file "../main.c",line 119,column 23,is_stmt,address Output_Init,isa 1

	.dwfde $C$DW$CIE, Output_Init
;----------------------------------------------------------------------
; 119 | void Output_Init(void){int ret_val; FILE *fptr;                        
;----------------------------------------------------------------------

;*****************************************************************************
;* FUNCTION NAME: Output_Init                                                *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2,D2_hi, *
;*                           D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,D7_hi,   *
;*                           FPEXC,FPSCR                                     *
;*   Regs Used         : A1,A2,A3,A4,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2,D2_hi, *
;*                           D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,D7_hi,   *
;*                           FPEXC,FPSCR                                     *
;*   Local Frame Size  : 20 Args + 8 Auto + 4 Save = 32 byte                 *
;*****************************************************************************
Output_Init:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        PUSH      {LR}                  ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 4
	.dwcfi	save_reg_to_mem, 14, -4
        SUB       SP, SP, #28           ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 32
$C$DW$130	.dwtag  DW_TAG_variable, DW_AT_name("ret_val")
	.dwattr $C$DW$130, DW_AT_TI_symbol_name("ret_val")
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$130, DW_AT_location[DW_OP_breg13 20]
$C$DW$131	.dwtag  DW_TAG_variable, DW_AT_name("fptr")
	.dwattr $C$DW$131, DW_AT_TI_symbol_name("fptr")
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$131, DW_AT_location[DW_OP_breg13 24]
	.dwpsn	file "../main.c",line 120,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 120 | UART_Init();                                                           
;----------------------------------------------------------------------
$C$DW$132	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$132, DW_AT_low_pc(0x00)
	.dwattr $C$DW$132, DW_AT_name("UART_Init")
	.dwattr $C$DW$132, DW_AT_TI_call
        BL        UART_Init             ; [DPU_3_PIPE] |120| 
        ; CALL OCCURS {UART_Init }       ; [] |120| 
	.dwpsn	file "../main.c",line 121,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 121 | ret_val = add_device("uart", _SSA, uart_open, uart_close, uart_read, ua
;     | rt_write, uart_lseek, uart_unlink, uart_rename);                       
;----------------------------------------------------------------------
        LDR       A1, $C$CON4           ; [DPU_3_PIPE] |121| 
        STR       A1, [SP, #0]          ; [DPU_3_PIPE] |121| 
        LDR       A1, $C$CON5           ; [DPU_3_PIPE] |121| 
        STR       A1, [SP, #4]          ; [DPU_3_PIPE] |121| 
        LDR       A1, $C$CON6           ; [DPU_3_PIPE] |121| 
        LDR       A3, $C$CON9           ; [DPU_3_PIPE] |121| 
        STR       A1, [SP, #8]          ; [DPU_3_PIPE] |121| 
        LDR       A1, $C$CON7           ; [DPU_3_PIPE] |121| 
        LDR       A4, $C$CON10          ; [DPU_3_PIPE] |121| 
        STR       A1, [SP, #12]         ; [DPU_3_PIPE] |121| 
        LDR       A1, $C$CON8           ; [DPU_3_PIPE] |121| 
        MOVS      A2, #0                ; [DPU_3_PIPE] |121| 
        STR       A1, [SP, #16]         ; [DPU_3_PIPE] |121| 
        ADR       A1, $C$SL3            ; [DPU_3_PIPE] |121| 
$C$DW$133	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$133, DW_AT_low_pc(0x00)
	.dwattr $C$DW$133, DW_AT_name("add_device")
	.dwattr $C$DW$133, DW_AT_TI_call
        BL        add_device            ; [DPU_3_PIPE] |121| 
        ; CALL OCCURS {add_device }      ; [] |121| 
        STR       A1, [SP, #20]         ; [DPU_3_PIPE] |121| 
	.dwpsn	file "../main.c",line 122,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 122 | if(ret_val) return; // error                                           
;----------------------------------------------------------------------
        LDR       A1, [SP, #20]         ; [DPU_3_PIPE] |122| 
        CBNZ      A1, ||$C$L9||         ; [] 
        ; BRANCHCC OCCURS {||$C$L9||}    ; [] |122| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main.c",line 122,column 15,is_stmt,isa 1
	.dwpsn	file "../main.c",line 123,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 123 | fptr = fopen("uart","w");                                              
;----------------------------------------------------------------------
        ADR       A1, $C$SL3            ; [DPU_3_PIPE] |123| 
        ADR       A2, $C$SL4            ; [DPU_3_PIPE] |123| 
$C$DW$134	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$134, DW_AT_low_pc(0x00)
	.dwattr $C$DW$134, DW_AT_name("fopen")
	.dwattr $C$DW$134, DW_AT_TI_call
        BL        fopen                 ; [DPU_3_PIPE] |123| 
        ; CALL OCCURS {fopen }           ; [] |123| 
        STR       A1, [SP, #24]         ; [DPU_3_PIPE] |123| 
	.dwpsn	file "../main.c",line 124,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 124 | if(fptr == 0) return; // error                                         
;----------------------------------------------------------------------
        LDR       A1, [SP, #24]         ; [DPU_3_PIPE] |124| 
        CBZ       A1, ||$C$L9||         ; [] 
        ; BRANCHCC OCCURS {||$C$L9||}    ; [] |124| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main.c",line 124,column 17,is_stmt,isa 1
	.dwpsn	file "../main.c",line 125,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 125 | freopen("uart:", "w", stdout); // redirect stdout to uart              
;----------------------------------------------------------------------
        LDR       A3, $C$CON11          ; [DPU_3_PIPE] |125| 
        ADR       A1, $C$SL5            ; [DPU_3_PIPE] |125| 
        ADR       A2, $C$SL4            ; [DPU_3_PIPE] |125| 
$C$DW$135	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$135, DW_AT_low_pc(0x00)
	.dwattr $C$DW$135, DW_AT_name("freopen")
	.dwattr $C$DW$135, DW_AT_TI_call
        BL        freopen               ; [DPU_3_PIPE] |125| 
        ; CALL OCCURS {freopen }         ; [] |125| 
	.dwpsn	file "../main.c",line 126,column 3,is_stmt,isa 1
;----------------------------------------------------------------------
; 126 | setvbuf(stdout, NULL, _IONBF, 0); // turn off buffering for stdout     
;----------------------------------------------------------------------
        LDR       A1, $C$CON11          ; [DPU_3_PIPE] |126| 
        MOVS      A2, #0                ; [DPU_3_PIPE] |126| 
        MOVS      A3, #4                ; [DPU_3_PIPE] |126| 
        MOVS      A4, #0                ; [DPU_3_PIPE] |126| 
$C$DW$136	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$136, DW_AT_low_pc(0x00)
	.dwattr $C$DW$136, DW_AT_name("setvbuf")
	.dwattr $C$DW$136, DW_AT_TI_call
        BL        setvbuf               ; [DPU_3_PIPE] |126| 
        ; CALL OCCURS {setvbuf }         ; [] |126| 
	.dwpsn	file "../main.c",line 128,column 1,is_stmt,isa 1
;* --------------------------------------------------------------------------*
||$C$L9||:    
        ADD       SP, SP, #28           ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 4
$C$DW$137	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$137, DW_AT_low_pc(0x00)
	.dwattr $C$DW$137, DW_AT_TI_return
        POP       {PC}                  ; [DPU_3_PIPE] 
	.dwcfi	cfa_offset, 0
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$129, DW_AT_TI_end_file("../main.c")
	.dwattr $C$DW$129, DW_AT_TI_end_line(0x80)
	.dwattr $C$DW$129, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$129

;******************************************************************************
;* STRINGS                                                                    *
;******************************************************************************
	.sect	".text"
	.align	4
||$C$SL1||:	.string	10,13,"-----------",10,13,"System starting...",10,13,0
	.align	4
||$C$SL2||:	.string	"MakeTCPConnection, could not make connection",10,13,0
	.align	4
||$C$SL3||:	.string	"uart",0
	.align	4
||$C$SL4||:	.string	"w",0
	.align	4
||$C$SL5||:	.string	"uart:",0
;******************************************************************************
;* CONSTANT TABLE                                                             *
;******************************************************************************
	.sect	".text"
	.align	4
||$C$CON1||:	.bits	80000,32
	.align	4
||$C$CON2||:	.bits	Msec,32
	.align	4
||$C$CON3||:	.bits	Seconds,32
	.align	4
||$C$CON4||:	.bits	uart_read,32
	.align	4
||$C$CON5||:	.bits	uart_write,32
	.align	4
||$C$CON6||:	.bits	uart_lseek,32
	.align	4
||$C$CON7||:	.bits	uart_unlink,32
	.align	4
||$C$CON8||:	.bits	uart_rename,32
	.align	4
||$C$CON9||:	.bits	uart_open,32
	.align	4
||$C$CON10||:	.bits	uart_close,32
	.align	4
||$C$CON11||:	.bits	_ftable+24,32
;*****************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                             *
;*****************************************************************************
	.global	fopen
	.global	freopen
	.global	setvbuf
	.global	printf
	.global	PLL_Init
	.global	UART_Init
	.global	UART_InChar
	.global	UART_OutChar
	.global	SysTick_Init
	.global	ESP8266_Init
	.global	ESP8266_CloseTCPConnection
	.global	ESP8266_MakeTCPConnection
	.global	ESP8266_SendTCP
	.global	ESP8266_GetStatus
	.global	LED_Init
	.global	Board_Input
	.global	LED_RedToggle
	.global	LED_GreenOn
	.global	LED_GreenOff
	.global	DisableInterrupts
	.global	WaitForInterrupt
	.global	add_device
	.global	_ftable

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

$C$DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$20, DW_AT_byte_size(0x18)
$C$DW$138	.dwtag  DW_TAG_member
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$138, DW_AT_name("fd")
	.dwattr $C$DW$138, DW_AT_TI_symbol_name("fd")
	.dwattr $C$DW$138, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$138, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$138, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdio.h")
	.dwattr $C$DW$138, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$138, DW_AT_decl_column(0x0b)
$C$DW$139	.dwtag  DW_TAG_member
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$139, DW_AT_name("buf")
	.dwattr $C$DW$139, DW_AT_TI_symbol_name("buf")
	.dwattr $C$DW$139, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$139, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$139, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdio.h")
	.dwattr $C$DW$139, DW_AT_decl_line(0x5d)
	.dwattr $C$DW$139, DW_AT_decl_column(0x16)
$C$DW$140	.dwtag  DW_TAG_member
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$140, DW_AT_name("pos")
	.dwattr $C$DW$140, DW_AT_TI_symbol_name("pos")
	.dwattr $C$DW$140, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$140, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$140, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdio.h")
	.dwattr $C$DW$140, DW_AT_decl_line(0x5e)
	.dwattr $C$DW$140, DW_AT_decl_column(0x16)
$C$DW$141	.dwtag  DW_TAG_member
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$141, DW_AT_name("bufend")
	.dwattr $C$DW$141, DW_AT_TI_symbol_name("bufend")
	.dwattr $C$DW$141, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$141, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$141, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdio.h")
	.dwattr $C$DW$141, DW_AT_decl_line(0x5f)
	.dwattr $C$DW$141, DW_AT_decl_column(0x16)
$C$DW$142	.dwtag  DW_TAG_member
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$142, DW_AT_name("buff_stop")
	.dwattr $C$DW$142, DW_AT_TI_symbol_name("buff_stop")
	.dwattr $C$DW$142, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$142, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$142, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdio.h")
	.dwattr $C$DW$142, DW_AT_decl_line(0x60)
	.dwattr $C$DW$142, DW_AT_decl_column(0x16)
$C$DW$143	.dwtag  DW_TAG_member
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$143, DW_AT_name("flags")
	.dwattr $C$DW$143, DW_AT_TI_symbol_name("flags")
	.dwattr $C$DW$143, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$143, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$143, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdio.h")
	.dwattr $C$DW$143, DW_AT_decl_line(0x61)
	.dwattr $C$DW$143, DW_AT_decl_column(0x16)
	.dwendtag $C$DW$T$20

	.dwattr $C$DW$T$20, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdio.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0x5b)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x10)
$C$DW$T$25	.dwtag  DW_TAG_typedef, DW_AT_name("FILE")
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$25, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$25, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdio.h")
	.dwattr $C$DW$T$25, DW_AT_decl_line(0x62)
	.dwattr $C$DW$T$25, DW_AT_decl_column(0x03)
$C$DW$T$26	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$26, DW_AT_address_class(0x20)

$C$DW$T$34	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$34, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$34, DW_AT_byte_size(0xf0)
$C$DW$144	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$144, DW_AT_upper_bound(0x09)
	.dwendtag $C$DW$T$34


$C$DW$T$21	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x08)
$C$DW$145	.dwtag  DW_TAG_member
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$145, DW_AT_name("quot")
	.dwattr $C$DW$145, DW_AT_TI_symbol_name("quot")
	.dwattr $C$DW$145, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$145, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$145, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdlib.h")
	.dwattr $C$DW$145, DW_AT_decl_line(0x59)
	.dwattr $C$DW$145, DW_AT_decl_column(0x16)
$C$DW$146	.dwtag  DW_TAG_member
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$146, DW_AT_name("rem")
	.dwattr $C$DW$146, DW_AT_TI_symbol_name("rem")
	.dwattr $C$DW$146, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$146, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$146, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdlib.h")
	.dwattr $C$DW$146, DW_AT_decl_line(0x59)
	.dwattr $C$DW$146, DW_AT_decl_column(0x1c)
	.dwendtag $C$DW$T$21

	.dwattr $C$DW$T$21, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdlib.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0x59)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x10)
$C$DW$T$35	.dwtag  DW_TAG_typedef, DW_AT_name("div_t")
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$35, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$35, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdlib.h")
	.dwattr $C$DW$T$35, DW_AT_decl_line(0x59)
	.dwattr $C$DW$T$35, DW_AT_decl_column(0x23)

$C$DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x08)
$C$DW$147	.dwtag  DW_TAG_member
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$147, DW_AT_name("quot")
	.dwattr $C$DW$147, DW_AT_TI_symbol_name("quot")
	.dwattr $C$DW$147, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$147, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$147, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdlib.h")
	.dwattr $C$DW$147, DW_AT_decl_line(0x5b)
	.dwattr $C$DW$147, DW_AT_decl_column(0x16)
$C$DW$148	.dwtag  DW_TAG_member
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$148, DW_AT_name("rem")
	.dwattr $C$DW$148, DW_AT_TI_symbol_name("rem")
	.dwattr $C$DW$148, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$148, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$148, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdlib.h")
	.dwattr $C$DW$148, DW_AT_decl_line(0x5b)
	.dwattr $C$DW$148, DW_AT_decl_column(0x1c)
	.dwendtag $C$DW$T$22

	.dwattr $C$DW$T$22, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdlib.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0x5b)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x10)
$C$DW$T$36	.dwtag  DW_TAG_typedef, DW_AT_name("ldiv_t")
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$36, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$36, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdlib.h")
	.dwattr $C$DW$T$36, DW_AT_decl_line(0x5b)
	.dwattr $C$DW$T$36, DW_AT_decl_column(0x23)

$C$DW$T$23	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x10)
$C$DW$149	.dwtag  DW_TAG_member
	.dwattr $C$DW$149, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$149, DW_AT_name("quot")
	.dwattr $C$DW$149, DW_AT_TI_symbol_name("quot")
	.dwattr $C$DW$149, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$149, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$149, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdlib.h")
	.dwattr $C$DW$149, DW_AT_decl_line(0x5e)
	.dwattr $C$DW$149, DW_AT_decl_column(0x1c)
$C$DW$150	.dwtag  DW_TAG_member
	.dwattr $C$DW$150, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$150, DW_AT_name("rem")
	.dwattr $C$DW$150, DW_AT_TI_symbol_name("rem")
	.dwattr $C$DW$150, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$150, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$150, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdlib.h")
	.dwattr $C$DW$150, DW_AT_decl_line(0x5e)
	.dwattr $C$DW$150, DW_AT_decl_column(0x22)
	.dwendtag $C$DW$T$23

	.dwattr $C$DW$T$23, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdlib.h")
	.dwattr $C$DW$T$23, DW_AT_decl_line(0x5e)
	.dwattr $C$DW$T$23, DW_AT_decl_column(0x10)
$C$DW$T$37	.dwtag  DW_TAG_typedef, DW_AT_name("lldiv_t")
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$37, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$37, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdlib.h")
	.dwattr $C$DW$T$37, DW_AT_decl_line(0x5e)
	.dwattr $C$DW$T$37, DW_AT_decl_column(0x29)
$C$DW$T$2	.dwtag  DW_TAG_unspecified_type
	.dwattr $C$DW$T$2, DW_AT_name("void")
$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_type(*$C$DW$T$2)
	.dwattr $C$DW$T$3, DW_AT_address_class(0x20)

$C$DW$T$41	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$41, DW_AT_language(DW_LANG_C)
$C$DW$T$42	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$42, DW_AT_address_class(0x20)
$C$DW$T$43	.dwtag  DW_TAG_typedef, DW_AT_name("__TI_atexit_fn")
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$T$43, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$43, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdlib.h")
	.dwattr $C$DW$T$43, DW_AT_decl_line(0xb2)
	.dwattr $C$DW$T$43, DW_AT_decl_column(0x14)
$C$DW$T$46	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$T$2)
$C$DW$T$47	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$T$47, DW_AT_address_class(0x20)
$C$DW$T$4	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$4, DW_AT_encoding(DW_ATE_boolean)
	.dwattr $C$DW$T$4, DW_AT_name("bool")
	.dwattr $C$DW$T$4, DW_AT_byte_size(0x01)
$C$DW$T$5	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$5, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$5, DW_AT_name("signed char")
	.dwattr $C$DW$T$5, DW_AT_byte_size(0x01)
$C$DW$T$48	.dwtag  DW_TAG_typedef, DW_AT_name("int8_t")
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$5)
	.dwattr $C$DW$T$48, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$48, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$48, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$T$48, DW_AT_decl_column(0x1d)
$C$DW$T$49	.dwtag  DW_TAG_typedef, DW_AT_name("int_least8_t")
	.dwattr $C$DW$T$49, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$T$49, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$49, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$49, DW_AT_decl_line(0x37)
	.dwattr $C$DW$T$49, DW_AT_decl_column(0x17)
$C$DW$T$6	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$6, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$6, DW_AT_byte_size(0x01)
$C$DW$T$19	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$19, DW_AT_address_class(0x20)
$C$DW$T$50	.dwtag  DW_TAG_typedef, DW_AT_name("uint8_t")
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$50, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$50, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$50, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$T$50, DW_AT_decl_column(0x1c)
$C$DW$T$51	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least8_t")
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$51, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$51, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$51, DW_AT_decl_line(0x38)
	.dwattr $C$DW$T$51, DW_AT_decl_column(0x16)
$C$DW$T$7	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$7, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$7, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$7, DW_AT_byte_size(0x02)
$C$DW$T$8	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$8, DW_AT_name("short")
	.dwattr $C$DW$T$8, DW_AT_byte_size(0x02)
$C$DW$T$52	.dwtag  DW_TAG_typedef, DW_AT_name("int16_t")
	.dwattr $C$DW$T$52, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$52, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$52, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$52, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$T$52, DW_AT_decl_column(0x1d)
$C$DW$T$53	.dwtag  DW_TAG_typedef, DW_AT_name("int_least16_t")
	.dwattr $C$DW$T$53, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$T$53, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$53, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$53, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$T$53, DW_AT_decl_column(0x17)
$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x02)
$C$DW$T$54	.dwtag  DW_TAG_typedef, DW_AT_name("_Wchart")
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$54, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$54, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/yvals.h")
	.dwattr $C$DW$T$54, DW_AT_decl_line(0x1e5)
	.dwattr $C$DW$T$54, DW_AT_decl_column(0x21)
$C$DW$T$55	.dwtag  DW_TAG_typedef, DW_AT_name("_Wintt")
	.dwattr $C$DW$T$55, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$55, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$55, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/yvals.h")
	.dwattr $C$DW$T$55, DW_AT_decl_line(0x1e6)
	.dwattr $C$DW$T$55, DW_AT_decl_column(0x21)
$C$DW$T$56	.dwtag  DW_TAG_typedef, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$56, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$56, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$56, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$56, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$T$56, DW_AT_decl_column(0x1c)
$C$DW$T$57	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least16_t")
	.dwattr $C$DW$T$57, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$T$57, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$57, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$57, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$T$57, DW_AT_decl_column(0x16)
$C$DW$T$58	.dwtag  DW_TAG_typedef, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$58, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$58, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$58, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdlib.h")
	.dwattr $C$DW$T$58, DW_AT_decl_line(0x75)
	.dwattr $C$DW$T$58, DW_AT_decl_column(0x1a)
$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x04)
$C$DW$T$59	.dwtag  DW_TAG_typedef, DW_AT_name("_Ptrdifft")
	.dwattr $C$DW$T$59, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$59, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$59, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/yvals.h")
	.dwattr $C$DW$T$59, DW_AT_decl_line(0xa9)
	.dwattr $C$DW$T$59, DW_AT_decl_column(0x1e)

$C$DW$T$69	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$69, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$69, DW_AT_language(DW_LANG_C)
$C$DW$151	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$151, DW_AT_type(*$C$DW$T$29)
$C$DW$152	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$11)
$C$DW$153	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$10)
	.dwendtag $C$DW$T$69

$C$DW$T$70	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$70, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$T$70, DW_AT_address_class(0x20)

$C$DW$T$71	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$71, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$71, DW_AT_language(DW_LANG_C)
$C$DW$154	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$10)
	.dwendtag $C$DW$T$71

$C$DW$T$72	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$72, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$T$72, DW_AT_address_class(0x20)

$C$DW$T$73	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$73, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$73, DW_AT_language(DW_LANG_C)
$C$DW$155	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$155, DW_AT_type(*$C$DW$T$10)
$C$DW$156	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$156, DW_AT_type(*$C$DW$T$60)
$C$DW$157	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$11)
	.dwendtag $C$DW$T$73

$C$DW$T$74	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$74, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$T$74, DW_AT_address_class(0x20)

$C$DW$T$75	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$75, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$75, DW_AT_language(DW_LANG_C)
$C$DW$158	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$10)
$C$DW$159	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$29)
$C$DW$160	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$11)
	.dwendtag $C$DW$T$75

$C$DW$T$76	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$76, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$T$76, DW_AT_address_class(0x20)

$C$DW$T$77	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$77, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$77, DW_AT_language(DW_LANG_C)
$C$DW$161	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$29)
	.dwendtag $C$DW$T$77

$C$DW$T$78	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$78, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$T$78, DW_AT_address_class(0x20)

$C$DW$T$79	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$79, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$79, DW_AT_language(DW_LANG_C)
$C$DW$162	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$162, DW_AT_type(*$C$DW$T$29)
$C$DW$163	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$163, DW_AT_type(*$C$DW$T$29)
	.dwendtag $C$DW$T$79

$C$DW$T$80	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$80, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$T$80, DW_AT_address_class(0x20)

$C$DW$T$86	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$86, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$86, DW_AT_language(DW_LANG_C)
$C$DW$164	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$164, DW_AT_type(*$C$DW$T$47)
$C$DW$165	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$165, DW_AT_type(*$C$DW$T$47)
	.dwendtag $C$DW$T$86

$C$DW$T$87	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$87, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$T$87, DW_AT_address_class(0x20)
$C$DW$T$88	.dwtag  DW_TAG_typedef, DW_AT_name("__TI_compar_fn")
	.dwattr $C$DW$T$88, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$T$88, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$88, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdlib.h")
	.dwattr $C$DW$T$88, DW_AT_decl_line(0xb5)
	.dwattr $C$DW$T$88, DW_AT_decl_column(0x13)
$C$DW$T$89	.dwtag  DW_TAG_typedef, DW_AT_name("int32_t")
	.dwattr $C$DW$T$89, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$89, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$89, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$89, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$T$89, DW_AT_decl_column(0x1d)
$C$DW$T$90	.dwtag  DW_TAG_typedef, DW_AT_name("int_fast16_t")
	.dwattr $C$DW$T$90, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$T$90, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$90, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$90, DW_AT_decl_line(0x47)
	.dwattr $C$DW$T$90, DW_AT_decl_column(0x17)
$C$DW$T$91	.dwtag  DW_TAG_typedef, DW_AT_name("int_fast32_t")
	.dwattr $C$DW$T$91, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$T$91, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$91, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$91, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$T$91, DW_AT_decl_column(0x17)
$C$DW$T$92	.dwtag  DW_TAG_typedef, DW_AT_name("int_fast8_t")
	.dwattr $C$DW$T$92, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$T$92, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$92, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$92, DW_AT_decl_line(0x45)
	.dwattr $C$DW$T$92, DW_AT_decl_column(0x17)
$C$DW$T$93	.dwtag  DW_TAG_typedef, DW_AT_name("int_least32_t")
	.dwattr $C$DW$T$93, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$T$93, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$93, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$93, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$T$93, DW_AT_decl_column(0x17)
$C$DW$T$94	.dwtag  DW_TAG_typedef, DW_AT_name("intptr_t")
	.dwattr $C$DW$T$94, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$94, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$94, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$94, DW_AT_decl_line(0x52)
	.dwattr $C$DW$T$94, DW_AT_decl_column(0x1a)
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x04)
$C$DW$T$95	.dwtag  DW_TAG_typedef, DW_AT_name("_Sizet")
	.dwattr $C$DW$T$95, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$95, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$95, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/yvals.h")
	.dwattr $C$DW$T$95, DW_AT_decl_line(0xab)
	.dwattr $C$DW$T$95, DW_AT_decl_column(0x1a)
$C$DW$T$61	.dwtag  DW_TAG_typedef, DW_AT_name("size_t")
	.dwattr $C$DW$T$61, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$61, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$61, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdio.h")
	.dwattr $C$DW$T$61, DW_AT_decl_line(0x58)
	.dwattr $C$DW$T$61, DW_AT_decl_column(0x19)
$C$DW$T$38	.dwtag  DW_TAG_typedef, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$38, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$38, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$38, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$T$38, DW_AT_decl_column(0x1c)
$C$DW$T$98	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$98, DW_AT_type(*$C$DW$T$38)
$C$DW$T$99	.dwtag  DW_TAG_typedef, DW_AT_name("uint_fast16_t")
	.dwattr $C$DW$T$99, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$T$99, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$99, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$99, DW_AT_decl_line(0x48)
	.dwattr $C$DW$T$99, DW_AT_decl_column(0x16)
$C$DW$T$100	.dwtag  DW_TAG_typedef, DW_AT_name("uint_fast32_t")
	.dwattr $C$DW$T$100, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$T$100, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$100, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$100, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$T$100, DW_AT_decl_column(0x16)
$C$DW$T$101	.dwtag  DW_TAG_typedef, DW_AT_name("uint_fast8_t")
	.dwattr $C$DW$T$101, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$T$101, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$101, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$101, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$101, DW_AT_decl_column(0x16)
$C$DW$T$102	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least32_t")
	.dwattr $C$DW$T$102, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$T$102, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$102, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$102, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$T$102, DW_AT_decl_column(0x16)
$C$DW$T$103	.dwtag  DW_TAG_typedef, DW_AT_name("uintptr_t")
	.dwattr $C$DW$T$103, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$103, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$103, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$103, DW_AT_decl_line(0x53)
	.dwattr $C$DW$T$103, DW_AT_decl_column(0x1a)
$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x04)
$C$DW$T$104	.dwtag  DW_TAG_typedef, DW_AT_name("_Int32t")
	.dwattr $C$DW$T$104, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$104, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$104, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/yvals.h")
	.dwattr $C$DW$T$104, DW_AT_decl_line(0xa6)
	.dwattr $C$DW$T$104, DW_AT_decl_column(0x0e)
$C$DW$T$105	.dwtag  DW_TAG_typedef, DW_AT_name("fpos_t")
	.dwattr $C$DW$T$105, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$105, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$105, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdio.h")
	.dwattr $C$DW$T$105, DW_AT_decl_line(0x6e)
	.dwattr $C$DW$T$105, DW_AT_decl_column(0x0e)
$C$DW$T$81	.dwtag  DW_TAG_typedef, DW_AT_name("off_t")
	.dwattr $C$DW$T$81, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$81, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$81, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/file.h")
	.dwattr $C$DW$T$81, DW_AT_decl_line(0x45)
	.dwattr $C$DW$T$81, DW_AT_decl_column(0x0e)

$C$DW$T$82	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$82, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$T$82, DW_AT_language(DW_LANG_C)
$C$DW$166	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$166, DW_AT_type(*$C$DW$T$10)
$C$DW$167	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$81)
$C$DW$168	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$168, DW_AT_type(*$C$DW$T$10)
	.dwendtag $C$DW$T$82

$C$DW$T$83	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$83, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$T$83, DW_AT_address_class(0x20)
$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x04)
$C$DW$T$106	.dwtag  DW_TAG_typedef, DW_AT_name("_Uint32t")
	.dwattr $C$DW$T$106, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$106, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$106, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/yvals.h")
	.dwattr $C$DW$T$106, DW_AT_decl_line(0xa7)
	.dwattr $C$DW$T$106, DW_AT_decl_column(0x17)
$C$DW$T$14	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$14, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$14, DW_AT_name("long long")
	.dwattr $C$DW$T$14, DW_AT_byte_size(0x08)
$C$DW$T$107	.dwtag  DW_TAG_typedef, DW_AT_name("_Longlong")
	.dwattr $C$DW$T$107, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$T$107, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$107, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/yvals.h")
	.dwattr $C$DW$T$107, DW_AT_decl_line(0x1b5)
	.dwattr $C$DW$T$107, DW_AT_decl_column(0x13)
$C$DW$T$108	.dwtag  DW_TAG_typedef, DW_AT_name("int64_t")
	.dwattr $C$DW$T$108, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$T$108, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$108, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$108, DW_AT_decl_line(0x32)
	.dwattr $C$DW$T$108, DW_AT_decl_column(0x21)
$C$DW$T$109	.dwtag  DW_TAG_typedef, DW_AT_name("int_fast64_t")
	.dwattr $C$DW$T$109, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$T$109, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$109, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$109, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$T$109, DW_AT_decl_column(0x17)
$C$DW$T$110	.dwtag  DW_TAG_typedef, DW_AT_name("int_least64_t")
	.dwattr $C$DW$T$110, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$T$110, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$110, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$110, DW_AT_decl_line(0x40)
	.dwattr $C$DW$T$110, DW_AT_decl_column(0x17)
$C$DW$T$111	.dwtag  DW_TAG_typedef, DW_AT_name("intmax_t")
	.dwattr $C$DW$T$111, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$T$111, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$111, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$111, DW_AT_decl_line(0x56)
	.dwattr $C$DW$T$111, DW_AT_decl_column(0x20)
$C$DW$T$15	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$15, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$15, DW_AT_name("unsigned long long")
	.dwattr $C$DW$T$15, DW_AT_byte_size(0x08)
$C$DW$T$112	.dwtag  DW_TAG_typedef, DW_AT_name("_ULonglong")
	.dwattr $C$DW$T$112, DW_AT_type(*$C$DW$T$15)
	.dwattr $C$DW$T$112, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$112, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/yvals.h")
	.dwattr $C$DW$T$112, DW_AT_decl_line(0x1b6)
	.dwattr $C$DW$T$112, DW_AT_decl_column(0x14)
$C$DW$T$113	.dwtag  DW_TAG_typedef, DW_AT_name("uint64_t")
	.dwattr $C$DW$T$113, DW_AT_type(*$C$DW$T$15)
	.dwattr $C$DW$T$113, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$113, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$113, DW_AT_decl_line(0x33)
	.dwattr $C$DW$T$113, DW_AT_decl_column(0x20)
$C$DW$T$114	.dwtag  DW_TAG_typedef, DW_AT_name("uint_fast64_t")
	.dwattr $C$DW$T$114, DW_AT_type(*$C$DW$T$113)
	.dwattr $C$DW$T$114, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$114, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$114, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$T$114, DW_AT_decl_column(0x16)
$C$DW$T$115	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least64_t")
	.dwattr $C$DW$T$115, DW_AT_type(*$C$DW$T$113)
	.dwattr $C$DW$T$115, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$115, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$115, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$115, DW_AT_decl_column(0x16)
$C$DW$T$116	.dwtag  DW_TAG_typedef, DW_AT_name("uintmax_t")
	.dwattr $C$DW$T$116, DW_AT_type(*$C$DW$T$15)
	.dwattr $C$DW$T$116, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$116, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdint.h")
	.dwattr $C$DW$T$116, DW_AT_decl_line(0x57)
	.dwattr $C$DW$T$116, DW_AT_decl_column(0x20)
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
$C$DW$T$117	.dwtag  DW_TAG_typedef, DW_AT_name("_Sysch_t")
	.dwattr $C$DW$T$117, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$117, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$117, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/yvals.h")
	.dwattr $C$DW$T$117, DW_AT_decl_line(0x218)
	.dwattr $C$DW$T$117, DW_AT_decl_column(0x0e)
$C$DW$T$28	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$6)
$C$DW$T$29	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$29, DW_AT_address_class(0x20)
$C$DW$T$60	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$60, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$60, DW_AT_address_class(0x20)
$C$DW$T$118	.dwtag  DW_TAG_typedef, DW_AT_name("__builtin_va_list")
	.dwattr $C$DW$T$118, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$T$118, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$118, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$T$118, DW_AT_decl_line(0x80)
	.dwattr $C$DW$T$118, DW_AT_decl_column(0x01)

$C$DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$24, DW_AT_name("__va_list")
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x04)
$C$DW$169	.dwtag  DW_TAG_member
	.dwattr $C$DW$169, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$169, DW_AT_name("__ap")
	.dwattr $C$DW$169, DW_AT_TI_symbol_name("__ap")
	.dwattr $C$DW$169, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$169, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$169, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdarg.h")
	.dwattr $C$DW$169, DW_AT_decl_line(0x36)
	.dwattr $C$DW$169, DW_AT_decl_column(0x0c)
	.dwendtag $C$DW$T$24

	.dwattr $C$DW$T$24, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdarg.h")
	.dwattr $C$DW$T$24, DW_AT_decl_line(0x35)
	.dwattr $C$DW$T$24, DW_AT_decl_column(0x10)
$C$DW$T$131	.dwtag  DW_TAG_typedef, DW_AT_name("va_list")
	.dwattr $C$DW$T$131, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$131, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$131, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/stdarg.h")
	.dwattr $C$DW$T$131, DW_AT_decl_line(0x37)
	.dwattr $C$DW$T$131, DW_AT_decl_column(0x03)
$C$DW$T$132	.dwtag  DW_TAG_typedef, DW_AT_name("_Va_list")
	.dwattr $C$DW$T$132, DW_AT_type(*$C$DW$T$131)
	.dwattr $C$DW$T$132, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$132, DW_AT_decl_file("C:/ti/ccsv6/tools/compiler/ti-cgt-arm_5.2.4/include/yvals.h")
	.dwattr $C$DW$T$132, DW_AT_decl_line(0x1f6)
	.dwattr $C$DW$T$132, DW_AT_decl_column(0x17)
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

