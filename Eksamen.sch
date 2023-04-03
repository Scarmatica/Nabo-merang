EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:Earth #PWR?
U 1 1 642F4EE6
P 3100 -8200
F 0 "#PWR?" H 3100 -8450 50  0001 C CNN
F 1 "Earth" H 3100 -8350 50  0001 C CNN
F 2 "" H 3100 -8200 50  0001 C CNN
F 3 "~" H 3100 -8200 50  0001 C CNN
	1    3100 -8200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 -8300 3100 -8200
Wire Wire Line
	3100 -8750 2900 -8750
Wire Wire Line
	3100 -8600 3100 -8750
$Comp
L Device:R_POT RV?
U 1 1 642D7A90
P 3100 -8450
F 0 "RV?" H 3031 -8404 50  0000 R CNN
F 1 "R_POT" H 3031 -8495 50  0000 R CNN
F 2 "" H 3100 -8450 50  0001 C CNN
F 3 "~" H 3100 -8450 50  0001 C CNN
	1    3100 -8450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 -7650 3900 -8050
Wire Wire Line
	3050 -7650 3900 -7650
Wire Wire Line
	3050 -7800 3050 -7650
$Comp
L Device:CP C?
U 1 1 642B958B
P 3200 -7800
F 0 "C?" V 2945 -7800 50  0000 C CNN
F 1 "CP" V 3036 -7800 50  0000 C CNN
F 2 "" H 3238 -7950 50  0001 C CNN
F 3 "~" H 3200 -7800 50  0001 C CNN
	1    3200 -7800
	0    1    1    0   
$EndComp
Wire Wire Line
	3350 -7800 3800 -7800
Wire Wire Line
	3800 -8050 3800 -7800
$Comp
L power:Earth #PWR?
U 1 1 642AADF2
P 3800 -9200
F 0 "#PWR?" H 3800 -9450 50  0001 C CNN
F 1 "Earth" H 3800 -9350 50  0001 C CNN
F 2 "" H 3800 -9200 50  0001 C CNN
F 3 "~" H 3800 -9200 50  0001 C CNN
	1    3800 -9200
	-1   0    0    1   
$EndComp
Wire Wire Line
	3800 -9150 3800 -9200
$Comp
L Device:CP C?
U 1 1 6429CBF9
P 3800 -9000
F 0 "C?" H 3682 -9046 50  0000 R CNN
F 1 "CP" H 3682 -8955 50  0000 R CNN
F 2 "" H 3838 -9150 50  0001 C CNN
F 3 "~" H 3800 -9000 50  0001 C CNN
	1    3800 -9000
	-1   0    0    1   
$EndComp
Wire Wire Line
	3800 -8650 3800 -8850
Connection ~ 2400 -8750
Wire Wire Line
	2600 -8750 2400 -8750
$Comp
L power:VDD #PWR?
U 1 1 6428A0F2
P 2400 -9400
F 0 "#PWR?" H 2400 -9550 50  0001 C CNN
F 1 "VDD" H 2415 -9227 50  0000 C CNN
F 2 "" H 2400 -9400 50  0001 C CNN
F 3 "" H 2400 -9400 50  0001 C CNN
	1    2400 -9400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 -9250 2400 -9400
$Comp
L Device:R R?
U 1 1 642700BF
P 2400 -9100
F 0 "R?" H 2470 -9054 50  0000 L CNN
F 1 "R" H 2470 -9145 50  0000 L CNN
F 2 "" V 2330 -9100 50  0001 C CNN
F 3 "~" H 2400 -9100 50  0001 C CNN
	1    2400 -9100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 -8750 2400 -8950
Wire Wire Line
	3500 -8450 3250 -8450
$Comp
L power:Earth #PWR?
U 1 1 64252F92
P 1450 -8550
F 0 "#PWR?" H 1450 -8800 50  0001 C CNN
F 1 "Earth" H 1450 -8700 50  0001 C CNN
F 2 "" H 1450 -8550 50  0001 C CNN
F 3 "~" H 1450 -8550 50  0001 C CNN
	1    1450 -8550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 -6550 6900 -6550
Wire Wire Line
	9800 -2050 9800 -6550
Wire Wire Line
	4200 -2050 9800 -2050
Wire Wire Line
	7000 -5500 7000 -2750
Wire Wire Line
	4200 -4900 4200 -2050
Wire Wire Line
	4750 -4900 4200 -4900
Wire Wire Line
	4750 -5200 4750 -4900
Wire Wire Line
	4600 -5200 4750 -5200
$Comp
L power:Earth #PWR?
U 1 1 6446166B
P 2400 -2500
F 0 "#PWR?" H 2400 -2750 50  0001 C CNN
F 1 "Earth" H 2400 -2650 50  0001 C CNN
F 2 "" H 2400 -2500 50  0001 C CNN
F 3 "~" H 2400 -2500 50  0001 C CNN
	1    2400 -2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 -2850 2400 -2500
Wire Wire Line
	2400 -2950 2400 -3300
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 64461673
P 2600 -2950
F 0 "J?" H 2680 -2958 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 2680 -3049 50  0000 L CNN
F 2 "" H 2600 -2950 50  0001 C CNN
F 3 "~" H 2600 -2950 50  0001 C CNN
	1    2600 -2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 -5300 6050 -5250
