;****************************************************************************
;*                           - Pic Projekt -                                *
;*                                                                          *
;*  PROJEKT ANSV.:  	Nikolaj H¯gh                                    	*      
;*  NAVN:           	Main Controller										*
;*  PROCESSOR:      	PIC16F819                                   	    *
;*  CLOCK: 	    		Intern Osc - 31 kHz(Op til 8 MHZ m. intern osc.)	*
;*  FILE:  	        	Main Controller.c				                  	*
;*  WATCHDOGTIMER:  	no                                               	*
;*  REVISION:	    	31.10.2023                                       	*
;*                                                                          *
;*                                                                          *
;****************************************************************************

;*  PIN CONFIGURATION TIL HARDWAREN:

;*  RA0 = Digital INPUT  ; PIN 17, Input fra forstÊrker
;*  RA1 = Digital INPUT  ; PIN 18, Output til transistor til relÊ
;*  RA2 = Digital INPUT  ; PIN 1, Input fra radioreciver
;*  RA3 = Digital INPUT  ; PIN 2, Input fra pin 3/Q14 pÂ 4060
;*  RA4 = Digital INPUT  ; PIN 3, Output til transistor til kraftig LED
;*  RA5 = Digital INPUT  ; (OBS: RA5 kan kun vÊre input - VÊr opmÊrksom pÂ dette!!!)
;*  RA6 = Digital INPUT 
;*  RA7 = Digital INPUT 

;*  RB0 = Digital Output 
;*  RB1 = Digital Output 
;*  RB2 = Digital Output
;*  RB3 = Digital Output
;*  RB4 = Digital Output 
;*  RB5 = Digital Output
;*  RB6 = Digital Output
;*  RB7 = Digital Output

  

;****************************************************************************
;*								    										*
;*								    										*
;*   		        			EQUATES SECTION		    					*
;*								    										*
;*								    										*
;****************************************************************************


W		EQU		0		; 'direction' flag (target - hvor skal resultatet placeres)
F		EQU		1		; 'direction' flag (target - hvor skal resultatet placeres)


TMR0	EQU 	0x0001	;dvs TMR0  (TIMERO) er filen p√• adressen 01
						;TIMER0 er en 8-bit timer med 8-bit prescaler
						;  (TIMER1 er 16 bit)

STATUS	EQU		0x0003	;dvs STATUS-reg er file 03 (indeholder bl.a. zerobit)
PORTA   EQU		0x0005	;dvs PORTA  er file 05
PORTB	EQU		0x0006	;dvs PORTB  er file 06

ZEROBIT	EQU   	2   	;Zerobit er bit nr. 2 (i status-registret)

ADCON0	EQU		0x001F	;A/D configurations register nr. 0  (ligger i bank 0) - Se datablad side 81
ADCON1	EQU		0x009F	;A/D configurations register nr. 1  (ligger i bank 1) - Se datablad side 82

ADRESH	EQU		0x001E	;De √∏verste 8 bit i AD-resultatet placeres i adresse 1E (De 8 mest betydende)
ADRESL	EQU		0x009E	;De nederste 2 bit i AD-resultatet placeres i adresse 9E (De 2 mindst betydende)

TRISA	EQU		0x0085	;Tristate Port A (in/out)
TRISB	EQU		0x0086	;Tristate Port B (in/out)

AN0		EQU		0		;Analog input AN0 er bit nr. 0 (p√• port A - dvs ben nr. 17)

RA5		EQU		5		;RA5 er bit nr. 5 (p√• port A - ben 4)

RB0		EQU		0		;RB0 er bit nr. 0 (p√• port B - ben 6)
RB1		EQU		1		;RB1 er bit nr. 1 (p√• port B - ben 7)
RB2		EQU		2		;RB2 er bit nr. 2 (p√• port B - ben 8)
RB3		EQU		3		;RB3 er bit nr. 3 (p√• port B - ben 9)
RB4		EQU		4		;RB4 er bit nr. 4 (p√• port B - ben 10)
RB5		EQU		5		;RB5 er bit nr. 5 (p√• port B - ben 11) 
RB6		EQU		6		;RB6 er bit nr. 6 (p√• port B - ben 12) 
RB7		EQU		7		;RB7 er bit nr. 7 (p√• port B - ben 13)



