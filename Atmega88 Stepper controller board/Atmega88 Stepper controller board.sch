EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "2016-02-22"
Rev "1.00"
Comp "Scrap OverEngineering"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ATMEGA88-P IC1
U 1 1 56CB2AD8
P 4200 4550
F 0 "IC1" H 3350 5850 50  0000 L BNN
F 1 "ATMEGA88-P" H 4550 3200 50  0000 L BNN
F 2 "DIL28" H 4200 4550 50  0000 C CIN
F 3 "" H 4200 4550 50  0000 C CNN
	1    4200 4550
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR1
U 1 1 56CB2B6C
P 2950 3300
F 0 "#PWR1" H 2950 3150 50  0001 C CNN
F 1 "+5V" H 2950 3440 50  0000 C CNN
F 2 "" H 2950 3300 50  0000 C CNN
F 3 "" H 2950 3300 50  0000 C CNN
	1    2950 3300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR3
U 1 1 56CB2BAD
P 2950 5950
F 0 "#PWR3" H 2950 5700 50  0001 C CNN
F 1 "GND" H 2950 5800 50  0000 C CNN
F 2 "" H 2950 5950 50  0000 C CNN
F 3 "" H 2950 5950 50  0000 C CNN
	1    2950 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 5600 2950 5600
Wire Wire Line
	2950 5600 2950 5950
Wire Wire Line
	3200 5700 2950 5700
Connection ~ 2950 5700
Wire Wire Line
	3200 3400 2950 3400
Wire Wire Line
	2950 3300 2950 3700
Wire Wire Line
	2950 3700 3200 3700
Connection ~ 2950 3400
Wire Wire Line
	3200 4000 2950 4000
$Comp
L C C1
U 1 1 56CB2C3C
P 2950 4150
F 0 "C1" H 2975 4250 50  0000 L CNN
F 1 "100nF" H 2975 4050 50  0000 L CNN
F 2 "" H 2988 4000 50  0000 C CNN
F 3 "" H 2950 4150 50  0000 C CNN
	1    2950 4150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR2
U 1 1 56CB2CB3
P 2950 4300
F 0 "#PWR2" H 2950 4050 50  0001 C CNN
F 1 "GND" H 2950 4150 50  0000 C CNN
F 2 "" H 2950 4300 50  0000 C CNN
F 3 "" H 2950 4300 50  0000 C CNN
	1    2950 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 3400 5200 3400
Wire Wire Line
	5100 3500 6750 3500
$Comp
L Jumper_NC_Small JP1
U 1 1 56CB2D3C
P 5300 3400
F 0 "JP1" H 5300 3480 50  0000 C CNN
F 1 "Invert Enable" H 5300 3550 50  0000 C CNN
F 2 "" H 5300 3400 50  0000 C CNN
F 3 "" H 5300 3400 50  0000 C CNN
	1    5300 3400
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X06 P2
U 1 1 56CB2E12
P 6950 3750
F 0 "P2" H 6950 4100 50  0000 C CNN
F 1 "screw clamps" V 7050 3750 50  0000 C CNN
F 2 "" H 6950 3750 50  0000 C CNN
F 3 "" H 6950 3750 50  0000 C CNN
	1    6950 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 3600 6750 3600
Wire Wire Line
	6650 3600 6650 4150
Wire Wire Line
	6750 4000 6650 4000
Connection ~ 6650 4000
Wire Wire Line
	6750 3800 6650 3800
Connection ~ 6650 3800
$Comp
L GND #PWR10
U 1 1 56CB2EF5
P 6650 4150
F 0 "#PWR10" H 6650 3900 50  0001 C CNN
F 1 "GND" H 6650 4000 50  0000 C CNN
F 2 "" H 6650 4150 50  0000 C CNN
F 3 "" H 6650 4150 50  0000 C CNN
	1    6650 4150
	1    0    0    -1  
$EndComp
Connection ~ 6650 3600
$Comp
L R R1
U 1 1 56CB303B
P 5300 3600
F 0 "R1" V 5250 3750 50  0000 C CNN
F 1 "2K2" V 5300 3600 50  0000 C CNN
F 2 "" V 5230 3600 50  0000 C CNN
F 3 "" H 5300 3600 50  0000 C CNN
	1    5300 3600
	0    1    1    0   