Wire Wire Line
	6250 -4950 6450 -4950
$Comp
L power:VDD #PWR?
U 1 1 64461610
P 6450 -4950
F 0 "#PWR?" H 6450 -5100 50  0001 C CNN
F 1 "VDD" V 6465 -4822 50  0000 L CNN
F 2 "" H 6450 -4950 50  0001 C CNN
F 3 "" H 6450 -4950 50  0001 C CNN
	1    6450 -4950
	0    1    1    0   
$EndComp
Wire Wire Line
	5850 -4950 5650 -4950
$Comp
L Device:LED D?
U 1 1 64461617
P 5500 -4950
F 0 "D?" H 5493 -4733 50  0000 C CNN
F 1 "LED" H 5493 -4824 50  0000 C CNN
F 2 "" H 5500 -4950 50  0001 C CNN
F 3 "~" H 5500 -4950 50  0001 C CNN
	1    5500 -4950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 64461679
P 5100 -4950
F 0 "R?" V 4893 -4950 50  0000 C CNN
F 1 "R" V 4984 -4950 50  0000 C CNN
F 2 "" V 5030 -4950 50  0001 C CNN
F 3 "~" H 5100 -4950 50  0001 C CNN
	1    5100 -4950
	0    1    1    0   
$EndComp
Wire Wire Line
	5350 -4950 5250 -4950
Wire Wire Line
	4950 -4950 4850 -4950
Wire Wire Line
	4850 -4950 4850 -4800
$Comp
L power:Earth #PWR?
U 1 1 6446168D
P 4850 -4800
F 0 "#PWR?" H 4850 -5050 50  0001 C CNN
F 1 "Earth" H 4850 -4950 50  0001 C CNN
F 2 "" H 4850 -4800 50  0001 C CNN
F 3 "~" H 4850 -4800 50  0001 C CNN
	1    4850 -4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 -5300 4600 -5300
Wire Wire Line
	4600 -5500 7000 -5500
Wire Wire Line
	7100 -5700 4600 -5700
Wire Wire Line
	4800 -5800 4600 -5800
Wire Wire Line
	4650 -5900 4600 -5900
Wire Wire Line
	4650 -6200 4650 -5900
$Comp
L power:Earth #PWR?
U 1 1 6446175F
P 4600 -4250
F 0 "#PWR?" H 4600 -4500 50  0001 C CNN
F 1 "Earth" H 4600 -4400 50  0001 C CNN
F 2 "" H 4600 -4250 50  0001 C CNN
F 3 "~" H 4600 -4250 50  0001 C CNN
	1    4600 -4250
	-1   0    0    1   
$EndComp
$Comp
L power:Earth #PWR?
U 1 1 64461765
P 5450 -4250
F 0 "#PWR?" H 5450 -4500 50  0001 C CNN
F 1 "Earth" H 5450 -4400 50  0001 C CNN
F 2 "" H 5450 -4250 50  0001 C CNN
F 3 "~" H 5450 -4250 50  0001 C CNN
	1    5450 -4250
	-1   0    0    1   
$EndComp
$Comp
L power:Earth #PWR?
U 1 1 64328F5A
P 4200 -9350
F 0 "#PWR?" H 4200 -9600 50  0001 C CNN
F 1 "Earth" H 4200 -9500 50  0001 C CNN
F 2 "" H 4200 -9350 50  0001 C CNN
F 3 "~" H 4200 -9350 50  0001 C CNN
	1    4200 -9350
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 643282C1
P 4200 -9200
F 0 "R?" H 4270 -9154 50  0000 L CNN
F 1 "R" H 4270 -9245 50  0000 L CNN
F 2 "" V 4130 -9200 50  0001 C CNN
F 3 "~" H 4200 -9200 50  0001 C CNN
	1    4200 -9200
	1    0    0    -1  
$EndComp
$Comp
L MCU_Microchip_PIC16:PIC16F819-IP U?
U 1 1 64461685
P 3600 -5500
F 0 "U?" H 3600 -4619 50  0000 C CNN
F 1 "PIC16F819-IP" H 3600 -4710 50  0000 C CNN
F 2 "" H 3600 -5500 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/39598F.pdf" H 3600 -5500 50  0001 C CNN
	1    3600 -5500
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR?
U 1 1 64461602
P 5250 -5800
F 0 "#PWR?" H 5250 -5950 50  0001 C CNN
F 1 "VDD" V 5265 -5672 50  0000 L CNN
F 2 "" H 5250 -5800 50  0001 C CNN
F 3 "" H 5250 -5800 50  0001 C CNN
	1    5250 -5800
	0    1    1    0   
$EndComp
$Comp
L Device:R_PHOTO R?
U 1 1 644615FB
P 4950 -5800
F 0 "R?" V 4625 -5800 50  0000 C CNN
F 1 "R_PHOTO" V 4716 -5800 50  0000 C CNN
F 2 "" V 5000 -6050 50  0001 L CNN
F 3 "~" H 4950 -5850 50  0001 C CNN
	1    4950 -5800
	0    1    1    0   
