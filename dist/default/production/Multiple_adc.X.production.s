opt subtitle "Microchip MPLAB XC8 C Compiler v2.10 (Free license) build 20190730164152 Og1 "

opt pagewidth 120

	opt flic

	processor	16F877A
opt include "C:\Program Files\Microchip\xc8\v2.10\pic\include\16f877a.cgen.inc"
getbyte	macro	val,pos
	(((val) >> (8 * pos)) and 0xff)
endm
byte0	macro	val
	(getbyte(val,0))
endm
byte1	macro	val
	(getbyte(val,1))
endm
byte2	macro	val
	(getbyte(val,2))
endm
byte3	macro	val
	(getbyte(val,3))
endm
byte4	macro	val
	(getbyte(val,4))
endm
byte5	macro	val
	(getbyte(val,5))
endm
byte6	macro	val
	(getbyte(val,6))
endm
byte7	macro	val
	(getbyte(val,7))
endm
getword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffff)
endm
word0	macro	val
	(getword(val,0))
endm
word1	macro	val
	(getword(val,2))
endm
word2	macro	val
	(getword(val,4))
endm
word3	macro	val
	(getword(val,6))
endm
gettword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffff)
endm
tword0	macro	val
	(gettword(val,0))
endm
tword1	macro	val
	(gettword(val,3))
endm
tword2	macro	val
	(gettword(val,6))
endm
getdword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffffff)
endm
dword0	macro	val
	(getdword(val,0))
endm
dword1	macro	val
	(getdword(val,4))
