;
; Atmega88 Stepper controller.asm
;
; Created: 18-2-2016 18:26:49
; Author : Scrap OverEngineering
;

.include "m88def.inc" 



//PortB
.equ invert_enable  =  0 
.equ out_clock		=  1 
.equ out_led		=  2

// PortC
.equ switch_direction	= 5
.equ switch_enable 		= 3
.equ pot_speed 			= 0

//PortD
;pd0 = nc
;pd1 = nc
;pd2 = nc
;pd3 = nc
;pd4 = nc
.equ out_direction	=  6		// clockwise = 1??
.equ out_enable		=  7


//Gpior0 
.equ Output_enabled = 0

.equ T1_DelayInit	=	20000

.def Zero	 = r2
.def counter = r3

.def temp1   = r16
.def temp2   = r17
.def PotvalL = r18
.def PotvalH = r19


.org 0x00
rjmp RESET 					; 01:  Reset Handler
reti; rjmp EXT_INT0 		; 02:  IRQ0 Handler
reti; rjmp EXT_INT1 		; 03:  IRQ1 Handler
reti; rjmp PCINT0			; 04:  PCINT0 Handler
reti; rjmp PCINT1			; 05:  PCINT1 Handler
reti; rjmp PCINT2			; 06:  PCINT2 Handler
reti; rjmp WDT				; 07:  Watchdog Timer Handler
reti; rjmp TIM2_COMPA		; 08:  Timer2 Compare A Handler
reti; rjmp TIM2_COMPB 		; 09:  Timer2 Compare B Handler
reti; rjmp TIM2_OVF 		; 10:  Timer2 Overflow Handler
reti; rjmp TIM1_CAPT 		; 11:  Timer1 Capture Handler
reti; rjmp TIM1_COMPA 		; 12:  Timer1 Compare A Handler
reti; rjmp TIM1_COMPB 		; 13:  Timer1 Compare B Handler
rjmp TIM1_OVF 		; 14:  Timer1 Overflow Handler
reti; rjmp TIM0_COMPA 			; 15:  Timer0 Compare A Handler
reti; rjmp TIM0_COMPB 		; 16:  Timer0 Compare B Handler
reti; rjmp TIM0_OVF 		; 17:  Timer0 Overflow Handler
reti; rjmp SPI_STC 			; 18:  SPI Transfer Complete Handler
reti ;rjmp  USART_RX 		; 19:  USART, RX Complete Handler
reti ;rjmp 	USART_UDRE 		; 20:  USART, UDR Empty Handler
reti; rjmp USART_TXC 		; 21:  USART, TX Complete Handler
reti; rjmp ADC 				; 22:  ADC Conversion Complete Handler
reti; rjmp EE_RDY 			; 23:  EEPROM Ready Handler
reti; rjmp ANA_COMP 		; 24:  Analog Comparator Handler
reti; rjmp TWI 				; 25:  2-wire Serial Interface Handler
reti; rjmp SPM_RDY 			; 26:  Store Program Memory Ready Handler

/*
EXT_INT0:
	push temp1
	in temp1, sreg
	push temp1

		clr r0
		clr r1
		clr r2
		dec r2
		
	 dec r0
	 brne pc-1
	 dec r1
	 brne pc-3



	pop temp1
	out sreg, temp1
	pop temp1
reti
*/