$EndComp
Wire Wire Line
	5100 -5800 5250 -5800
Wire Wire Line
	4600 -4150 4600 -4250
Wire Wire Line
	5450 -4150 5450 -4250
Connection ~ 4600 -3750
Wire Wire Line
	4600 -3850 4600 -3750
Connection ~ 5450 -3750
Wire Wire Line
	5450 -3850 5450 -3750
$Comp
L Device:C C?
U 1 1 64461753
P 4600 -4000
F 0 "C?" H 4715 -3954 50  0000 L CNN
F 1 "C" H 4715 -4045 50  0000 L CNN
F 2 "" H 4638 -4150 50  0001 C CNN
F 3 "~" H 4600 -4000 50  0001 C CNN
	1    4600 -4000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6446174D
P 5450 -4000
F 0 "C?" H 5565 -3954 50  0000 L CNN
F 1 "C" H 5565 -4045 50  0000 L CNN
F 2 "" H 5488 -4150 50  0001 C CNN
F 3 "~" H 5450 -4000 50  0001 C CNN
	1    5450 -4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 -3750 4900 -3750
Wire Wire Line
	5450 -3750 5200 -3750
$Comp
L Device:Crystal Y?
U 1 1 64461744
P 5050 -3750
F 0 "Y?" H 5050 -3482 50  0000 C CNN
F 1 "Crystal" H 5050 -3573 50  0000 C CNN
F 2 "" H 5050 -3750 50  0001 C CNN
F 3 "~" H 5050 -3750 50  0001 C CNN
	1    5050 -3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 -3550 5450 -3750
Connection ~ 4600 -3150
Wire Wire Line
	4600 -3150 4600 -3750
$Comp
L Device:R R?
U 1 1 6446173B
P 5450 -3400
F 0 "R?" H 5520 -3354 50  0000 L CNN
F 1 "R" H 5520 -3445 50  0000 L CNN
F 2 "" V 5380 -3400 50  0001 C CNN
F 3 "~" H 5450 -3400 50  0001 C CNN
	1    5450 -3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 -3150 5600 -3150
Connection ~ 5450 -3150
Wire Wire Line
	5450 -3150 5450 -3250
Wire Wire Line
	4600 -3150 4600 -3050
Wire Wire Line
	4950 -3150 4600 -3150
$Comp
L Device:R R?
U 1 1 64461730
P 5100 -3150
F 0 "R?" V 5307 -3150 50  0000 C CNN
F 1 "R" V 5216 -3150 50  0000 C CNN
F 2 "" V 5030 -3150 50  0001 C CNN
F 3 "~" H 5100 -3150 50  0001 C CNN
	1    5100 -3150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5250 -3150 5450 -3150
Wire Wire Line
	5600 -3050 4600 -3050
$Comp
L power:VDD #PWR?
U 1 1 64461728
P 5500 -2450
F 0 "#PWR?" H 5500 -2600 50  0001 C CNN
F 1 "VDD" H 5515 -2277 50  0000 C CNN
F 2 "" H 5500 -2450 50  0001 C CNN
F 3 "" H 5500 -2450 50  0001 C CNN
	1    5500 -2450
	-1   0    0    1   
$EndComp
Wire Wire Line
	5500 -2550 5500 -2450
Wire Wire Line
	5600 -2550 5500 -2550
$Comp
L power:Earth #PWR?
U 1 1 64461720
P 6550 -3250
F 0 "#PWR?" H 6550 -3500 50  0001 C CNN
F 1 "Earth" H 6550 -3400 50  0001 C CNN
F 2 "" H 6550 -3250 50  0001 C CNN
F 3 "~" H 6550 -3250 50  0001 C CNN
	1    6550 -3250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6400 -3250 6550 -3250
$Comp
L Custom_Scarmatica:4060 U?
U 1 1 64461719
P 6000 -2450
F 0 "U?" H 6000 -3465 50  0000 C CNN
F 1 "4060" H 6000 -3374 50  0000 C CNN
F 2 "" H 6050 -2450 50  0001 C CNN
F 3 "" H 6050 -2450 50  0001 C CNN
	1    6000 -2450
	-1   0    0    1   
$EndComp
Wire Wire Line
	2400 -5200 2600 -5200
Wire Wire Line
	2400 -4500 2400 -5200
Wire Wire Line
	1800 -4500 2400 -4500
Wire Wire Line
	2300 -4600 1800 -4600
Wire Wire Line
	2300 -5300 2300 -4600
Wire Wire Line
	2600 -5300 2300 -5300
Wire Wire Line
	2200 -4700 1800 -4700
Wire Wire Line
	2200 -5400 2200 -4700
Wire Wire Line
	2600 -5400 2200 -5400
Wire Wire Line
	2100 -4800 1800 -4800
Wire Wire Line
	2100 -5500 2100 -4800
Wire Wire Line
	2600 -5500 2100 -5500
Wire Wire Line
	2400 -6200 1800 -6200
Wire Wire Line
	2400 -5900 2400 -6200
Wire Wire Line
	2600 -5900 2400 -5900
Wire Wire Line
	2300 -6100 1800 -6100