endm
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
# 54 "C:\Program Files\Microchip\xc8\v2.10\pic\include\PIC16F877A.h"
INDF equ 00h ;# 
# 61 "C:\Program Files\Microchip\xc8\v2.10\pic\include\PIC16F877A.h"
TMR0 equ 01h ;# 
# 68 "C:\Program Files\Microchip\xc8\v2.10\pic\include\PIC16F877A.h"
PCL equ 02h ;# 
# 75 "C:\Program Files\Microchip\xc8\v2.10\pic\include\PIC16F877A.h"
STATUS equ 03h ;# 
# 161 "C:\Program Files\Microchip\xc8\v2.10\pic\include\PIC16F877A.h"
FSR equ 04h ;# 
# 168 "C:\Program Files\Microchip\xc8\v2.10\pic\include\PIC16F877A.h"
PORTA equ 05h ;# 
# 218 "C:\Program Files\Microchip\xc8\v2.10\pic\include\PIC16F877A.h"
PORTB equ 06h ;# 
# 280 "C:\Program Files\Microchip\xc8\v2.10\pic\include\PIC16F877A.h"
PORTC equ 07h ;# 
# 342 "C:\Program Files\Microchip\xc8\v2.10\pic\include\PIC16F877A.h"
PORTD equ 08h ;# 
# 404 "C:\Program Files\Microchip\xc8\v2.10\pic\include\PIC16F877A.h"
PORTE equ 09h ;# 
# 436 "C:\Program Files\Microchip\xc8\v2.10\pic\include\PIC16F877A.h"
PCLATH equ 0Ah ;# 
# 456 "C:\Program Files\Microchip\xc8\v2.10\pic\include\PIC16F877A.h"
INTCON equ 0Bh ;# 
# 534 "C:\Program Files\Microchip\xc8\v2.10\pic\include\PIC16F877A.h"
PIR1 equ 0Ch ;# 
# 596 "C:\Program Files\Microchip\xc8\v2.10\pic\include\PIC16F877A.h"
PIR2 equ 0Dh ;# 
# 636 "C:\Program Files\Microchip\xc8\v2.10\pic\include\PIC16F877A.h"
TMR1 equ 0Eh ;# 
# 643 "C:\Program Files\Microchip\xc8\v2.10\pic\include\PIC16F877A.h"
TMR1L equ 0Eh ;# 
# 650 "C:\Program Files\Microchip\xc8\v2.10\pic\include\PIC16F877A.h"
TMR1H equ 0Fh ;# 
# 657 "C:\Program Files\Microchip\xc8\v2.10\pic\include\PIC16F877A.h"
T1CON equ 010h ;# 
# 732 "C:\Program Files\Microchip\xc8\v2.10\pic\include\PIC16F877A.h"
TMR2 equ 011h ;# 
# 739 "C:\Program Files\Microchip\xc8\v2.10\pic\include\PIC16F877A.h"
T2CON equ 012h ;# 
# 810 "C:\Program Files\Microchip\xc8\v2.10\pic\include\PIC16F877A.h"
SSPBUF equ 013h ;# 
# 817 "C:\Program Files\Microchip\xc8\v2.10\pic\include\PIC16F877A.h"
SSPCON equ 014h ;# 
# 887 "C:\Program Files\Microchip\xc8\v2.10\pic\include\PIC16F877A.h"
CCPR1 equ 015h ;# 
# 894 "C:\Program Files\Microchip\xc8\v2.10\pic\include\PIC16F877A.h"
CCPR1L equ 015h ;# 
# 901 "C:\Program Files\Microchip\xc8\v2.10\pic\include\PIC16F877A.h"
CCPR1H equ 016h ;# 
# 908 "C:\Program Files\Microchip\xc8\v2.10\pic\include\PIC16F877A.h"
CCP1CON equ 017h ;# 
# 966 "C:\Program Files\Microchip\xc8\v2.10\pic\include\PIC16F877A.h"
RCSTA equ 018h ;# 
# 1061 "C:\Program Files\Microchip\xc8\v2.10\pic\include\PIC16F877A.h"
TXREG equ 019h ;# 
# 1068 "C:\Program Files\Microchip\xc8\v2.10\pic\include\PIC16F877A.h"
RCREG equ 01Ah ;# 
# 1075 "C:\Program Files\Microchip\xc8\v2.10\pic\include\PIC16F877A.h"
CCPR2 equ 01Bh ;# 
# 1082 "C:\Program Files\Microchip\xc8\v2.10\pic\include\PIC16F877A.h"
CCPR2L equ 01Bh ;# 
# 1089 "C:\Program Files\Microchip\xc8\v2.10\pic\include\PIC16F877A.h"
CCPR2H equ 01Ch ;# 
# 1096 "C:\Program Files\Microchip\xc8\v2.10\pic\include\PIC16F877A.h"
CCP2CON equ 01Dh ;# 
# 1154 "C:\Program Files\Microchip\xc8\v2.10\pic\include\PIC16F877A.h"
ADRESH equ 01Eh ;# 
# 1161 "C:\Program Files\Microchip\xc8\v2.10\pic\include\PIC16F877A.h"
ADCON0 equ 01Fh ;# 
# 1257 "C:\Program Files\Microchip\xc8\v2.10\pic\include\PIC16F877A.h"
OPTION_REG equ 081h ;# 
# 1327 "C:\Program Files\Microchip\xc8\v2.10\pic\include\PIC16F877A.h"
TRISA equ 085h ;# 
# 1377 "C:\Program Files\Microchip\xc8\v2.10\pic\include\PIC16F877A.h"
TRISB equ 086h ;# 
# 1439 "C:\Program Files\Microchip\xc8\v2.10\pic\include\PIC16F877A.h"
TRISC equ 087h ;# 
# 1501 "C:\Program Files\Microchip\xc8\v2.10\pic\include\PIC16F877A.h"
TRISD equ 088h ;# 
# 1563 "C:\Program Files\Microchip\xc8\v2.10\pic\include\PIC16F877A.h"
TRISE equ 089h ;# 
# 1620 "C:\Program Files\Microchip\xc8\v2.10\pic\include\PIC16F877A.h"
PIE1 equ 08Ch ;# 
# 1682 "C:\Program Files\Microchip\xc8\v2.10\pic\include\PIC16F877A.h"
PIE2 equ 08Dh ;# 
# 1722 "C:\Program Files\Microchip\xc8\v2.10\pic\include\PIC16F877A.h"
PCON equ 08Eh ;# 
# 1756 "C:\Program Files\Microchip\xc8\v2.10\pic\include\PIC16F877A.h"
SSPCON2 equ 091h ;# 
# 1818 "C:\Program Files\Microchip\xc8\v2.10\pic\include\PIC16F877A.h"
PR2 equ 092h ;# 
# 1825 "C:\Program Files\Microchip\xc8\v2.10\pic\include\PIC16F877A.h"
SSPADD equ 093h ;# 
# 1832 "C:\Program Files\Microchip\xc8\v2.10\pic\include\PIC16F877A.h"
SSPSTAT equ 094h ;# 
# 2001 "C:\Program Files\Microchip\xc8\v2.10\pic\include\PIC16F877A.h"
TXSTA equ 098h ;# 
# 2082 "C:\Program Files\Microchip\xc8\v2.10\pic\include\PIC16F877A.h"
SPBRG equ 099h ;# 
# 2089 "C:\Program Files\Microchip\xc8\v2.10\pic\include\PIC16F877A.h"
CMCON equ 09Ch ;# 
# 2159 "C:\Program Files\Microchip\xc8\v2.10\pic\include\PIC16F877A.h"
CVRCON equ 09Dh ;# 
# 2224 "C:\Program Files\Microchip\xc8\v2.10\pic\include\PIC16F877A.h"
ADRESL equ 09Eh ;# 
# 2231 "C:\Program Files\Microchip\xc8\v2.10\pic\include\PIC16F877A.h"
ADCON1 equ 09Fh ;# 
# 2290 "C:\Program Files\Microchip\xc8\v2.10\pic\include\PIC16F877A.h"
EEDATA equ 010Ch ;# 
# 2297 "C:\Program Files\Microchip\xc8\v2.10\pic\include\PIC16F877A.h"
EEADR equ 010Dh ;# 
# 2304 "C:\Program Files\Microchip\xc8\v2.10\pic\include\PIC16F877A.h"
EEDATH equ 010Eh ;# 
# 2311 "C:\Program Files\Microchip\xc8\v2.10\pic\include\PIC16F877A.h"
EEADRH equ 010Fh ;# 
# 2318 "C:\Program Files\Microchip\xc8\v2.10\pic\include\PIC16F877A.h"
EECON1 equ 018Ch ;# 
# 2363 "C:\Program Files\Microchip\xc8\v2.10\pic\include\PIC16F877A.h"
EECON2 equ 018Dh ;# 
# 54 "C:\Program Files\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
INDF equ 00h ;# 
# 61 "C:\Program Files\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 68 "C:\Program Files\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PCL equ 02h ;# 
# 75 "C:\Program Files\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
STATUS equ 03h ;# 
# 161 "C:\Program Files\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
FSR equ 04h ;# 
# 168 "C:\Program Files\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTA equ 05h ;# 
# 218 "C:\Program Files\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTB equ 06h ;# 
# 280 "C:\Program Files\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTC equ 07h ;# 
# 342 "C:\Program Files\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTD equ 08h ;# 
# 404 "C:\Program Files\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PORTE equ 09h ;# 
# 436 "C:\Program Files\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 456 "C:\Program Files\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 534 "C:\Program Files\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 596 "C:\Program Files\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 636 "C:\Program Files\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 643 "C:\Program Files\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 650 "C:\Program Files\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 657 "C:\Program Files\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
T1CON equ 010h ;# 
# 732 "C:\Program Files\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 739 "C:\Program Files\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
T2CON equ 012h ;# 
# 810 "C:\Program Files\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 817 "C:\Program Files\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 887 "C:\Program Files\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 894 "C:\Program Files\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 901 "C:\Program Files\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 908 "C:\Program Files\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 966 "C:\Program Files\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1061 "C:\Program Files\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1068 "C:\Program Files\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1075 "C:\Program Files\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1082 "C:\Program Files\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1089 "C:\Program Files\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1096 "C:\Program Files\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1154 "C:\Program Files\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1161 "C:\Program Files\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1257 "C:\Program Files\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1327 "C:\Program Files\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1377 "C:\Program Files\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1439 "C:\Program Files\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1501 "C:\Program Files\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1563 "C:\Program Files\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1620 "C:\Program Files\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1682 "C:\Program Files\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1722 "C:\Program Files\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1756 "C:\Program Files\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1818 "C:\Program Files\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1825 "C:\Program Files\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1832 "C:\Program Files\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2001 "C:\Program Files\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2082 "C:\Program Files\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2089 "C:\Program Files\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2159 "C:\Program Files\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2224 "C:\Program Files\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2231 "C:\Program Files\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2290 "C:\Program Files\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2297 "C:\Program Files\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2304 "C:\Program Files\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2311 "C:\Program Files\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2318 "C:\Program Files\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2363 "C:\Program Files\Microchip\xc8\v2.10\pic\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
	FNCALL	_main,_ADC_inti
	FNCALL	_main,_LCD_Command
	FNCALL	_main,_LCD_Init
	FNCALL	_main,_LCD_string
	FNCALL	_main,_display
	FNCALL	_main,_read_Adc
	FNCALL	_display,_LCD_Char
	FNCALL	_display,___awdiv
	FNCALL	_display,___awmod
	FNCALL	_LCD_string,_LCD_Char
	FNCALL	_LCD_Init,_LCD_Command
	FNROOT	_main
	global	_adc_value2
	global	_adc_value0
	global	_PORTD