$EndComp
Wire Wire Line
	5100 3600 5150 3600
Wire Wire Line
	5450 3600 5600 3600
$Comp
L Led_Small D3
U 1 1 56CB30E8
P 5700 3600
F 0 "D3" H 5650 3725 50  0000 L CNN
F 1 "3mm led" H 5600 3550 30  0000 L CNN
F 2 "" V 5700 3600 50  0000 C CNN
F 3 "" V 5700 3600 50  0000 C CNN
	1    5700 3600
	-1   0    0    1   
$EndComp
Text GLabel 8050 2150 0    39   Input ~ 0
SCK
Text GLabel 8050 2250 0    39   Input ~ 0
MISO
Text GLabel 8050 2350 0    39   Input ~ 0
MOSI
Text GLabel 5200 3900 2    39   Input ~ 0
SCK
Text GLabel 5200 3700 2    39   Input ~ 0
MISO
Text GLabel 5200 3800 2    39   Input ~ 0
MOSI
Wire Wire Line
	5100 3700 5200 3700
Wire Wire Line
	5200 3800 5100 3800
Wire Wire Line
	5100 3900 5200 3900
Wire Wire Line
	5100 4100 5550 4100
$Comp
L Crystal_Small Y1
U 1 1 56CB3CBD
P 5650 4050
F 0 "Y1" V 5800 4050 50  0000 C CNN
F 1 "20MHz" V 5500 4050 50  0000 C CNN
F 2 "" H 5650 4050 50  0000 C CNN
F 3 "" H 5650 4050 50  0000 C CNN
	1    5650 4050
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR6
U 1 1 56CB3FEB
P 5850 5600
F 0 "#PWR6" H 5850 5350 50  0001 C CNN
F 1 "GND" H 5850 5450 50  0000 C CNN
F 2 "" H 5850 5600 50  0000 C CNN
F 3 "" H 5850 5600 50  0000 C CNN
	1    5850 5600
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X04 P3
U 1 1 56CB4837
P 8350 2200
F 0 "P3" H 8350 2450 50  0000 C CNN
F 1 "ISP(1)" V 8450 2200 50  0000 C CNN
F 2 "" H 8350 2200 50  0000 C CNN
F 3 "" H 8350 2200 50  0000 C CNN
	1    8350 2200
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR11
U 1 1 56CB4AB5
P 8000 2050
F 0 "#PWR11" H 8000 1900 50  0001 C CNN
F 1 "+5V" H 8000 2190 50  0000 C CNN
F 2 "" H 8000 2050 50  0000 C CNN
F 3 "" H 8000 2050 50  0000 C CNN
	1    8000 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 2050 8000 2050
Wire Wire Line
	8050 2150 8150 2150
Wire Wire Line
	8150 2250 8050 2250
Wire Wire Line
	8150 2350 8050 2350
$Comp
L 7805 U1
U 1 1 56CB4CA6
P 4450 2150
F 0 "U1" H 4600 1954 50  0000 C CNN
F 1 "7805" H 4450 2350 50  0000 C CNN
F 2 "" H 4450 2150 50  0000 C CNN
F 3 "" H 4450 2150 50  0000 C CNN
	1    4450 2150
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR4
U 1 1 56CB4CF9
P 3400 2000
F 0 "#PWR4" H 3400 1850 50  0001 C CNN
F 1 "+12V" H 3400 2140 50  0000 C CNN
F 2 "" H 3400 2000 50  0000 C CNN
F 3 "" H 3400 2000 50  0000 C CNN
	1    3400 2000
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 P1
U 1 1 56CB4D0B
P 3050 2200
F 0 "P1" H 3050 2400 50  0000 C CNN
F 1 "Screw clamps" V 3150 2200 50  0000 C CNN
F 2 "" H 3050 2200 50  0000 C CNN
F 3 "" H 3050 2200 50  0000 C CNN
	1    3050 2200
	-1   0    0    1   
$EndComp
Wire Wire Line
	3250 2100 3500 2100