Wire Wire Line
	2300 -5800 2300 -6100
Wire Wire Line
	2600 -5800 2300 -5800
Wire Wire Line
	2200 -6000 1800 -6000
Wire Wire Line
	2200 -5700 2200 -6000
Wire Wire Line
	2600 -5700 2200 -5700
Wire Wire Line
	2100 -5900 1800 -5900
Wire Wire Line
	2100 -5600 2100 -5900
Wire Wire Line
	2600 -5600 2100 -5600
$Comp
L power:Earth #PWR?
U 1 1 644616FB
P 1450 -6550
F 0 "#PWR?" H 1450 -6800 50  0001 C CNN
F 1 "Earth" H 1450 -6700 50  0001 C CNN
F 2 "" H 1450 -6550 50  0001 C CNN
F 3 "~" H 1450 -6550 50  0001 C CNN
	1    1450 -6550
	-1   0    0    1   
$EndComp
Wire Wire Line
	1450 -6500 1450 -6550
Wire Wire Line
	1250 -6500 1450 -6500
Wire Wire Line
	1250 -6450 1250 -6500
$Comp
L power:VDD #PWR?
U 1 1 644616F2
P 1250 -5550
F 0 "#PWR?" H 1250 -5700 50  0001 C CNN
F 1 "VDD" H 1265 -5377 50  0000 C CNN
F 2 "" H 1250 -5550 50  0001 C CNN
F 3 "" H 1250 -5550 50  0001 C CNN
	1    1250 -5550
	-1   0    0    1   
$EndComp
Wire Wire Line
	1250 -5750 1250 -5550
$Comp
L power:Earth #PWR?
U 1 1 644616EB
P -800 -6450
F 0 "#PWR?" H -800 -6700 50  0001 C CNN
F 1 "Earth" H -800 -6600 50  0001 C CNN
F 2 "" H -800 -6450 50  0001 C CNN
F 3 "~" H -800 -6450 50  0001 C CNN
	1    -800 -6450
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 644616E5
P -650 -6450
F 0 "R?" V -857 -6450 50  0000 C CNN
F 1 "R" V -766 -6450 50  0000 C CNN
F 2 "" V -720 -6450 50  0001 C CNN
F 3 "~" H -650 -6450 50  0001 C CNN
	1    -650 -6450
	0    1    1    0   
$EndComp
Wire Wire Line
	-450 -6450 -450 -6400
Connection ~ -450 -6450
Wire Wire Line
	-450 -6450 -500 -6450
Wire Wire Line
	-450 -6500 -450 -6450
Wire Wire Line
	150  -6400 700  -6400
Wire Wire Line
	700  -6300 150  -6300
Wire Wire Line
	150  -6200 700  -6200
Wire Wire Line
	700  -6100 150  -6100
Wire Wire Line
	150  -6000 700  -6000
Wire Wire Line
	700  -5900 150  -5900
Wire Wire Line
	700  -5800 150  -5800
$Comp
L 4xxx_IEEE:4511 U?
U 1 1 644616D4
P 1250 -6100
F 0 "U?" H 1250 -6641 50  0000 C CNN
F 1 "4511" H 1250 -6550 50  0000 C CNN
F 2 "" H 1250 -6100 50  0001 C CNN
F 3 "" H 1250 -6100 50  0001 C CNN
	1    1250 -6100
	-1   0    0    1   
$EndComp
$Comp
L Display_Character:HDSP-7403 U?
U 1 1 644616CE
P -150 -6100
F 0 "U?" H -150 -6767 50  0000 C CNN
F 1 "HDSP-7403" H -150 -6676 50  0000 C CNN
F 2 "Display_7Segment:HDSP-7401" H -150 -6650 50  0001 C CNN
F 3 "https://docs.broadcom.com/docs/AV02-2553EN" H -150 -6100 50  0001 C CNN
	1    -150 -6100
	-1   0    0    1   
$EndComp
$Comp
L power:Earth #PWR?
U 1 1 644616C8
P 1450 -5150
F 0 "#PWR?" H 1450 -5400 50  0001 C CNN
F 1 "Earth" H 1450 -5300 50  0001 C CNN
F 2 "" H 1450 -5150 50  0001 C CNN
F 3 "~" H 1450 -5150 50  0001 C CNN
	1    1450 -5150
	-1   0    0    1   
$EndComp
Wire Wire Line
	1450 -5100 1450 -5150
Wire Wire Line
	1250 -5100 1450 -5100
Wire Wire Line
	1250 -5050 1250 -5100
$Comp
L power:VDD #PWR?
U 1 1 644616BF
P 1250 -4150
F 0 "#PWR?" H 1250 -4300 50  0001 C CNN
F 1 "VDD" H 1265 -3977 50  0000 C CNN
F 2 "" H 1250 -4150 50  0001 C CNN
F 3 "" H 1250 -4150 50  0001 C CNN
	1    1250 -4150
	-1   0    0    1   
$EndComp
Wire Wire Line
	1250 -4350 1250 -4150
