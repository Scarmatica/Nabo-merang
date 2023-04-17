;****************************************************************************
;*                           - Pic Projekt -                                *
;*                                                                          *
;*  PROJEKT ANSV.:  	Nikolaj Høgh                                    	*      
;*  NAVN:           	Main Controller										*
;*  PROCESSOR:      	PIC16F819                                   	    *
;*  CLOCK: 	    		Intern Osc - 31 kHz(Op til 8 MHZ m. intern osc.)	*
;*  FILE:  	        	Main Controller.c				                  	*
;*  WATCHDOGTIMER:  	no                                               	*
;*  REVISION:	    	02.04.2023                                       	*
;*                                                                          *
;*                                                                          *
;****************************************************************************

;*  PIN CONFIGURATION TIL HARDWAREN:

;*  RA0 = Analog INPUT    ; PIN 17, Input fra forstærker
;*  RA1 = Analog INPUT	  ; PIN 18, Input fra lysafhængig modstand
;*  RA2 = Digital INPUT   ; PIN 1, Input fra radiosystem
;*  RA3 = N/A			  ; PIN 2, 
;*  RA4 = Digital INPUT   ; PIN 3, Input fra pin 3/Q14 på 4060
;*  RA5 = N/A			  ; PIN 4,
;*  RA6 = Digital OUTPUT  ; PIN 15 - Output til transistor til kraftig LED
;*  RA7 = Digital OUTPUT  ; PIN 16 - Output til relæ for højtaler
;*  Bemærk at følgende PIN-konfiguration er nødvendig, da AD-convertering skal bruges i programmet(DADAA)



;*  RB0 = Digital Output ; PIN 6 DD til 4511 nr. 1
;*  RB1 = Digital Output ; PIN 7 DC til 4511 nr. 1
;*  RB2 = Digital Output ; PIN 8 DB til 4511 nr. 1
;*  RB3 = Digital Output ; PIN 9 DA til 4511 nr. 1
;*  RB4 = Digital Output ; PIN 10 DD til 4511 nr. 2
;*  RB5 = Digital Output ; PIN 11 DC til 4511 nr. 2
;*  RB6 = Digital Output ; PIN 12 DB til 4511 nr. 2
;*  RB7 = Digital Output ; PIN 13 DA til 4511 nr. 2

  

;****************************************************************************
;*								    										*
;*								    										*
;*   		        			EQUATES SECTION		    					*
;*								    										*
;*								    										*
;****************************************************************************


W		EQU		0		; 'direction' flag (target - hvor skal resultatet placeres)
F		EQU		1		; 'direction' flag (target - hvor skal resultatet placeres)
Carry	EQU		0		;

TMR0	EQU 	0x0001	; Placerer TMR0 på adressen 01
						; TIMER0 er en 8-bit timer med 8-bit prescaler
						; (TIMER1 er 16 bit)

STATUS	EQU		0x0003	; STATUS-reg er fil nr 03 (indeholder bl.a. zerobit)
PORTA   EQU		0x0005	; PORTA  er fil nr. 05
PORTB	EQU		0x0006	; PORTB  er fil nr. 06

ZEROBIT	EQU   	2   	;Zerobit er bit nr. 2 (i status-registret)

ADCON0	EQU		0x001F	;A/D configurations register nr. 0  (ligger i bank 0) - Se datablad for PIC side 81
ADCON1	EQU		0x009F	;A/D configurations register nr. 1  (ligger i bank 1) - Se datablad for PIC side 82

ADRESH	EQU		0x001E	;De øverste 8 bit i AD-resultatet placeres i adresse 1E (De 8 mest betydende)
ADRESL	EQU		0x009E	;De nederste 2 bit i AD-resultatet placeres i adresse 9E (De 2 mindst betydende)

OPTION_R EQU 	0x0081	;

OSCCON	EQU		0x008F	;

TRISA	EQU		0x0085	;Tristate Port A (in/out)
TRISB	EQU		0x0086	;Tristate Port B (in/out)

AN0		EQU		0		;Analog input AN0 er bit nr. 0 (på port A - dvs ben nr. 17)

RA5		EQU		5		;RA5 er bit nr. 5 (på port A - ben 4)