TIM1_OVF: 		
push temp1
in temp1, sreg
push temp1
push temp2

	_TIM1_OVF_check_enable:
	cbi GPIOR0, Output_enabled
	in temp1, PinC							//if switch_enabled = 1 then gpior0,0 = 1
	sbrs temp1, switch_enable
		rjmp _TIM1_OVF_ouput_disable
	
		//old code for limiting switches?
		;	sbrc temp1, pb0						;if not max
		;		cbi gpior0,0

		;	sbrc temp1, pb1						;if not min
		;		cbi gpior0,0	
		
		sbi GPIOR0, Output_enabled
		sbi PortB, out_clock				// Set clock out, low to high edge
		sbi PortB, out_led
		rjmp _TIM1_OVF_check_switches
	
		_TIM1_OVF_ouput_disable:
		in temp1, PORTB									// else out_clock = 0
		cbr temp1, (1<<out_led)|(1<<out_clock)			// Disable led and clock out
		out portb, temp1								// 
		_TIM1_OVF_check_enable_end:


	_TIM1_OVF_check_switches:
	
	
	in temp1, PinB						// invert enable signal (enable/inhibit)
	bst temp1, Invert_enable		  

	clr temp1
	bld temp1, switch_enable
	in temp2, PinC // inputs
	eor temp2, temp1	
	
	in temp1, PortD // ouputs

	bst temp2, switch_enable			//copy bit from switches to output
		bld temp1, out_enable
	
	bst temp2, switch_direction			//copy bit from switches to output
		bld temp1, out_direction	
	
	out PortD, temp1					//set output	
	
	/////////////////
	
	_TIM1_OVF_check_ADC_result:
	
		mov temp2, PotValH
		mov Temp1, PotValL
		
		//left adjusted result
		// shift right
		clc
		ror temp2		//divide by 2 to create sqaure wave
		ror temp1	

		clc
		ror temp2		//divide by 2 to create sqaure wave
		ror temp1	

		sts ICR1H, temp2
		sts ICR1l, temp1

		clc
		ror temp2		//divide by 2 to create sqaure wave
		ror temp1	
	
		
		sts OCR1AH, temp2		//set counter value on wich to togle pin, HW event 
		sts OCR1AL, temp1

		sts OCR1BH, temp2		// same for led on PB2
		sts OCR1BL, temp1
		
		lds temp1, ADCSRA		// start AD conersion
		sbr temp1, (1<<ADSC)
		sts ADCSRA, temp1

	_TIM1_OVF_end:
	pop temp2
	pop temp1
	out sreg, temp1
	pop temp1
reti



RESET:
init_proc:
ldi temp2, high(RAMEND); Main program start
ldi temp1, low(RAMEND)
out SPH,temp2 ; Set Stack Pointer to top of RAM
out SPL,temp1
clr Zero


init_ports:

//PortB
	ldi temp1, (1<<invert_enable)|(1<<out_led)|(1<<out_clock)
		out PortB, temp1

	ldi Temp1, (0<<invert_enable)|(1<<out_Led)|(1<<out_clock)
		out DDRB, temp1

//PortC			
	ldi temp1, (1<<switch_enable)|(1<<switch_direction)		//pull-ups
		out PortC, temp1

	ldi temp1, (0<<switch_enable)|(0<<switch_direction)
		out DDRC, temp1
		
	ldi temp1, (1<<ADC0D)				// ADC PIN: Disable digital input buffer on PortC,0 
		sts DIDR0, temp1

//PortD
	ldi temp1, (0<<out_enable)|(0<<out_direction)
		out PortD, temp1

	ldi Temp1, (1<<out_enable)|(1<<out_direction)
		out DDRD, temp1



/*
init_int0:			//CHECKEN
	in temp1, EICRA
	sbr temp1, (1<<isc01)|(1<<isc00)
	out EICRA, temp1

	ldi temp1, (1<<int0)
	out EIMSK, temp1
*/

	//CHECKEN