$Comp
L power:Earth #PWR?
U 1 1 644616B8
P -800 -5050
F 0 "#PWR?" H -800 -5300 50  0001 C CNN
F 1 "Earth" H -800 -5200 50  0001 C CNN
F 2 "" H -800 -5050 50  0001 C CNN
F 3 "~" H -800 -5050 50  0001 C CNN
	1    -800 -5050
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 644616B2
P -650 -5050
F 0 "R?" V -857 -5050 50  0000 C CNN
F 1 "R" V -766 -5050 50  0000 C CNN
F 2 "" V -720 -5050 50  0001 C CNN
F 3 "~" H -650 -5050 50  0001 C CNN
	1    -650 -5050
	0    1    1    0   
$EndComp
Wire Wire Line
	-450 -5050 -450 -5000
Connection ~ -450 -5050
Wire Wire Line
	-450 -5050 -500 -5050
Wire Wire Line
	-450 -5100 -450 -5050
Wire Wire Line
	150  -5000 700  -5000
Wire Wire Line
	700  -4900 150  -4900
Wire Wire Line
	150  -4800 700  -4800
Wire Wire Line
	700  -4700 150  -4700
Wire Wire Line
	150  -4600 700  -4600
Wire Wire Line
	700  -4500 150  -4500
Wire Wire Line
	700  -4400 150  -4400
$Comp
L 4xxx_IEEE:4511 U?
U 1 1 644616A1
P 1250 -4700
F 0 "U?" H 1250 -5241 50  0000 C CNN
F 1 "4511" H 1250 -5150 50  0000 C CNN
F 2 "" H 1250 -4700 50  0001 C CNN
F 3 "" H 1250 -4700 50  0001 C CNN
	1    1250 -4700
	-1   0    0    1   
$EndComp
$Comp
L Display_Character:HDSP-7403 U?
U 1 1 6446169B
P -150 -4700
F 0 "U?" H -150 -5367 50  0000 C CNN
F 1 "HDSP-7403" H -150 -5276 50  0000 C CNN
F 2 "Display_7Segment:HDSP-7401" H -150 -5250 50  0001 C CNN
F 3 "https://docs.broadcom.com/docs/AV02-2553EN" H -150 -4700 50  0001 C CNN
	1    -150 -4700
	-1   0    0    1   
$EndComp
Wire Wire Line
	7000 -2750 6400 -2750
$Comp
L power:Earth #PWR?
U 1 1 64461693
P 3600 -4600
F 0 "#PWR?" H 3600 -4850 50  0001 C CNN
F 1 "Earth" H 3600 -4750 50  0001 C CNN
F 2 "" H 3600 -4600 50  0001 C CNN
F 3 "~" H 3600 -4600 50  0001 C CNN
	1    3600 -4600
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR?
U 1 1 64461665
P 2400 -3300
F 0 "#PWR?" H 2400 -3450 50  0001 C CNN
F 1 "VDD" H 2415 -3127 50  0000 C CNN
F 2 "" H 2400 -3300 50  0001 C CNN
F 3 "" H 2400 -3300 50  0001 C CNN
	1    2400 -3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 -5600 7250 -4300
Wire Wire Line
	7700 -5600 7250 -5600
Wire Wire Line
	7700 -5800 7750 -5800
Connection ~ 7700 -5800
Wire Wire Line
	7250 -4300 7350 -4300
Wire Wire Line
	7700 -5800 7700 -5600
Wire Wire Line
	7100 -5700 7100 -4200
Wire Wire Line
	7100 -4200 7350 -4200
Wire Wire Line
	8700 -5800 8700 -5600
$Comp
L Device:Antenna AE?
U 1 1 64461656
P 8700 -5400
F 0 "AE?" V 8917 -5457 50  0000 C CNN
F 1 "Antenna" V 8826 -5457 50  0000 C CNN
F 2 "" H 8700 -5400 50  0001 C CNN
F 3 "~" H 8700 -5400 50  0001 C CNN
	1    8700 -5400
	-1   0    0    1   
$EndComp
$Comp
L power:VDD #PWR?
U 1 1 64461650
P 8400 -5800
F 0 "#PWR?" H 8400 -5950 50  0001 C CNN
F 1 "VDD" V 8415 -5673 50  0000 L CNN
F 2 "" H 8400 -5800 50  0001 C CNN
F 3 "" H 8400 -5800 50  0001 C CNN
	1    8400 -5800
	-1   0    0    1   
$EndComp
$Comp
L power:VDD #PWR?
U 1 1 6446164A
P 7850 -5800
F 0 "#PWR?" H 7850 -5950 50  0001 C CNN
F 1 "VDD" V 7865 -5673 50  0000 L CNN
F 2 "" H 7850 -5800 50  0001 C CNN
F 3 "" H 7850 -5800 50  0001 C CNN
	1    7850 -5800
	-1   0    0    1   
$EndComp
Wire Wire Line
	7650 -5800 7700 -5800