Wire Wire Line
	3400 2000 3400 2200
Wire Wire Line
	3400 2200 3250 2200
Wire Wire Line
	3250 2300 3400 2300
Wire Wire Line
	3400 2300 3400 2600
Connection ~ 3400 2100
$Comp
L D D1
U 1 1 56CB4F49
P 3650 2100
F 0 "D1" H 3650 2200 50  0000 C CNN
F 1 "1N4001" H 3650 2000 50  0000 C CNN
F 2 "" H 3650 2100 50  0000 C CNN
F 3 "" H 3650 2100 50  0000 C CNN
	1    3650 2100
	-1   0    0    1   
$EndComp
$Comp
L C C2
U 1 1 56CB4F9E
P 3900 2300
F 0 "C2" H 3925 2400 50  0000 L CNN
F 1 "0,33 uF" H 3925 2200 50  0000 L CNN
F 2 "" H 3938 2150 50  0000 C CNN
F 3 "" H 3900 2300 50  0000 C CNN
	1    3900 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 2100 4050 2100
Wire Wire Line
	3900 2100 3900 2150
Connection ~ 3900 2100
Wire Wire Line
	4450 2550 4450 2400
Wire Wire Line
	3400 2550 5200 2550
Wire Wire Line
	3900 2450 3900 2550
Connection ~ 3900 2550
$Comp
L CONN_01X02 P4
U 1 1 56CB5329
P 8350 2700
F 0 "P4" H 8350 2850 50  0000 C CNN
F 1 "ISP(2)" V 8450 2700 50  0000 C CNN
F 2 "" H 8350 2700 50  0000 C CNN
F 3 "" H 8350 2700 50  0000 C CNN
	1    8350 2700
	1    0    0    -1  
$EndComp
Text GLabel 8050 2650 0    39   Input ~ 0
Reset
$Comp
L GND #PWR5
U 1 1 56CB5395
P 3400 2600
F 0 "#PWR5" H 3400 2350 50  0001 C CNN
F 1 "GND" H 3400 2450 50  0000 C CNN
F 2 "" H 3400 2600 50  0000 C CNN
F 3 "" H 3400 2600 50  0000 C CNN
	1    3400 2600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR12
U 1 1 56CB53C3
P 8050 2750
F 0 "#PWR12" H 8050 2500 50  0001 C CNN
F 1 "GND" H 8050 2600 50  0000 C CNN
F 2 "" H 8050 2750 50  0000 C CNN
F 3 "" H 8050 2750 50  0000 C CNN
	1    8050 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 2650 8150 2650
Wire Wire Line
	8150 2750 8050 2750
$Comp
L C C3
U 1 1 56CB5758
P 4950 2300
F 0 "C3" H 4975 2400 50  0000 L CNN
F 1 "100nF" H 4975 2200 50  0000 L CNN
F 2 "" H 4988 2150 50  0000 C CNN
F 3 "" H 4950 2300 50  0000 C CNN
	1    4950 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 2100 5700 2100
Wire Wire Line
	4950 2100 4950 2150
Wire Wire Line
	4950 2550 4950 2450
Connection ~ 4450 2550
$Comp
L Jumper_NC_Small JP2
U 1 1 56CB5BEB
P 5800 2100
F 0 "JP2" H 5800 2180 50  0000 C CNN
F 1 "5V Power line" H 5800 2250 50  0000 C CNN
F 2 "" H 5800 2100 50  0000 C CNN
F 3 "" H 5800 2100 50  0000 C CNN
	1    5800 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 2100 6200 2100
$Comp
L +5V #PWR8
U 1 1 56CB5F72
P 6200 2000
F 0 "#PWR8" H 6200 1850 50  0001 C CNN
F 1 "+5V" H 6200 2140 50  0000 C CNN
F 2 "" H 6200 2000 50  0000 C CNN
F 3 "" H 6200 2000 50  0000 C CNN
	1    6200 2000
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 56CB632C
P 5550 2300
F 0 "R2" V 5630 2300 50  0000 C CNN
F 1 "2K2" V 5550 2300 50  0000 C CNN
F 2 "" V 5480 2300 50  0000 C CNN
F 3 "" H 5550 2300 50  0000 C CNN
	1    5550 2300
	-1   0    0    1   