init_timers:
/*
	init_timer0:
	ser temp1
	out ocR0a, temp1

	ldi temp1, (2<<wgm00)
	out tccr0a, temp1

	ldi temp1, (4<<cs00)
	out tccr0B, temp1

	ldi temp1, (1<<OCIE0A)
	sts timsk0, temp1
*/

	init_timer1:

	ldi temp2, high(T1_DelayInit)
	ldi temp1, low(T1_DelayInit)
		sts ICR1H, temp2
		sts ICR1L, temp1

	ldi temp2, high(T1_DelayInit/2)
	ldi temp1, low(T1_DelayInit/2)
		sts OCR1AH, temp2
		sts OCR1AL, temp1

		sts OCR1BH, temp2
		sts OCR1BL, temp1

		//need ADC to get this value 
			
	ldi temp1, (0<<COM1A0)|(0<<COM1B0)|(2<<WGM10)	// 7,6 COM1A1:COM1A0 5,4 COM1A1:COM1A0  1,0 WGM11:WGM10 wgm3:0: 14 = fastpwm icr1 = top
		sts TCCR1A, temp1							// normal, ctc mode: COM1xn 00 normal pin, 01 toggle, 10 clear, 11 set 

	ldi temp1, (4<<CS10)|(3<<WGM12)		//CTC modev //Clock Source options 0/1/8/64/256/1024/Ext T1 falling, Ext T1 rising
		sts TCCR1B, temp1				

	ldi temp1, (1<<TOIE1)
		sts TIMSK1, temp1


init_adc:
	ldi temp1, (1<<REFS0)|(1<<ADLAR)|(0<<MUX0)  //Vcc = vref, left adjust, use adc0
	sts ADMUX, temp1
	
	ldi temp1, (1<<Aden)|(7<<ADPS0)		// Enable ADC unit, set prescaler: 128 CKdiv 20MHz: 156,25 KHz  (within 50 - 200 KHz range)
	sts ADCSRA, temp1					

	ldi temp1, (0<<ADTS0)				//  no trigger if ADATE = 0, Free running if ADATE = 1
	sts ADCSRB, temp1
	
	//ldi temp1, (1<<ADC0D)				//Disable digital input buffer (moved to port init)
	//sts didr0, temp1
		
	lds temp1, adcsra
	sbr temp1, (1<<adsc)
	sts adcsra, temp1
	
	_init_adc_loop:				//	First AD conversion
		lds temp1, adcsra
		sbrc temp1, adsc	
		rjmp 	_init_adc_loop

	lds temp1, ADCSRA		// start AD conversion
	sbr temp1, (1<<ADSC)
	sts ADCSRA, temp1

	sei



Main:
_main_loop:


	nop
	nop
	nop
	
	_main_wavevorm:
		sbis TIFR1,OCIE1A
			rjmp _main_wavevorm_end

			cbi portb, out_led
			cbi portb, out_clock

			sbi TIFR1,OCIE1A		//clear flag
			_main_wavevorm_end:


	_main_ADCheck:
		lds temp1, adcsra					//interrupt flag polling
		sbrs Temp1, ADIF
			rjmp _main_ADCheck_end
												
			lds PotvalL, ADCL				//adc complete get value
			lds PotvalH, ADCH			
			
			cpi PotvalL, 0x04				// minimum counter value	
			cpc PotvalH, Zero
			brsh pc+2
			ldi PotvalL, 0x04
			

			lds Temp1, ADCSRA					// write one to ADIF to clear interrupt flagadif 
			sbr Temp1, (1<<ADIF)
			sts ADCSRA, temp1
		
			_main_ADCheck_end:


	/*
	_maind_ADC:
		lds Temp1, ADCSRA				// exit code if still running
		sbrc Temp1, ADSC
			rjmp _main_ADC_running
		
		_main_ADC_finished:				
			lds temp2, ADCH			
			lds temp1, ADCL

			cp PotvalL, temp1				// No news
			cpc PotvalH, temp2		
			breq _main_ADC_same_result
		
		_main_ADC_new_result:
			mov PotValH, temp2				// store new result
			mov PotvalL, temp1

			cpi PotvalL, 0x04				// minimum counter value	
			cpc PotvalH, Zero
			brsh pc+2
			ldi PotvalL, 0x04
			
			sbi Gpior0,ADC_updated					// set new data flag

		_main_ADC_same_result:

		lds temp1, ADCSRA
		sbr temp1, (1<<ADSC)					// restart AD conversion
		sts ADCSRA, temp1
		nop

		_main_ADC_running:
	_main_ADC_stopped:

	*/

_main_loop_end:
rjmp _main_loop