$Comp
L power:Earth #PWR?
U 1 1 64461643
P 8600 -5800
F 0 "#PWR?" H 8600 -6050 50  0001 C CNN
F 1 "Earth" H 8600 -5950 50  0001 C CNN
F 2 "" H 8600 -5800 50  0001 C CNN
F 3 "~" H 8600 -5800 50  0001 C CNN
	1    8600 -5800
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR?
U 1 1 6446163D
P 8500 -5800
F 0 "#PWR?" H 8500 -6050 50  0001 C CNN
F 1 "Earth" H 8500 -5950 50  0001 C CNN
F 2 "" H 8500 -5800 50  0001 C CNN
F 3 "~" H 8500 -5800 50  0001 C CNN
	1    8500 -5800
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR?
U 1 1 64461637
P 7550 -5800
F 0 "#PWR?" H 7550 -6050 50  0001 C CNN
F 1 "Earth" H 7550 -5950 50  0001 C CNN
F 2 "" H 7550 -5800 50  0001 C CNN
F 3 "~" H 7550 -5800 50  0001 C CNN
	1    7550 -5800
	1    0    0    -1  
$EndComp
$Comp
L RF_AM_Custom:QAM-RX2 A?
U 1 1 64461631
P 8150 -6200
F 0 "A?" V 8074 -6222 50  0000 L CNN
F 1 "QAM-RX2" V 8165 -6222 50  0000 L CNN
F 2 "" H 8150 -6200 50  0001 C CNN
F 3 "" H 8150 -6200 50  0001 C CNN
	1    8150 -6200
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR?
U 1 1 6446162B
P 8350 -3200
F 0 "#PWR?" H 8350 -3350 50  0001 C CNN
F 1 "VDD" H 8365 -3027 50  0000 C CNN
F 2 "" H 8350 -3200 50  0001 C CNN
F 3 "" H 8350 -3200 50  0001 C CNN
	1    8350 -3200
	-1   0    0    1   
$EndComp
Wire Wire Line
	8350 -3500 8350 -3200
$Comp
L power:Earth #PWR?
U 1 1 64461624
P 8350 -5100
F 0 "#PWR?" H 8350 -5350 50  0001 C CNN
F 1 "Earth" H 8350 -5250 50  0001 C CNN
F 2 "" H 8350 -5100 50  0001 C CNN
F 3 "~" H 8350 -5100 50  0001 C CNN
	1    8350 -5100
	-1   0    0    1   
$EndComp
Wire Wire Line
	8350 -4900 8350 -5100
$Comp
L MCU_Microchip_PIC16:PIC16F819-IP U?
U 1 1 6446161D
P 8350 -4200
F 0 "U?" H 8350 -3319 50  0000 C CNN
F 1 "PIC16F819-IP" H 8350 -3410 50  0000 C CNN
F 2 "" H 8350 -4200 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/39598F.pdf" H 8350 -4200 50  0001 C CNN
	1    8350 -4200
	-1   0    0    1   
$EndComp
$Comp
L power:VDD #PWR?
U 1 1 644615EF
P 4650 -6700
F 0 "#PWR?" H 4650 -6850 50  0001 C CNN
F 1 "VDD" V 4665 -6573 50  0000 L CNN
F 2 "" H 4650 -6700 50  0001 C CNN
F 3 "" H 4650 -6700 50  0001 C CNN
	1    4650 -6700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4850 -6700 4650 -6700
Wire Wire Line
	5250 -6700 5350 -6700
$Comp
L power:Earth #PWR?
U 1 1 644615E7
P 6200 -6500
F 0 "#PWR?" H 6200 -6750 50  0001 C CNN
F 1 "Earth" H 6200 -6650 50  0001 C CNN
F 2 "" H 6200 -6500 50  0001 C CNN
F 3 "~" H 6200 -6500 50  0001 C CNN
	1    6200 -6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 -6700 6200 -6500
Wire Wire Line
	6050 -6700 6100 -6700
Wire Wire Line
	6050 -7100 6550 -7100
$Comp
L Relay:ADW11 K?
U 1 1 644615DE
P 5750 -6900
F 0 "K?" V 6317 -6900 50  0000 C CNN
F 1 "ADW11" V 6226 -6900 50  0000 C CNN
F 2 "Relay_THT:Relay_1P1T_NO_10x24x18.8mm_Panasonic_ADW11xxxxW_THT" H 7075 -6950 50  0001 C CNN
F 3 "https://www.panasonic-electric-works.com/pew/es/downloads/ds_dw_hl_en.pdf" H 5750 -6900 50  0001 C CNN
	1    5750 -6900
	0    -1   -1   0   
$EndComp
Connection ~ 4200 -8350
Wire Wire Line
	4200 -8650 4200 -8350
Wire Wire Line
	4100 -8350 4200 -8350
Wire Wire Line
	4200 -9050 4200 -8950
$Comp
L Device:C C?
U 1 1 644615C6
P 4200 -8800
F 0 "C?" H 4315 -8754 50  0000 L CNN
F 1 "C" H 4315 -8845 50  0000 L CNN
F 2 "" H 4238 -8950 50  0001 C CNN
F 3 "~" H 4200 -8800 50  0001 C CNN
	1    4200 -8800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 -6800 6750 -6800
$Comp
L Device:Speaker LS?
U 1 1 644615BF
P 8000 -6900
F 0 "LS?" H 8170 -6904 50  0000 L CNN
F 1 "Speaker" H 8170 -6995 50  0000 L CNN
F 2 "" H 8000 -7100 50  0001 C CNN
F 3 "~" H 7990 -6950 50  0001 C CNN
	1    8000 -6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 -6900 7800 -6900