_PORTD	set	0x8
	global	_ADRESH
_ADRESH	set	0x1E
	global	_ADCON0
_ADCON0	set	0x1F
	global	_RC1
_RC1	set	0x39
	global	_RC0
_RC0	set	0x38
	global	_GO_nDONE
_GO_nDONE	set	0xFA
	global	_ADCS1
_ADCS1	set	0xFF
	global	_ADCS0
_ADCS0	set	0xFE
	global	_ADON
_ADON	set	0xF8
	global	_ADRESL
_ADRESL	set	0x9E
	global	_TRISD
_TRISD	set	0x88
	global	_TRISE2
_TRISE2	set	0x44A
	global	_TRISE1
_TRISE1	set	0x449
	global	_TRISE0
_TRISE0	set	0x448
	global	_TRISA5
_TRISA5	set	0x42D
	global	_TRISA3
_TRISA3	set	0x42B
	global	_TRISA2
_TRISA2	set	0x42A
	global	_TRISA1
_TRISA1	set	0x429
	global	_TRISA0
_TRISA0	set	0x428
	global	_PCFG3
_PCFG3	set	0x4FB
	global	_PCFG2
_PCFG2	set	0x4FA
	global	_PCFG1
_PCFG1	set	0x4F9
	global	_PCFG0
_PCFG0	set	0x4F8
	global	_ADFM
_ADFM	set	0x4FF
	global	_ADCS2
_ADCS2	set	0x4FE
	global	_TRISC0
_TRISC0	set	0x438
	global	_TRISC1
_TRISC1	set	0x439
psect	strings,class=STRING,delta=2,noexec
global __pstrings
__pstrings:
stringtab:
	global    __stringtab
__stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
	global __stringbase
__stringbase:
	retlw	0
psect	strings
	global    __end_of__stringtab
__end_of__stringtab:
	
STR_1:	
	retlw	65	;'A'
	retlw	68	;'D'
	retlw	67	;'C'
	retlw	48	;'0'
	retlw	61	;'='
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_2:	
	retlw	65	;'A'
	retlw	68	;'D'
	retlw	67	;'C'
	retlw	50	;'2'
	retlw	61	;'='
	retlw	32	;' '
	retlw	0
psect	strings
; #config settings
global __CFG_FOSC$HS
__CFG_FOSC$HS equ 0x0
global __CFG_WDTE$OFF
__CFG_WDTE$OFF equ 0x0
global __CFG_PWRTE$OFF
__CFG_PWRTE$OFF equ 0x0
global __CFG_BOREN$OFF
__CFG_BOREN$OFF equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
global __CFG_CPD$OFF
__CFG_CPD$OFF equ 0x0
global __CFG_WRT$OFF
__CFG_WRT$OFF equ 0x0
global __CFG_CP$OFF
__CFG_CP$OFF equ 0x0
	file	"dist/default/production\Multiple_adc.X.production.s"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_adc_value2:
       ds      2

_adc_value0:
       ds      2

	file	"dist/default/production\Multiple_adc.X.production.s"
	line	#
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_LCD_Init:	; 1 bytes @ 0x0
?_ADC_inti:	; 1 bytes @ 0x0
??_ADC_inti:	; 1 bytes @ 0x0
?_LCD_Command:	; 1 bytes @ 0x0
??_LCD_Command:	; 1 bytes @ 0x0
?_LCD_string:	; 1 bytes @ 0x0
?_LCD_Char:	; 1 bytes @ 0x0
??_LCD_Char:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
	global	?_read_Adc