;****************************************************************************



		LIST	P=PIC16F819			;angiver PIC-type
		RADIX	hex					;Standard er hex
		ORG		0x0000				;Programmet starter her, 
									;org s√¶tter origin til 0x0000

		GOTO	SETUP				;G√• til setup-delen, s√• porte defineres og alt bliver nulstillet og klart. Hurra!





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
									;CCP1 Mux p√• RB2 (ikke RB3)
									;Code Protection Disabled

;****************************************************************************
;*																			*
;*																			*
;*			             CONFIGURATION SECTION								*
;*																			*
;*																			*
;****************************************************************************



SETUP	BCF		STATUS,6			;Dvs ikke bank 2 eller 3 - hhv 'b'10 og 'b'11 for RP1,RP0

		BSF		STATUS,5			;G√• til Bank 1 (5. bit kaldes ogs√• RP0) 
									; - operationen kaldes ogs√• "Bank Select"

		MOVLW	B'11111111'			;Hele PORT A er input RA0-RA7 
									;RA5 kan kun v√¶re input (Input fra knap)
		MOVWF	TRISA				;SÊt in-out bitm¯nstret til tris-reg. port A (file 85H)


		MOVLW	B'00000000'			;RB0-RB7 (Hele portB) er output
		MOVWF	TRISB				;Placer informationen i tris-reg. port B (file 86H)


		MOVLW	B'00000110'			;Fort√¶ller at A0 (RA0) er DIGITAL input (se side 170 i bogen
									;"PIC in practice" - eller p√• side 82 i datablad for 16F818/819)
									; Se RIGISTER 11-2 i databladet
		MOVWF	ADCON1				;Informationen placeres i AD control register nr. 1

		MOVLW	B'01000000'			;Fort√¶ller intern clock skal v√¶re 1 MHz (Op til 8 MHz)
									;(Se side 38 i datablad) ,  bit  IOFS=0 
		MOVWF	OSCCON				;OSCCON ligger p√• adressen 0x8F - alts√• i bank 1

		
		MOVLW	B'00000001'			;PreScaler er 1:4 -  Dvs. timerens t√¶llehastighed er rimelig hurtig !!!
									; (Bit 7 og 6 SKAL LIGE CHECKES m.h.p. INTERRUPT-KONTROL )
		MOVWF	OPTION_R			;Fort√¶l om prescaler-tallet til option registret

		BCF		STATUS,5			;Vi hopper tilbage til bank 0. 
									;(Vi er nemlig f√¶rdige med at snakke med de filer, som ligger i bank 1)
	
		CLRF	PORTA				;Nulstil portA
		CLRF 	PORTB				;Nulstil portB
	
		CALL	GODAW				;Hop til Godaw
		
		CALL	GODAW
		
		CALL	GODAW
		
		GOTO	MAIN				; Hop til main


; SLUT P√Ö SETUP. 




COUNT3			NOP
				NOP
				NOP
				NOP
				NOP
				NOP
				NOP
				RETURN				


COUNT2			CALL	COUNT3    		
				CALL	COUNT3
				CALL	COUNT3
				CALL	COUNT3
				RETURN


COUNT1			CALL 	COUNT2
				CALL 	COUNT2
				CALL 	COUNT2
				CALL 	COUNT2
				RETURN


PAUSE			CALL 	COUNT1		
				CALL 	COUNT1
				CALL 	COUNT1
				CALL	COUNT1
				CALL 	COUNT1
				CALL 	COUNT1
				CALL	COUNT1
				RETURN

GODAW			MOVLW	b'00001111'  ; Godaw f√•r alle 4 LED til at blinke EN gang
				MOVWF	PORTB
				CALL	PAUSE
				CALL	PAUSE
				CLRF 	PORTB
				CALL	PAUSE
				CALL	PAUSE
				CALL	PAUSE
				RETURN 