$EndComp
$Comp
L Led_Small D2
U 1 1 56CB6334
P 5300 2550
F 0 "D2" H 5250 2675 50  0000 L CNN
F 1 "3mm led" H 5200 2450 30  0000 L CNN
F 2 "" V 5300 2550 50  0000 C CNN
F 3 "" V 5300 2550 50  0000 C CNN
	1    5300 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 2100 5550 2150
Connection ~ 5550 2100
Wire Wire Line
	5550 2450 5550 2550
Wire Wire Line
	5550 2550 5400 2550
Connection ~ 4950 2550
Wire Wire Line
	6200 2100 6200 2000
Connection ~ 3400 2550
$Comp
L R R3
U 1 1 56CB87EE
P 6300 4850
F 0 "R3" V 6380 4850 50  0000 C CNN
F 1 "10K" V 6300 4850 50  0000 C CNN
F 2 "" V 6230 4850 50  0000 C CNN
F 3 "" H 6300 4850 50  0000 C CNN
	1    6300 4850
	0    -1   -1   0   
$EndComp
$Comp
L SW_PUSH SW1
U 1 1 56CB880C
P 5850 5250
F 0 "SW1" H 6000 5360 50  0000 C CNN
F 1 "SW_PUSH" H 5850 5170 50  0000 C CNN
F 2 "" H 5850 5250 50  0000 C CNN
F 3 "" H 5850 5250 50  0000 C CNN
	1    5850 5250
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR9
U 1 1 56CB8CFE
P 6550 4850
F 0 "#PWR9" H 6550 4700 50  0001 C CNN
F 1 "+5V" H 6550 4990 50  0000 C CNN
F 2 "" H 6550 4850 50  0000 C CNN
F 3 "" H 6550 4850 50  0000 C CNN
	1    6550 4850
	1    0    0    -1  
$EndComp
Text GLabel 6200 5000 2    39   Input ~ 0
Reset
Wire Wire Line
	5100 4850 6150 4850
Wire Wire Line
	5100 4000 5550 4000
Wire Wire Line
	5550 4000 5550 3950
Wire Wire Line
	5550 3950 5800 3950
Wire Wire Line
	5550 4150 5800 4150
Wire Wire Line
	5550 4100 5550 4150
$Comp
L C_Small C5
U 1 1 56CBA405
P 5900 4150
F 0 "C5" H 5910 4220 50  0000 L CNN
F 1 "27pF" V 6050 4100 50  0000 L CNN
F 2 "" H 5900 4150 50  0000 C CNN
F 3 "" H 5900 4150 50  0000 C CNN
	1    5900 4150
	0    1    1    0   
$EndComp
$Comp
L C_Small C4
U 1 1 56CBA639
P 5900 3950
F 0 "C4" H 5910 4020 50  0000 L CNN
F 1 "27pF" V 5800 3900 50  0000 L CNN
F 2 "" H 5900 3950 50  0000 C CNN
F 3 "" H 5900 3950 50  0000 C CNN
	1    5900 3950
	0    1    1    0   
$EndComp
Connection ~ 5650 3950
Connection ~ 5650 4150
Wire Wire Line
	6100 4150 6000 4150
Wire Wire Line
	6100 3400 6100 4400
Wire Wire Line
	6100 3950 6000 3950
Wire Wire Line
	5800 3600 6100 3600
Connection ~ 6100 3950
Wire Wire Line
	5400 3400 6100 3400
Connection ~ 6100 3600
Connection ~ 6100 4150
$Comp
L GND #PWR7
U 1 1 56CBAAF1
P 6100 4400
F 0 "#PWR7" H 6100 4150 50  0001 C CNN
F 1 "GND" H 6100 4250 50  0000 C CNN
F 2 "" H 6100 4400 50  0000 C CNN
F 3 "" H 6100 4400 50  0000 C CNN
	1    6100 4400
	1    0    0    -1  
$EndComp
Text GLabel 5200 4250 2    39   Input ~ 0
POT
Wire Wire Line
	5100 4250 5200 4250