?_read_Adc:	; 2 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	ds	2
??_read_Adc:	; 1 bytes @ 0x2
	global	ADC_inti@ch
ADC_inti@ch:	; 1 bytes @ 0x2
	global	LCD_Command@cmd
LCD_Command@cmd:	; 1 bytes @ 0x2
	global	LCD_Char@char_data
LCD_Char@char_data:	; 1 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	ds	1
??_LCD_Init:	; 1 bytes @ 0x3
??_LCD_string:	; 1 bytes @ 0x3
	ds	1
??___awdiv:	; 1 bytes @ 0x4
	global	LCD_string@dat
LCD_string@dat:	; 1 bytes @ 0x4
	global	read_Adc@n
read_Adc@n:	; 2 bytes @ 0x4
	ds	1
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x5
	ds	1
	global	read_Adc@ch1
read_Adc@ch1:	; 1 bytes @ 0x6
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x6
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x7
	ds	2
	global	?___awmod
?___awmod:	; 2 bytes @ 0x9
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x9
	ds	2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0xB
	ds	2
??___awmod:	; 1 bytes @ 0xD
	ds	1
??_main:	; 1 bytes @ 0xE
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x0
	ds	1
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x1
	ds	1
?_display:	; 1 bytes @ 0x2
	global	display@adc_value
display@adc_value:	; 2 bytes @ 0x2
	ds	2
??_display:	; 1 bytes @ 0x4
	ds	2
;!
;!Data Sizes:
;!    Strings     14
;!    Constant    0
;!    Data        0
;!    BSS         4
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     14      14
;!    BANK0            80      6      10
;!    BANK1            80      0       0
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    LCD_string@dat	PTR unsigned char  size(1) Largest target is 7
;!		 -> STR_2(CODE[7]), STR_1(CODE[7]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _display->___awmod
;!    ___awmod->___awdiv
;!    _LCD_string->_LCD_Char
;!    _LCD_Init->_LCD_Command
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_display
;!    _display->___awmod
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 1     1      0    2036
;!                           _ADC_inti
;!                        _LCD_Command
;!                           _LCD_Init
;!                         _LCD_string
;!                            _display
;!                           _read_Adc
;! ---------------------------------------------------------------------------------
;! (1) _read_Adc                                             7     5      2      67
;!                                              0 COMMON     7     5      2
;! ---------------------------------------------------------------------------------
;! (1) _display                                              4     2      2    1770
;!                                              2 BANK0      4     2      2
;!                           _LCD_Char
;!                            ___awdiv
;!                            ___awmod
;! ---------------------------------------------------------------------------------
;! (2) ___awmod                                              7     3      4     752
;!                                              9 COMMON     5     1      4
;!                                              0 BANK0      2     2      0
;!                            ___awdiv (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___awdiv                                              9     5      4     756
;!                                              0 COMMON     9     5      4
;! ---------------------------------------------------------------------------------
;! (1) _LCD_string                                           2     2      0     133
;!                                              3 COMMON     2     2      0
;!                           _LCD_Char
;! ---------------------------------------------------------------------------------
;! (2) _LCD_Char                                             3     3      0      22
;!                                              0 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! (1) _LCD_Init                                             2     2      0      22
;!                                              3 COMMON     2     2      0
;!                        _LCD_Command
;! ---------------------------------------------------------------------------------
;! (2) _LCD_Command                                          3     3      0      22
;!                                              0 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! (1) _ADC_inti                                             3     3      0      22
;!                                              0 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _ADC_inti
;!   _LCD_Command
;!   _LCD_Init
;!     _LCD_Command
;!   _LCD_string
;!     _LCD_Char
;!   _display
;!     _LCD_Char
;!     ___awdiv
;!     ___awmod
;!       ___awdiv (ARG)
;!   _read_Adc
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      E       E       1      100.0%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0      18       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50      6       A       5       12.5%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK3            60      0       0       8        0.0%
;!BANK3               60      0       0       9        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!BANK2               60      0       0      11        0.0%
;!DATA                 0      0      18      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 27 in file "muitiple_adc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  ch              1    0        unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_ADC_inti
;;		_LCD_Command
;;		_LCD_Init
;;		_LCD_string
;;		_display
;;		_read_Adc
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"muitiple_adc.c"
	line	27
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"muitiple_adc.c"
	line	27
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	callstack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	31
	
l1058:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1081/8)^080h,(1081)&7	;volatile
	line	32
	bcf	(1080/8)^080h,(1080)&7	;volatile
	line	33
	
l1060:	
	clrf	(136)^080h	;volatile
	line	39
	
l1062:	
	fcall	_LCD_Init
	line	42
	
l1064:	
	movlw	low(0)
	fcall	_ADC_inti
	line	43
	
l1066:	
	movlw	low(02h)
	fcall	_ADC_inti
	line	44
	
l1068:	
	movlw	low(080h)
	fcall	_LCD_Command
	line	45
	
l1070:	
	movlw	(low((((STR_1)-__stringbase)|8000h)))&0ffh
	fcall	_LCD_string
	line	46
	
l1072:	
	movlw	low(0C0h)
	fcall	_LCD_Command
	line	47
	
l1074:	
	movlw	(low((((STR_2)-__stringbase)|8000h)))&0ffh
	fcall	_LCD_string
	line	52
	
l1076:	
	movlw	low(0)
	fcall	_read_Adc
	movf	(1+(?_read_Adc)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_adc_value0+1)
	movf	(0+(?_read_Adc)),w
	movwf	(_adc_value0)
	line	53
	
l1078:	
	movlw	low(02h)
	fcall	_read_Adc
	movf	(1+(?_read_Adc)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_adc_value2+1)
	movf	(0+(?_read_Adc)),w
	movwf	(_adc_value2)
	line	55
	
l1080:	
	movlw	low(085h)
	fcall	_LCD_Command
	line	56
	
l1082:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_adc_value0+1),w
	movwf	(display@adc_value+1)
	movf	(_adc_value0),w
	movwf	(display@adc_value)
	fcall	_display
	line	58
	