$Comp
L power:Earth #PWR?
U 1 1 644615B8
P 6550 -6650
F 0 "#PWR?" H 6550 -6900 50  0001 C CNN
F 1 "Earth" H 6550 -6800 50  0001 C CNN
F 2 "" H 6550 -6650 50  0001 C CNN
F 3 "~" H 6550 -6650 50  0001 C CNN
	1    6550 -6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 -6800 6550 -6650
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 644615B1
P 6750 -6900
F 0 "J?" H 6830 -6908 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 6830 -6999 50  0000 L CNN
F 2 "" H 6750 -6900 50  0001 C CNN
F 3 "~" H 6750 -6900 50  0001 C CNN
	1    6750 -6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 -7200 5200 -7050
Connection ~ 5200 -7200
Wire Wire Line
	6550 -7100 6550 -6900
Wire Wire Line
	5200 -7200 5450 -7200
Wire Wire Line
	5200 -7350 5200 -7200
$Comp
L Device:CP C?
U 1 1 644615A6
P 5050 -7050
F 0 "C?" V 5305 -7050 50  0000 C CNN
F 1 "CP" V 5214 -7050 50  0000 C CNN
F 2 "" H 5088 -7200 50  0001 C CNN
F 3 "~" H 5050 -7050 50  0001 C CNN
	1    5050 -7050
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP C?
U 1 1 644615A0
P 5050 -7350
F 0 "C?" V 5305 -7350 50  0000 C CNN
F 1 "CP" V 5214 -7350 50  0000 C CNN
F 2 "" H 5088 -7500 50  0001 C CNN
F 3 "~" H 5050 -7350 50  0001 C CNN
	1    5050 -7350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4750 -7050 4900 -7050
Wire Wire Line
	4750 -7350 4900 -7350
$Comp
L power:Earth #PWR?
U 1 1 64461595
P 3700 -7950
F 0 "#PWR?" H 3700 -8200 50  0001 C CNN
F 1 "Earth" H 3700 -8100 50  0001 C CNN
F 2 "" H 3700 -7950 50  0001 C CNN
F 3 "~" H 3700 -7950 50  0001 C CNN
	1    3700 -7950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 -8050 3700 -7950
$Comp
L power:Earth #PWR?
U 1 1 6446158E
P 3400 -8050
F 0 "#PWR?" H 3400 -8300 50  0001 C CNN
F 1 "Earth" H 3400 -8200 50  0001 C CNN
F 2 "" H 3400 -8050 50  0001 C CNN
F 3 "~" H 3400 -8050 50  0001 C CNN
	1    3400 -8050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 -8250 3400 -8050
Wire Wire Line
	3500 -8250 3400 -8250
$Comp
L power:VDD #PWR?
U 1 1 64461586
P 3700 -8650
F 0 "#PWR?" H 3700 -8800 50  0001 C CNN
F 1 "VDD" H 3715 -8477 50  0000 C CNN
F 2 "" H 3700 -8650 50  0001 C CNN
F 3 "" H 3700 -8650 50  0001 C CNN
	1    3700 -8650
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Audio:LM386 U?
U 1 1 64461580
P 3800 -8350
F 0 "U?" H 4144 -8304 50  0000 L CNN
F 1 "LM386" H 4144 -8395 50  0000 L CNN
F 2 "" H 3900 -8250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm386.pdf" H 4000 -8150 50  0001 C CNN
	1    3800 -8350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 -8750 2400 -8750
Wire Wire Line
	1450 -8750 1450 -8550
Wire Wire Line
	1600 -8750 1450 -8750
$Comp
L Device:Microphone MK?
U 1 1 64461577
P 1800 -8750
F 0 "MK?" V 1533 -8750 50  0000 C CNN
F 1 "Microphone" V 1624 -8750 50  0000 C CNN
F 2 "" V 1800 -8650 50  0001 C CNN
F 3 "~" V 1800 -8650 50  0001 C CNN
	1    1800 -8750
	0    1    1    0   
$EndComp
Wire Wire Line
	3600 -4800 3600 -4600
$Comp
L power:VDD #PWR?
U 1 1 64461570
P 3200 -6300
F 0 "#PWR?" H 3200 -6450 50  0001 C CNN
F 1 "VDD" H 3215 -6127 50  0000 C CNN
F 2 "" H 3200 -6300 50  0001 C CNN
F 3 "" H 3200 -6300 50  0001 C CNN
	1    3200 -6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 -6200 3600 -6200
Wire Wire Line
	3200 -6200 3200 -6300
Wire Wire Line
	5050 -6100 6900 -6100
Wire Wire Line
	5050 -6400 5050 -6100
Wire Wire Line
	6900 -6550 6900 -6100
Wire Wire Line
	6100 -6700 6100 -6350
Connection ~ 6100 -6700
Wire Wire Line
	6100 -6700 6200 -6700
Wire Wire Line
	6100 -6350 5900 -6350
