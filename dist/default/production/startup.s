
	; Microchip MPLAB XC8 C Compiler V2.10
	; Copyright (C) 2019 Microchip Technology Inc.

	; Auto-generated runtime startup code for final link stage.

	;
	; Compiler options:
	;
	; -q --opt=none --chip=16f877a \
	; -Mdist/default/production/Multiple_adc.X.production.map \
	; -DXPRJ_default=default --std=c99 --output=+elf:multilocs \
	; --stack=compiled:auto:auto --summary=+xml \
	; --summarydir=dist/default/production/memoryfile.xml \
	; -oMultiple_adc.X.production.elf --objdir=dist/default/production \
	; --outdir=dist/default/production \
	; build/default/production/muitiple_adc.p1 -DXPRJ_default=default \
	; --warn=-3 --errformat=%f:%l:%c: error: (%n) %s \
	; --warnformat=%f:%l:%c: warning: (%n) %s \
	; --msgformat=%f:%l:%c: advisory: (%n) %s
	;


	processor	16F877A

	global	_main,start,reset_vec
	fnroot	_main
	psect	config,class=CONFIG,delta=2,noexec
	psect	idloc,class=IDLOC,delta=2,noexec
	psect	code,class=CODE,delta=2
	psect	powerup,class=CODE,delta=2
	psect	reset_vec,class=CODE,delta=2
	psect	maintext,class=CODE,delta=2
	C	set	0
	Z	set	2
	PCL	set	2
	INDF	set	0

	STATUS	equ	3
	PCLATH	equ	0Ah

	psect	eeprom_data,class=EEDATA,delta=2,space=3,noexec
	psect	intentry,class=CODE,delta=2
	psect	functab,class=ENTRY,delta=2
	global	intlevel0,intlevel1,intlevel2, intlevel3, intlevel4, intlevel5
intlevel0:
intlevel1:
intlevel2:
intlevel3:
intlevel4:
intlevel5:
	psect	init,class=CODE,delta=2
	psect	cinit,class=CODE,delta=2
	psect	text,class=CODE,delta=2
	psect	end_init,class=CODE,delta=2
	psect	clrtext,class=CODE,delta=2
	FSR	set	4
	psect	strings,class=CODE,delta=2,reloc=256

	global ___stacklo, ___stackhi
	___stacklo	equ	0
	___stackhi	equ	0


	psect	stack,class=STACK,space=2,noexec
	global ___sp,___int_sp
	___sp:
	___int_sp:
	psect	reset_vec
reset_vec:
	; No powerup routine
	; No interrupt routine


	psect	init
start
	psect	end_init
	global start_initialization
	ljmp start_initialization	;jump to C runtime clear & initialization

; Config register CONFIG @ 0x2007
;	Oscillator Selection bits
;	FOSC = HS, HS oscillator
;	Watchdog Timer Enable bit
;	WDTE = OFF, WDT disabled
;	Power-up Timer Enable bit
;	PWRTE = OFF, PWRT disabled
;	Brown-out Reset Enable bit
;	BOREN = OFF, BOR disabled
;	Low-Voltage (Single-Supply) In-Circuit Serial Programming Enable bit
;	LVP = OFF, RB3 is digital I/O, HV on MCLR must be used for programming
;	Data EEPROM Memory Code Protection bit
;	CPD = OFF, Data EEPROM code protection off
;	Flash Program Memory Write Enable bits
;	WRT = OFF, Write protection off; all program memory may be written to by EECON control
;	In-Circuit Debugger Mode bit
;	DEBUG = 0x1, unprogrammed default
;	Flash Program Memory Code Protection bit
;	CP = OFF, Code protection off

	psect	config
		org 0x0
		dw 0x3F3A


psect common,class=COMMON,space=1
psect bank0,class=BANK0,space=1
psect bank1,class=BANK1,space=1
psect bank2,class=BANK2,space=1
psect bank3,class=BANK3,space=1
psect ram,class=RAM,space=1
psect abs1,class=ABS1,space=1
psect sfr0,class=SFR0,space=1
psect sfr1,class=SFR1,space=1
psect sfr2,class=SFR2,space=1
psect sfr3,class=SFR3,space=1


	end	start