l1084:	
	movlw	low(0C5h)
	fcall	_LCD_Command
	line	59
	
l1086:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_adc_value2+1),w
	movwf	(display@adc_value+1)
	movf	(_adc_value2),w
	movwf	(display@adc_value)
	fcall	_display
	goto	l1076
	global	start
	ljmp	start
	opt callstack 0
	line	62
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_read_Adc

;; *************** function _read_Adc *****************
;; Defined at:
;;		line 106 in file "muitiple_adc.c"
;; Parameters:    Size  Location     Type
;;  ch1             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ch1             1    6[COMMON] unsigned char 
;;  n               2    4[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	106
global __ptext1
__ptext1:	;psect for function _read_Adc
psect	text1
	file	"muitiple_adc.c"
	line	106
	global	__size_of_read_Adc
	__size_of_read_Adc	equ	__end_of_read_Adc-_read_Adc
	
_read_Adc:	
;incstack = 0
	opt	callstack 7
; Regs used in _read_Adc: [wreg+status,2+status,0]
	movwf	(read_Adc@ch1)
	line	109
	
l1036:	
	movlw	low(085h)
	movwf	(??_read_Adc+0)+0
	movf	(??_read_Adc+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(31),f	;volatile
	line	110
	
l1038:	
	movlw	low(04h)
	subwf	(read_Adc@ch1),w
	skipc
	goto	u441
	goto	u440
u441:
	goto	l1044
u440:
	line	112
	
l1040:	
	clrf	(?_read_Adc)
	clrf	(?_read_Adc+1)
	goto	l99
	line	114
	
l1044:	
	movf	(read_Adc@ch1),w	;volatile
	movwf	(??_read_Adc+0)+0
	movlw	(03h)-1
u455:
	clrc
	rlf	(??_read_Adc+0)+0,f
	addlw	-1
	skipz
	goto	u455
	clrc
	rlf	(??_read_Adc+0)+0,w
	movwf	(??_read_Adc+1)+0
	movf	(??_read_Adc+1)+0,w
	iorwf	(31),f	;volatile
	line	115
	
l1046:	
	opt asmopt_push
opt asmopt_off
movlw	13
movwf	((??_read_Adc+0)+0+1),f
	movlw	251
movwf	((??_read_Adc+0)+0),f
	u477:
decfsz	((??_read_Adc+0)+0),f
	goto	u477
	decfsz	((??_read_Adc+0)+0+1),f
	goto	u477
	nop2
opt asmopt_pop

	line	116
	
l1048:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(250/8),(250)&7	;volatile
	line	117
	
l100:	
	btfsc	(250/8),(250)&7	;volatile
	goto	u461
	goto	u460
u461:
	goto	l100
u460:
	line	118
	
l1050:	
	movf	(30),w	;volatile
	movwf	(read_Adc@n+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	movwf	(read_Adc@n)
	line	119
	movf	(read_Adc@n+1),w
	movwf	(?_read_Adc+1)
	movf	(read_Adc@n),w
	movwf	(?_read_Adc)
	line	120
	
l99:	
	return
	opt callstack 0
GLOBAL	__end_of_read_Adc
	__end_of_read_Adc:
	signat	_read_Adc,4218
	global	_display

;; *************** function _display *****************
;; Defined at:
;;		line 170 in file "muitiple_adc.c"
;; Parameters:    Size  Location     Type
;;  adc_value       2    2[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_LCD_Char
;;		___awdiv
;;		___awmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	170
global __ptext2
__ptext2:	;psect for function _display
psect	text2
	file	"muitiple_adc.c"
	line	170
	global	__size_of_display
	__size_of_display	equ	__end_of_display-_display
	
_display:	
;incstack = 0
	opt	callstack 6
; Regs used in _display: [wreg+status,2+status,0+pclath+cstack]
	line	172
	
l1054:	
	movlw	0E8h
	movwf	(___awdiv@divisor)
	movlw	03h
	movwf	((___awdiv@divisor))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(display@adc_value+1),w
	movwf	(___awdiv@dividend+1)
	movf	(display@adc_value),w
	movwf	(___awdiv@dividend)
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	030h
	fcall	_LCD_Char
	line	173
	movlw	0Ah
	movwf	(___awmod@divisor)
	movlw	0
	movwf	((___awmod@divisor))+1
	movlw	064h
	movwf	(___awdiv@divisor)
	movlw	0
	movwf	((___awdiv@divisor))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(display@adc_value+1),w
	movwf	(___awdiv@dividend+1)
	movf	(display@adc_value),w
	movwf	(___awdiv@dividend)
	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	movwf	(___awmod@dividend+1)
	movf	(0+(?___awdiv)),w
	movwf	(___awmod@dividend)
	fcall	___awmod
	movf	(0+(?___awmod)),w
	addlw	030h
	fcall	_LCD_Char
	line	174
	movlw	0Ah
	movwf	(___awmod@divisor)
	movlw	0
	movwf	((___awmod@divisor))+1
	movlw	0Ah
	movwf	(___awdiv@divisor)
	movlw	0
	movwf	((___awdiv@divisor))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(display@adc_value+1),w
	movwf	(___awdiv@dividend+1)
	movf	(display@adc_value),w
	movwf	(___awdiv@dividend)
	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	movwf	(___awmod@dividend+1)
	movf	(0+(?___awdiv)),w
	movwf	(___awmod@dividend)
	fcall	___awmod
	movf	(0+(?___awmod)),w
	addlw	030h
	fcall	_LCD_Char
	line	175
	movlw	0Ah
	movwf	(___awmod@divisor)
	movlw	0
	movwf	((___awmod@divisor))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(display@adc_value+1),w
	movwf	(___awmod@dividend+1)
	movf	(display@adc_value),w
	movwf	(___awmod@dividend)
	fcall	___awmod
	movf	(0+(?___awmod)),w
	addlw	030h
	fcall	_LCD_Char
	line	176
	movlw	low(0DFh)
	fcall	_LCD_Char
	line	177
	movlw	low(063h)
	fcall	_LCD_Char
	line	178
	
l1056:	
	opt asmopt_push
opt asmopt_off
movlw	33
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_display+0)+0+1),f
	movlw	117
movwf	((??_display+0)+0),f
	u487:
decfsz	((??_display+0)+0),f
	goto	u487
	decfsz	((??_display+0)+0+1),f
	goto	u487
	nop2
opt asmopt_pop

	line	180
	
l120:	
	return
	opt callstack 0
GLOBAL	__end_of_display
	__end_of_display:
	signat	_display,4217
	global	___awmod

;; *************** function ___awmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\Microchip\xc8\v2.10\pic\sources\c90\common\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    9[COMMON] int 
;;  dividend        2   11[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    1[BANK0 ] unsigned char 
;;  counter         1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    9[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         5       2       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_display
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\Program Files\Microchip\xc8\v2.10\pic\sources\c90\common\awmod.c"
	line	5
global __ptext3
__ptext3:	;psect for function ___awmod
psect	text3
	file	"C:\Program Files\Microchip\xc8\v2.10\pic\sources\c90\common\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
;incstack = 0
	opt	callstack 6
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	12
	
l970:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awmod@sign)
	line	13
	
l972:	
	btfss	(___awmod@dividend+1),7
	goto	u341
	goto	u340
u341:
	goto	l978
u340:
	line	14
	
l974:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	15
	
l976:	
	clrf	(___awmod@sign)
	incf	(___awmod@sign),f
	line	17
	
l978:	
	btfss	(___awmod@divisor+1),7
	goto	u351
	goto	u350
u351:
	goto	l982
u350:
	line	18
	
l980:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	line	19
	
l982:	
	movf	((___awmod@divisor)),w
iorwf	((___awmod@divisor+1)),w
	btfsc	status,2
	goto	u361
	goto	u360
u361:
	goto	l1000
u360:
	line	20
	
l984:	
	clrf	(___awmod@counter)
	incf	(___awmod@counter),f
	line	21
	goto	l990
	line	22
	
l986:	
	movlw	01h
	
u375:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u375
	line	23
	
l988:	
	movlw	low(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	line	21
	
l990:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u381
	goto	u380
u381:
	goto	l986
u380:
	line	26
	
l992:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u395
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u395:
	skipc
	goto	u391
	goto	u390
u391:
	goto	l996
u390:
	line	27
	
l994:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	line	28
	
l996:	
	movlw	01h
	
u405:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u405
	line	29
	
l998:	
	movlw	01h
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u411
	goto	u410
u411:
	goto	l992
u410:
	line	31
	
l1000:	
	movf	((___awmod@sign)),w
	btfsc	status,2
	goto	u421
	goto	u420
u421:
	goto	l1004
u420:
	line	32
	
l1002:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	33
	
l1004:	
	movf	(___awmod@dividend+1),w
	movwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	movwf	(?___awmod)
	line	34
	
l372:	
	return
	opt callstack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
	signat	___awmod,8314
	global	___awdiv

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\Microchip\xc8\v2.10\pic\sources\c90\common\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    7[COMMON] int 
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         9       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_display
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\Program Files\Microchip\xc8\v2.10\pic\sources\c90\common\awdiv.c"
	line	5
global __ptext4
__ptext4:	;psect for function ___awdiv
psect	text4
	file	"C:\Program Files\Microchip\xc8\v2.10\pic\sources\c90\common\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
;incstack = 0
	opt	callstack 6
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	13
	
l926:	
	clrf	(___awdiv@sign)
	line	14
	
l928:	
	btfss	(___awdiv@divisor+1),7
	goto	u241
	goto	u240
u241:
	goto	l934
u240:
	line	15
	
l930:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	16
	
l932:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	line	18
	
l934:	
	btfss	(___awdiv@dividend+1),7
	goto	u251
	goto	u250
u251:
	goto	l940
u250:
	line	19
	
l936:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	20
	
l938:	
	movlw	low(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	line	22
	
l940:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	23
	
l942:	
	movf	((___awdiv@divisor)),w
iorwf	((___awdiv@divisor+1)),w
	btfsc	status,2
	goto	u261
	goto	u260
u261:
	goto	l962
u260:
	line	24
	
l944:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	25
	goto	l950
	line	26
	
l946:	
	movlw	01h
	
u275:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u275
	line	27
	
l948:	
	movlw	low(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	line	25
	
l950:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u281
	goto	u280
u281:
	goto	l946
u280:
	line	30
	
l952:	
	movlw	01h
	
u295:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u295
	line	31
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u305
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u305:
	skipc
	goto	u301
	goto	u300
u301:
	goto	l958
u300:
	line	32
	
l954:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	33
	
l956:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	35
	
l958:	
	movlw	01h
	
u315:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u315
	line	36
	
l960:	
	movlw	01h
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u321
	goto	u320
u321:
	goto	l952
u320:
	line	38
	
l962:	
	movf	((___awdiv@sign)),w
	btfsc	status,2
	goto	u331
	goto	u330
u331:
	goto	l966
u330:
	line	39
	
l964:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	line	40
	
l966:	
	movf	(___awdiv@quotient+1),w
	movwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	movwf	(?___awdiv)
	line	41
	
l359:	
	return
	opt callstack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_LCD_string

;; *************** function _LCD_string *****************
;; Defined at:
;;		line 141 in file "muitiple_adc.c"
;; Parameters:    Size  Location     Type
;;  dat             1    wreg     PTR unsigned char 
;;		 -> STR_2(7), STR_1(7), 
;; Auto vars:     Size  Location     Type
;;  dat             1    4[COMMON] PTR unsigned char 
;;		 -> STR_2(7), STR_1(7), 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_LCD_Char
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	file	"muitiple_adc.c"
	line	141
global __ptext5
__ptext5:	;psect for function _LCD_string
psect	text5
	file	"muitiple_adc.c"
	line	141
	global	__size_of_LCD_string
	__size_of_LCD_string	equ	__end_of_LCD_string-_LCD_string
	
_LCD_string:	
;incstack = 0
	opt	callstack 6
; Regs used in _LCD_string: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	movwf	(LCD_string@dat)
	line	143
	
l1028:	
	goto	l1034
	line	145
	
l1030:	
	movf	(LCD_string@dat),w
	movwf	fsr0
	fcall	stringdir
	fcall	_LCD_Char
	line	146
	
l1032:	
	movlw	low(01h)
	movwf	(??_LCD_string+0)+0
	movf	(??_LCD_string+0)+0,w
	addwf	(LCD_string@dat),f
	line	143
	
l1034:	
	movf	(LCD_string@dat),w
	movwf	fsr0
	fcall	stringdir
	xorlw	0
	skipz
	goto	u431
	goto	u430
u431:
	goto	l1030
u430:
	line	148
	
l111:	
	return
	opt callstack 0
GLOBAL	__end_of_LCD_string
	__end_of_LCD_string:
	signat	_LCD_string,4217
	global	_LCD_Char

;; *************** function _LCD_Char *****************
;; Defined at:
;;		line 160 in file "muitiple_adc.c"
;; Parameters:    Size  Location     Type
;;  char_data       1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  char_data       1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LCD_string
;;		_display
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	line	160
global __ptext6
__ptext6:	;psect for function _LCD_Char
psect	text6
	file	"muitiple_adc.c"
	line	160
	global	__size_of_LCD_Char
	__size_of_LCD_Char	equ	__end_of_LCD_Char-_LCD_Char
	
_LCD_Char:	
;incstack = 0
	opt	callstack 6
; Regs used in _LCD_Char: [wreg]
	movwf	(LCD_Char@char_data)
	line	162
	
l918:	
	movf	(LCD_Char@char_data),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	163
	
l920:	
	bsf	(56/8),(56)&7	;volatile
	line	164
	
l922:	
	bsf	(57/8),(57)&7	;volatile
	line	165
	opt asmopt_push
opt asmopt_off
movlw	130
movwf	((??_LCD_Char+0)+0+1),f
	movlw	221
movwf	((??_LCD_Char+0)+0),f
	u497:
decfsz	((??_LCD_Char+0)+0),f
	goto	u497
	decfsz	((??_LCD_Char+0)+0+1),f
	goto	u497
	nop2
opt asmopt_pop

	line	166
	
l924:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7	;volatile
	line	167
	opt asmopt_push
opt asmopt_off
movlw	130
movwf	((??_LCD_Char+0)+0+1),f
	movlw	221
movwf	((??_LCD_Char+0)+0),f
	u507:
decfsz	((??_LCD_Char+0)+0),f
	goto	u507
	decfsz	((??_LCD_Char+0)+0+1),f
	goto	u507
	nop2
opt asmopt_pop

	line	168
	
l117:	
	return
	opt callstack 0
GLOBAL	__end_of_LCD_Char
	__end_of_LCD_Char:
	signat	_LCD_Char,4217
	global	_LCD_Init

;; *************** function _LCD_Init *****************
;; Defined at:
;;		line 131 in file "muitiple_adc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_LCD_Command
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=0
	line	131
global __ptext7
__ptext7:	;psect for function _LCD_Init
psect	text7
	file	"muitiple_adc.c"
	line	131
	global	__size_of_LCD_Init
	__size_of_LCD_Init	equ	__end_of_LCD_Init-_LCD_Init
	
_LCD_Init:	
;incstack = 0
	opt	callstack 6
; Regs used in _LCD_Init: [wreg+status,2+status,0+pclath+cstack]
	line	133
	
l1008:	
	opt asmopt_push
opt asmopt_off
movlw	130
movwf	((??_LCD_Init+0)+0+1),f
	movlw	221
movwf	((??_LCD_Init+0)+0),f
	u517:
decfsz	((??_LCD_Init+0)+0),f
	goto	u517
	decfsz	((??_LCD_Init+0)+0+1),f
	goto	u517
	nop2
opt asmopt_pop

	line	134
	
l1010:	
	movlw	low(038h)
	fcall	_LCD_Command
	line	135
	
l1012:	
	movlw	low(0Ch)
	fcall	_LCD_Command
	line	136
	
l1014:	
	movlw	low(06h)
	fcall	_LCD_Command
	line	137
	
l1016:	
	movlw	low(01h)
	fcall	_LCD_Command
	line	139
	
l105:	
	return
	opt callstack 0
GLOBAL	__end_of_LCD_Init
	__end_of_LCD_Init:
	signat	_LCD_Init,89
	global	_LCD_Command

;; *************** function _LCD_Command *****************
;; Defined at:
;;		line 150 in file "muitiple_adc.c"
;; Parameters:    Size  Location     Type
;;  cmd             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  cmd             1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_LCD_Init
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	line	150
global __ptext8
__ptext8:	;psect for function _LCD_Command
psect	text8
	file	"muitiple_adc.c"
	line	150
	global	__size_of_LCD_Command
	__size_of_LCD_Command	equ	__end_of_LCD_Command-_LCD_Command
	
_LCD_Command:	
;incstack = 0
	opt	callstack 6
; Regs used in _LCD_Command: [wreg]
	movwf	(LCD_Command@cmd)
	line	152
	
l910:	
	movf	(LCD_Command@cmd),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	153
	
l912:	
	bcf	(56/8),(56)&7	;volatile
	line	154
	
l914:	
	bsf	(57/8),(57)&7	;volatile
	line	155
	opt asmopt_push
opt asmopt_off
movlw	130
movwf	((??_LCD_Command+0)+0+1),f
	movlw	221
movwf	((??_LCD_Command+0)+0),f
	u527:
decfsz	((??_LCD_Command+0)+0),f
	goto	u527
	decfsz	((??_LCD_Command+0)+0+1),f
	goto	u527
	nop2
opt asmopt_pop

	line	156
	
l916:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7	;volatile
	line	157
	opt asmopt_push
opt asmopt_off
movlw	130
movwf	((??_LCD_Command+0)+0+1),f
	movlw	221
movwf	((??_LCD_Command+0)+0),f
	u537:
decfsz	((??_LCD_Command+0)+0),f
	goto	u537
	decfsz	((??_LCD_Command+0)+0+1),f
	goto	u537
	nop2
opt asmopt_pop

	line	158
	
l114:	
	return
	opt callstack 0
GLOBAL	__end_of_LCD_Command
	__end_of_LCD_Command:
	signat	_LCD_Command,4217
	global	_ADC_inti

;; *************** function _ADC_inti *****************
;; Defined at:
;;		line 64 in file "muitiple_adc.c"
;; Parameters:    Size  Location     Type
;;  ch              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ch              1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1,group=0
	line	64
global __ptext9
__ptext9:	;psect for function _ADC_inti
psect	text9
	file	"muitiple_adc.c"
	line	64
	global	__size_of_ADC_inti
	__size_of_ADC_inti	equ	__end_of_ADC_inti-_ADC_inti
	
_ADC_inti:	
;incstack = 0
	opt	callstack 7
; Regs used in _ADC_inti: [wreg-fsr0h+status,2+status,0]
	movwf	(ADC_inti@ch)
	line	66
	
l1018:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(248/8),(248)&7	;volatile
	line	67
	bcf	(254/8),(254)&7	;volatile
	line	68
	bsf	(255/8),(255)&7	;volatile
	line	69
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1278/8)^080h,(1278)&7	;volatile
	line	70
	bsf	(1279/8)^080h,(1279)&7	;volatile
	line	72
	bcf	(1272/8)^080h,(1272)&7	;volatile
	line	73
	bcf	(1273/8)^080h,(1273)&7	;volatile
	line	74
	bcf	(1274/8)^080h,(1274)&7	;volatile
	line	75
	bcf	(1275/8)^080h,(1275)&7	;volatile
	line	77
	goto	l1022
	line	79
	
l86:	
	bsf	(1064/8)^080h,(1064)&7	;volatile
	line	80
	goto	l95
	line	82
	
l88:	
	bsf	(1065/8)^080h,(1065)&7	;volatile
	line	83
	goto	l95
	line	85
	
l89:	
	bsf	(1066/8)^080h,(1066)&7	;volatile
	line	86
	goto	l95
	line	87
	
l90:	
	bsf	(1067/8)^080h,(1067)&7	;volatile
	line	88
	goto	l95
	line	90
	
l91:	
	bsf	(1069/8)^080h,(1069)&7	;volatile
	line	91
	goto	l95
	line	93
	
l92:	
	bsf	(1096/8)^080h,(1096)&7	;volatile
	line	94
	goto	l95
	line	96
	
l93:	
	bsf	(1097/8)^080h,(1097)&7	;volatile
	line	97
	goto	l95
	line	99
	
l94:	
	bsf	(1098/8)^080h,(1098)&7	;volatile
	line	100
	goto	l95
	line	103
	
l1022:	
	movf	(ADC_inti@ch),w
	movwf	(??_ADC_inti+0)+0
	clrf	(??_ADC_inti+0)+0+1
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "simple"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           11     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf 1+(??_ADC_inti+0)+0,w
	opt asmopt_push
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l1108
	goto	l95
	opt asmopt_pop
	
l1108:	
; Switch size 1, requested type "simple"
; Number of cases is 8, Range of values is 0 to 7
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           25    13 (average)
; direct_byte           32     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf 0+(??_ADC_inti+0)+0,w
	opt asmopt_push
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l86
	xorlw	1^0	; case 1
	skipnz
	goto	l88
	xorlw	2^1	; case 2
	skipnz
	goto	l89
	xorlw	3^2	; case 3
	skipnz
	goto	l90
	xorlw	4^3	; case 4
	skipnz
	goto	l91
	xorlw	5^4	; case 5
	skipnz
	goto	l92
	xorlw	6^5	; case 6
	skipnz
	goto	l93
	xorlw	7^6	; case 7
	skipnz
	goto	l94
	goto	l95
	opt asmopt_pop

	line	104
	
l95:	
	return
	opt callstack 0
GLOBAL	__end_of_ADC_inti
	__end_of_ADC_inti:
	signat	_ADC_inti,4217
global	___latbits
___latbits	equ	2
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