Text GLabel 5200 4550 2    39   Input ~ 0
Switch_Direction
Wire Wire Line
	5100 4550 5200 4550
Text GLabel 5200 4750 2    39   Input ~ 0
Switch_Enable
Wire Wire Line
	5100 4750 5200 4750
Connection ~ 5850 4850
Wire Wire Line
	6450 4850 6550 4850
Wire Wire Line
	5850 5550 5850 5600
Wire Wire Line
	6050 4850 6050 5000
Wire Wire Line
	6050 5000 6200 5000
Connection ~ 6050 4850
Text GLabel 6600 3900 0    39   Input ~ 0
Out_Enable
Text GLabel 6600 3700 0    39   Input ~ 0
Out_Direction
Wire Wire Line
	6750 3700 6600 3700
Wire Wire Line
	6600 3900 6750 3900
Text GLabel 5200 5700 2    39   Input ~ 0
Out_Enable
Text GLabel 5200 5600 2    39   Input ~ 0
Out_Direction
Wire Wire Line
	5200 5600 5100 5600
Wire Wire Line
	5100 5700 5200 5700
Text GLabel 8100 3650 0    39   Input ~ 0
Switch_Direction
Text GLabel 8100 4250 0    39   Input ~ 0
Switch_Enable
Wire Wire Line
	8250 3650 8100 3650
Wire Wire Line
	8250 4250 8100 4250
$Comp
L SPST SW2
U 1 1 56CBDDDB
P 8750 3650
F 0 "SW2" H 8750 3750 50  0000 C CNN
F 1 "SPST" H 8750 3550 50  0000 C CNN
F 2 "" H 8750 3650 50  0000 C CNN
F 3 "" H 8750 3650 50  0000 C CNN
	1    8750 3650
	1    0    0    -1  
$EndComp
$Comp
L SPST SW3
U 1 1 56CBDEB0
P 8750 4250
F 0 "SW3" H 8750 4350 50  0000 C CNN
F 1 "SPST" H 8750 4150 50  0000 C CNN
F 2 "" H 8750 4250 50  0000 C CNN
F 3 "" H 8750 4250 50  0000 C CNN
	1    8750 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 3650 9400 3650
Wire Wire Line
	9400 3650 9400 4400
Wire Wire Line
	9400 4250 9250 4250
Connection ~ 9400 4250
$Comp
L GND #PWR13
U 1 1 56CBE189
P 9400 4400
F 0 "#PWR13" H 9400 4150 50  0001 C CNN
F 1 "GND" H 9400 4250 50  0000 C CNN
F 2 "" H 9400 4400 50  0000 C CNN
F 3 "" H 9400 4400 50  0000 C CNN
	1    9400 4400
	1    0    0    -1  
$EndComp
Text Notes 7200 4350 1    30   ~ 0
(to match the screw clamps on my stepper driver)\n
Text GLabel 8100 5000 0    39   Input ~ 0
POT
Wire Wire Line
	8100 5000 8200 5000
$Comp
L POT RV?
U 1 1 56CBEF02
P 8350 5000
F 0 "RV?" H 8350 4900 50  0000 C CNN
F 1 "10K" H 8350 5000 50  0000 C CNN
F 2 "" H 8350 5000 50  0000 C CNN
F 3 "" H 8350 5000 50  0000 C CNN
	1    8350 5000
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 56CBF369
P 8350 5400
F 0 "#PWR?" H 8350 5150 50  0001 C CNN
F 1 "GND" H 8350 5250 50  0000 C CNN
F 2 "" H 8350 5400 50  0000 C CNN
F 3 "" H 8350 5400 50  0000 C CNN
	1    8350 5400
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 56CBF659
P 8350 4650
F 0 "#PWR?" H 8350 4500 50  0001 C CNN
F 1 "+5V" H 8350 4790 50  0000 C CNN
F 2 "" H 8350 4650 50  0000 C CNN
F 3 "" H 8350 4650 50  0000 C CNN
	1    8350 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 4750 8350 4650
Wire Wire Line
	8350 5400 8350 5250
Wire Wire Line
	5850 4950 5850 4850
$EndSCHEMATC