$Comp
L pspice:DIODE D?
U 1 1 642B7CF3
P 5700 -6350
F 0 "D?" H 5700 -6615 50  0000 C CNN
F 1 "DIODE" H 5700 -6524 50  0000 C CNN
F 2 "" H 5700 -6350 50  0001 C CNN
F 3 "~" H 5700 -6350 50  0001 C CNN
	1    5700 -6350
	-1   0    0    1   
$EndComp
Wire Wire Line
	5500 -6350 5350 -6350
Wire Wire Line
	5350 -6350 5350 -6700
Connection ~ 5350 -6700
Wire Wire Line
	5350 -6700 5450 -6700
$Comp
L Device:C C?
U 1 1 6432CC97
P 2750 -8750
F 0 "C?" V 2498 -8750 50  0000 C CNN
F 1 "C" V 2589 -8750 50  0000 C CNN
F 2 "" H 2788 -8900 50  0001 C CNN
F 3 "~" H 2750 -8750 50  0001 C CNN
	1    2750 -8750
	0    1    1    0   
$EndComp
Wire Wire Line
	4750 -7350 4750 -7050
Wire Wire Line
	4000 -6200 4650 -6200
Wire Wire Line
	4000 -6650 4000 -6200
Wire Wire Line
	4200 -8350 4200 -8000
$Comp
L Device:R_POT RV?
U 1 1 6440B142
P 4200 -7850
F 0 "RV?" V 4085 -7850 50  0000 C CNN
F 1 "R_POT" V 3994 -7850 50  0000 C CNN
F 2 "" H 4200 -7850 50  0001 C CNN
F 3 "~" H 4200 -7850 50  0001 C CNN
	1    4200 -7850
	0    -1   -1   0   
$EndComp
Connection ~ 4200 -8000
Wire Wire Line
	4200 -8000 4200 -7950
Wire Wire Line
	4050 -7850 4000 -7850
Wire Wire Line
	4000 -7850 4000 -7500
$Comp
L pspice:DIODE D?
U 1 1 6441B122
P 4000 -7300
F 0 "D?" V 3954 -7172 50  0000 L CNN
F 1 "DIODE" V 4045 -7172 50  0000 L CNN
F 2 "" H 4000 -7300 50  0001 C CNN
F 3 "~" H 4000 -7300 50  0001 C CNN
	1    4000 -7300
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:BC547 Q?
U 1 1 6443B9E9
P 5050 -6600
F 0 "Q?" V 5378 -6600 50  0000 C CNN
F 1 "BC547" V 5287 -6600 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 5250 -6675 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC550-D.pdf" H 5050 -6600 50  0001 L CNN
	1    5050 -6600
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_BJT:BC547 Q?
U 1 1 6444AB52
P 6050 -5050
F 0 "Q?" V 6285 -5050 50  0000 C CNN
F 1 "BC547" V 6376 -5050 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6250 -5125 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC550-D.pdf" H 6050 -5050 50  0001 L CNN
	1    6050 -5050
	0    1    1    0   
$EndComp
Wire Wire Line
	4000 -7100 4000 -6950
Wire Wire Line
	4000 -6950 3850 -6950
$Comp
L Device:R_POT RV?
U 1 1 6447B62D
P 3700 -6950
F 0 "RV?" V 3585 -6950 50  0000 C CNN
F 1 "R_POT" V 3494 -6950 50  0000 C CNN
F 2 "" H 3700 -6950 50  0001 C CNN
F 3 "~" H 3700 -6950 50  0001 C CNN
	1    3700 -6950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3700 -7200 3700 -7100
$Comp
L power:Earth #PWR?
U 1 1 6448B25E
P 3700 -7200
F 0 "#PWR?" H 3700 -7450 50  0001 C CNN
F 1 "Earth" H 3700 -7350 50  0001 C CNN
F 2 "" H 3700 -7200 50  0001 C CNN
F 3 "~" H 3700 -7200 50  0001 C CNN
	1    3700 -7200
	-1   0    0    1   
$EndComp
Wire Wire Line
	4000 -6950 4000 -6650
Wire Wire Line
	4000 -6650 3850 -6650
Connection ~ 4000 -6950
$Comp
L Device:C C?
U 1 1 6449B022
P 3700 -6650
F 0 "C?" V 3448 -6650 50  0000 C CNN
F 1 "C" V 3539 -6650 50  0000 C CNN
F 2 "" H 3738 -6800 50  0001 C CNN
F 3 "~" H 3700 -6650 50  0001 C CNN
	1    3700 -6650
	0    1    1    0   
$EndComp
Wire Wire Line
	3550 -6650 3450 -6650
$Comp
L power:Earth #PWR?
U 1 1 644AC6BA
P 3450 -6650
F 0 "#PWR?" H 3450 -6900 50  0001 C CNN
F 1 "Earth" H 3450 -6800 50  0001 C CNN
F 2 "" H 3450 -6650 50  0001 C CNN
F 3 "~" H 3450 -6650 50  0001 C CNN
	1    3450 -6650
	0    1    1    0   
$EndComp
Connection ~ 4000 -6650
Wire Wire Line
	4750 -8350 4750 -7350
Wire Wire Line
	4200 -8350 4750 -8350
Connection ~ 4750 -7350
$EndSCHEMATC