PAUSE_800_US	CLRF	TMR0 			; Timer0 nulstilles
LOOP1 			MOVFW	TMR0 			; Flyt indholdet af TMR0 til W-registret
				SUBLW	d'47'
				BTFSS	STATUS,ZEROBIT 	; Tjek om det gav nul. Hvis ja: hop ud af l√∏kken
				GOTO	LOOP1			; Hvis nej: bliv i l√∏kken (g√• til LOOP1-label)
				RETURN 					; Forlad subrutinen
				


SEND_0 			BSF 	PORTB,0 		; S√¶t bit‚Äôen h√∏j
				CALL	PAUSE_800_US 	; Vent 0,8 ms
				BCF 	PORTB,0 		; S√¶t bit‚Äôen lav
				CALL 	PAUSE_800_US	; Vent 0,8 ms
				RETURN 					; Return√©r

SEND_1 			BSF		PORTB,0 		; S√¶t bit‚Äôen h√∏j
				CALL 	PAUSE_800_US 	;
				CALL 	PAUSE_800_US 	; Vent i alt 1,6 ms (2 x 0,8 us)
				BCF 	PORTB,0 		; S√¶t bit‚Äôen lav
				CALL	PAUSE_800_US 	;
				CALL 	PAUSE_800_US 	; Vent i alt 1,6 ms (2 x 0,8 us)
				RETURN 					; Return√©r



SEND_BIT7 		BTFSS 	OUTPUT_BYTE,7 	; Hvis Bit7 er sat, sÂ hop nÊste linje over
				CALL 	SEND_0 			; Send tegnet ì0î
				BTFSC 	OUTPUT_BYTE,7 	; Hvis Bit7 er clear, sÂ hop nÊste linje over
				CALL 	SEND_1 			; Send tegnet ì1î
				RLF 	OUTPUT_BYTE 	; Roter OUTPUT_BYTE til venstre, sÂ en ny bit er klar
				RETURN 					; ReturnÈr


SEND_OUTPUT_BYTE	MOVLW 	d'8' 		; Flyt tallet 8 til W-reg
					MOVWF BIT_TELLER 	; og videre til registret ìBIT-TELLERî
LOOP_SEND			CALL SEND_BIT7 		; Send en bit
					DECFSZ BIT_TELLER 	; TÊl ìBIT-TELLERî registret Èn ned 
										; og tjek om den er nÂet til nul
					GOTO LOOP_SEND 		; Hvis ikke nul endnu, sÂ send en bit mere
					RLF OUTPUT_BYTE 	; OUTPUT_BYTE roteres en sidste gang, sÂ den er
										; tilbage ved den oprindelige tilstand. Husk at der
										; roteres gennem carry-bitten, sÂ der skal roteres
										; 9 gange f¯r byten er tilbage ved 
										; udgangspunktet.
					RETURN 				; ReturnÈr! Alle 8 bit er hermed sendt!


SEND_STARTBIT 	BSF 	PORTB,RB0 		; SÊt bitíen h¯j
 				CALL 	PAUSE_800_US 	; 
 				CALL 	PAUSE_800_US 	;
 				CALL 	PAUSE_800_US 	; Vent ialt 2,4 ms (3 x 0,8 ms)
 				CALL 	LIDT_EKSTRA 	; Nogle NOPíer for at ìfin-tuneî tiden
				BCF 	PORTB,RB0 		; SÊt bitíen lav 
 				CALL 	PAUSE_800_US 	;
 				CALL 	PAUSE_800_US 	; 
 				CALL 	PAUSE_800_US 	; Vent ialt 2,4 ms 
 				RETURN 					; ReturnÈr


PAUSE_100ms		NOP
				RETURN


LIDT_EKSTRA		NOP
				RETURN



;*********************************************************************************************
;      
;		MAIN 
;
;*********************************************************************************************

MAIN			MOVLW	B'00111101'			;Hele PORT A er input RA0-RA7 
											;RA5 kan kun v√¶re input (Input fra knap)
				MOVWF	OUTPUT_BYTE
				CALL	SEND_STARTBIT
				CALL 	SEND_OUTPUT_BYTE	
				Goto 	MAIN

END