RB0		EQU		0		;RB0 er bit nr. 0 (på port B - ben 6)
RB1		EQU		1		;RB1 er bit nr. 1 (på port B - ben 7)
RB2		EQU		2		;RB2 er bit nr. 2 (på port B - ben 8)
RB3		EQU		3		;RB3 er bit nr. 3 (på port B - ben 9)
RB4		EQU		4		;RB4 er bit nr. 4 (på port B - ben 10)
RB5		EQU		5		;RB5 er bit nr. 5 (på port B - ben 11) 
RB6		EQU		6		;RB6 er bit nr. 6 (på port B - ben 12) 
RB7		EQU		7		;RB7 er bit nr. 7 (på port B - ben 13)

LYSRES	EQU		0x24	;Er denne nødvendig???????
LYDRES	EQU		0x25	;
TELLER 	EQU 	0x26 	;
CLKTEL	EQU		0x27	; Tælleren til hvor mange gange der er sket en forkert handling


;****************************************************************************



		LIST	P=PIC16F819			;angiver PIC-type
		RADIX	hex					;Standard er hex
		ORG		0x0000				;Programmet starter her, 
									;org sætter origin til 0x0000

		GOTO	SETUP				;Gå til setup-delen, så porte defineres og alt bliver nulstillet





;****************************************************************************
;*																			*
;*																			*
;* 	                	CONFIGURATION BITS  								*
;*																			*                       
;*																			*
;****************************************************************************


		__CONFIG 0x3F10				;INTRC-A6 er port I/O
									;WatchDogTimer OFF
									;Power Up Timer ON
									;MCLR er bundet til VDD - RA5 er digital I/O
									;Brown Out Detect OFF
									;Lov Voltage Program. Disabled
									;EE protect disabled
									;Flash Program Write Protection Disabled
									;CCP1 Mux på RB2 (ikke RB3)
									;Code Protection Disabled

;****************************************************************************
;*																			*
;*																			*
;*			             CONFIGURATION SECTION								*
;*																			*
;*																			*
;****************************************************************************



SETUP	BCF		STATUS,6			;Dvs ikke bank 2 eller 3 - hhv 'b'10 og 'b'11 for RP1,RP0

		BSF		STATUS,5			;Gå til Bank 1 (5. bit kaldes også RP0) 
									; - operationen kaldes også "Bank Select"

		MOVLW	B'00010111'			;Ift. AD-configurationen, så er følgende fordeling af  
									;RA5 kan kun være input
		MOVWF	TRISA				;Sæt in-out bitmønstret til tris-reg. port A (file 85H)


		MOVLW	B'00000000'			;RB0-RB7 (Hele portB) er output
		MOVWF	TRISB				;Placer informationen i tris-reg. port B (file 86H)


		MOVLW	B'00000100'			;Fortæller at AD-configurationen følger DADAA input (se side 170 i bogen
									;"PIC in practice" - eller på side 82 i datablad for 16F818/819)
									; Se RIGISTER 11-2 i databladet
		MOVWF	ADCON1				;Informationen placeres i AD control register nr. 1

		MOVLW	B'01000100'			;Fortæller intern clock skal være 1 MHz (Op til 8 MHz), samt at PIC venter med at starte koden indtil frekvensen er stabil
									;(Se side 38 i datablad) ,  bit  IOFS=0 
		MOVWF	OSCCON				;OSCCON ligger på adressen 0x8F - altså i bank 1

		
		MOVLW	B'00000111'			;PreScaler er 1:256 -  Dvs. timerens tællehastighed er rimelig langsom !!!
									; (Bit 7 og 6 SKAL LIGE CHECKES m.h.p. INTERRUPT-KONTROL )
		MOVWF	OPTION_R			;FortÃ¦l om prescaler-tallet til option registret

		BCF		STATUS,5			;Vi hopper tilbage til bank 0. 
									;(Vi er nemlig færdige med at snakke med de filer, som ligger i bank 1)
		
		MOVLW	B'00000000' 		;Configurer ADCON og sluk denne
		MOVWF	ADCON0		 		;
		
		BSF		ADCON0,0			;Tænd ADCON - ADON = 1





		CLRF	PORTA				;Nulstil portA
		CLRF 	PORTB				;Nulstil portB
	
	;	CALL	HALLØJ				;Gå til Halløj

		BCF 	PORTA,7
		BCF 	PORTA,6

		
		GOTO	MAIN				; Gå til main


; SLUT PÅ SETUP. 


;****************************************************************************
;*																			*
;*																			*
;*			             		 SUBRUTINER									*
;*																			*
;*																			*
;****************************************************************************

VENT            MOVLW   d'48'
                MOVWF   TELLER
LOOP2           CLRF    TMR0
LOOP3           MOVFW   TMR0
                SUBLW   d'100'
                BTFSS   STATUS,ZEROBIT
                GOTO    LOOP3
                DECFSZ  TELLER
                GOTO    LOOP2
                CLRF    TMR0
                RETURN

