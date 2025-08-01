
#pragma config FOSC = HS        // Oscillator Selection bits (HS oscillator)
#pragma config WDTE = OFF       // Watchdog Timer Enable bit (WDT disabled)
#pragma config PWRTE = OFF      // Power-up Timer Enable bit (PWRT disabled)
#pragma config BOREN = OFF      // Brown-out Reset Enable bit (BOR disabled)
#pragma config LVP = OFF        // Low-Voltage (Single-Supply) In-Circuit Serial Programming Enable bit (RB3 is digital I/O, HV on MCLR must be used for programming)
#pragma config CPD = OFF        // Data EEPROM Memory Code Protection bit (Data EEPROM code protection off)
#pragma config WRT = OFF        // Flash Program Memory Write Enable bits (Write protection off; all program memory may be written to by EECON control)
#pragma config CP = OFF         // Flash Program Memory Code Protection

#include <xc.h>
#include<PIC16F877A.h>
#define _XTAL_FREQ 20000000
#define en RC1
#define rs RC0
#define lcd_port PORTD
#define adc RA0

void LCD_Command(unsigned char cmd);
void LCD_Init(void);
void LCD_Char(unsigned char char_data);
void LCD_string(unsigned char *dat);
void display( int adc_value);
void ADC_inti(unsigned char ch);
unsigned int read_Adc(unsigned char ch);
unsigned int adc_value0,adc_value2;
void main(void)
{
    
    unsigned char ch;
    TRISC1=0;//EN   configured as output
    TRISC0=0;//RS   configured as output
    TRISD=0x00;//LCD_PORT PORTD   configured as output
    
    LCD_Init();
    ADC_inti(0);
    ADC_inti(2);
    LCD_Command(0x80);
    LCD_string("ADC0= ");
    LCD_Command(0xC0);
    LCD_string("ADC2= ");
    
    while(1)
    {   
        adc_value0=read_Adc(0); 
        adc_value2=read_Adc(2);
        
        LCD_Command(0x85);
        display(adc_value0);   
        
        LCD_Command(0xC5);
        display(adc_value2);              
    }          
}

void ADC_inti(unsigned char ch)
{
    ADON=1;
    ADCS0=0;
    ADCS1=1;
    ADCS2=1;
    ADFM=1;
    
    PCFG0=0;
    PCFG1=0;
    PCFG2=0;
    PCFG3=0; 
    
    switch(ch)
    {
        case 0:TRISA0=1;
               break;

        case 1:TRISA1=1;
               break;

        case 2:TRISA2=1;
               break;
               
        case 3:TRISA3=1;
               break;

        case 4:TRISA5=1;
               break;

        case 5:TRISE0=1;
               break;
               
        case 6:TRISE1=1;
              break;

        case 7:TRISE2=1;
               break;     
    }
}

unsigned int read_Adc(unsigned char ch1)
{
    unsigned int n;
    ADCON0&=0x85;
    if(ch1 >3)
    {
        return 0;
    }
    ADCON0|= ch1<<3;
    __delay_ms(2);
    GO_nDONE=1;
    while(GO_nDONE==1);
    n=((ADRESH<<8)|ADRESL);
    return n;   
}
 
/*void ADC()
{
   unsigned int adc_value;
   GO_nDONE=1;  //start A/D Conversion
        while(GO_nDONE==1);//check condition Godone=1
        adc_value=((ADRESH<<8)|ADRESL);
        
}*/

void LCD_Init()
{
    __delay_ms(20);
    LCD_Command(0x38);
    LCD_Command(0x0C);
    LCD_Command(0x06);
    LCD_Command(0x01);
}
	
void LCD_string(unsigned char *dat)
{
    while(*dat!='\0')
    {
        LCD_Char(*dat);
        dat++;
    }
}
 
void LCD_Command(unsigned char cmd)
{
    lcd_port=cmd;
    rs=0;
    en=1;
    __delay_ms(20);
    en=0;
    __delay_ms(20);
}
	
void LCD_Char(unsigned char char_data)
{
    lcd_port=char_data;
    rs=1;
    en=1;
    __delay_ms(20);
    en=0;
    __delay_ms(20);
}
 
void display( int adc_value)
{		
       LCD_Char((adc_value/1000)+'0');
	   LCD_Char(((adc_value/100)%10)+'0');
	   LCD_Char((adc_value/10)%10+'0');
	   LCD_Char((adc_value%10)+'0');
       LCD_Char(0xDF);
       LCD_Char('c');
       __delay_ms(5);    
}