PAUSE			MOVLW   d'5'
                MOVWF   TELLER
LOOP4           CLRF    TMR0
LOOP5           MOVFW   TMR0
                SUBLW   d'100'
                BTFSS   STATUS,ZEROBIT
                GOTO    LOOP5
                DECFSZ  TELLER
                GOTO    LOOP4
                CLRF    TMR0
                RETURN


HALLØJ			MOVLW	b'11000000'  	; Halløj får LED til at lyse og relæet aktiveres
				MOVWF	PORTA
				CALL	PAUSE
				CLRF	PORTA
				CALL	PAUSE
				RETURN 


LYDBEHANDLING	CALL 	VENT			; Lader lyden lyde VENTs tid
				BSF		PORTA,7 		; Tænd for strømmen/tænd relæet
				CALL 	VENT			; Vent i et stykke tid indtil lyden er dødt hen
				BCF		PORTA,7			; Sluk for strømmen/sluk relæet - lyden løber gennem nu
				CALL	TÆL1OP			; Læg 1 til displayet der viser antal gange systemet er blevet aktiveret
				RETURN



RADIOBEHANDLING	BSF		PORTA,7			; Tænd for relæet
RADIOLOOP		BTFSC	PORTA,2
				GOTO	RADIOLOOP
				BCF		PORTA,7			; Sluk for relæet
				RETURN					




PAUSE_800_US	CLRF	TMR0 			; Timer0 nulstilles
LOOP1 			MOVFW	TMR0 			; Flyt indholdet af TMR0 til W-registret
				SUBLW	d'47'
				BTFSS	STATUS,ZEROBIT 	; Tjek om det gav nul. Hvis ja: hop ud af løkken
				GOTO	LOOP1			; Hvis nej: bliv i løkken (gå til LOOP1-label)
				RETURN 					; Forlad subrutinen
				

CHECKLYD		BSF 	ADCON0,2		;Starter adconverteringen og venter til denne er lav igen
LOOP_AD_LYD		BTFSC	ADCON0,2	
				GOTO	LOOP_AD_LYD
				MOVFW 	ADRESH	 		;Move Analogue result into W
				SUBLW 	d'100' 			;Do 192 – ADRES, i.e. 122-W
				BTFSC 	STATUS,Carry 	;Check the carry bit. Clear if ADRES>122 i.e. ve
				RETURN			 		;Routine to turn off LED
				CALL 	LYDBEHANDLING	;Routine to turn on LED
				RETURN




TÆL1OP			MOVFW	PORTB			;Flytter 9 til w-registret
				CALL	CLR2NIB			;Tømmmer nibble 2 
				SUBLW	d'9'			;Trækker 10 fra nibble 1
				BTFSC 	STATUS,ZEROBIT	;Tjekker om nibble 1 var 10(om den er clear), hvis den var, så spring over næste kommando
				GOTO	TÆL10OP			;Går til subrutinen som lægger 1 til nibble 2
				ADDWF	W,d'1'			;Hvis zerobit er clear(nibble 1 var ikke 10), så læg 1 til w-registret
HJEM_TÆL		MOVWF	PORTB			;Flyt w-registret til port b
				RETURN

TÆL10OP			MOVFW	PORTB			;Flytter data fra port b til w-registret
				ADDWF	W,d'6'			;Lægger 6 til sådan at vi omgår hexadecimal notation
				GOTO	HJEM_TÆL		;Bruges til at hoppe over kommandoen er lægger 1 til




SET1NIB			BSF		W,0		;Subrutine til at sætte nibble 1 til 1111
				BSF		W,1		; Er denne nødvendig
				BSF		W,2
				BSF		W,3
				RETURN


CLR1NIB			BCF		W,0		;Subrutine til at sætte nibble 1 til 0000
				BCF		W,1		
				BCF		W,2
				BCF		W,3
				RETURN

CLR2NIB			BCF		W,4		;Subrutine til at sætte nibble 1 til 0000
				BCF		W,5		;Er denne nødvendig
				BCF		W,6
				BCF		W,7
				RETURN





;*********************************************************************************************
;      
;		MAIN 
;
;*********************************************************************************************

MAIN			CALL 	CHECKLYD
				BTFSC 	PORTA, 2		; Tjek om der er strøm fra radiosensoren
				CALL 	RADIOBEHANDLING	; Gå til radiobehandling
				CALL 	PAUSE_800_US
				GOTO 	MAIN

END



