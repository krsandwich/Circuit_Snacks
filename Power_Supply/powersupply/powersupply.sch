EESchema Schematic File Version 4
LIBS:powersupply-cache
EELAYER 29 0
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
L Connector:USB_B_Micro J2
U 1 1 5D3004BA
P 1650 1350
F 0 "J2" H 1707 1817 50  0000 C CNN
F 1 "USB_B_Micro" H 1707 1726 50  0000 C CNN
F 2 "" H 1800 1300 50  0001 C CNN
F 3 "~" H 1800 1300 50  0001 C CNN
	1    1650 1350
	1    0    0    -1  
$EndComp
NoConn ~ 1950 1350
NoConn ~ 1950 1450
NoConn ~ 1950 1550
$Comp
L powersupply:RFM-0505S U3
U 1 1 5D303F43
P 2800 900
F 0 "U3" H 2800 825 50  0000 C CNN
F 1 "B0505S-2WR2" H 2800 734 50  0000 C CNN
F 2 "" H 2800 900 50  0001 C CNN
F 3 "" H 2800 900 50  0001 C CNN
	1    2800 900 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5D30523C
P 3050 1650
F 0 "#PWR0101" H 3050 1400 50  0001 C CNN
F 1 "GND" H 3050 1500 50  0000 C CNN
F 2 "" H 3050 1650 50  0001 C CNN
F 3 "" H 3050 1650 50  0001 C CNN
	1    3050 1650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0102
U 1 1 5D305F94
P 3850 1250
F 0 "#PWR0102" H 3850 1100 50  0001 C CNN
F 1 "+5V" H 3865 1423 50  0000 C CNN
F 2 "" H 3850 1250 50  0001 C CNN
F 3 "" H 3850 1250 50  0001 C CNN
	1    3850 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 1750 1650 1750
Wire Wire Line
	1650 1750 2550 1750
Wire Wire Line
	2550 1750 2550 1350
Connection ~ 1650 1750
Wire Wire Line
	2550 1150 2550 1200
NoConn ~ 19450 10300
NoConn ~ 25200 10700
Text Label 3000 4050 0    50   ~ 0
V_lin_ctrl
$Comp
L Device:C_Small C102
U 1 1 5D48B49D
P 2750 3050
F 0 "C102" H 2842 3096 50  0000 L CNN
F 1 "1uF" H 2842 3005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2750 3050 50  0001 C CNN
F 3 "~" H 2750 3050 50  0001 C CNN
	1    2750 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C101
U 1 1 5D48BB7E
P 1550 3050
F 0 "C101" H 1642 3096 50  0000 L CNN
F 1 "1uF" H 1642 3005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1550 3050 50  0001 C CNN
F 3 "~" H 1550 3050 50  0001 C CNN
	1    1550 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 2950 1550 2950
Wire Wire Line
	2450 2950 2750 2950
$Comp
L power:+3.3V #PWR0108
U 1 1 5D48DD27
P 2750 2950
F 0 "#PWR0108" H 2750 2800 50  0001 C CNN
F 1 "+3.3V" H 2765 3123 50  0000 C CNN
F 2 "" H 2750 2950 50  0001 C CNN
F 3 "" H 2750 2950 50  0001 C CNN
	1    2750 2950
	1    0    0    -1  
$EndComp
Connection ~ 2750 2950
$Comp
L powersupply:ATSAMD10D13A-SS U2
U 1 1 5D47B7D4
P 2600 4450
F 0 "U2" H 1650 4150 50  0000 C CNN
F 1 "ATSAMD10D13A-SS" H 1600 4000 50  0000 C CNN
F 2 "Package_SO:SOIC-20W_7.5x12.8mm_P1.27mm" H 2600 3300 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-42242-SAM-D10_Datasheet.pdf" H 2600 3550 50  0001 C CNN
	1    2600 4450
	1    0    0    -1  
$EndComp
$Comp
L powersupply:LM358P U7
U 1 1 5D4A8FA5
P 8400 3150
F 0 "U7" H 8375 3265 50  0000 C CNN
F 1 "LM358P" H 8375 3174 50  0000 C CNN
F 2 "" H 8400 3150 50  0001 C CNN
F 3 "" H 8400 3150 50  0001 C CNN
	1    8400 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R6
U 1 1 5D4AC3D3
P 7400 3350
F 0 "R6" H 7468 3396 50  0000 L CNN
F 1 "15k" H 7468 3305 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 7400 3350 50  0001 C CNN
F 3 "~" H 7400 3350 50  0001 C CNN
	1    7400 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R7
U 1 1 5D4AD799
P 7400 3550
F 0 "R7" H 7200 3600 50  0000 L CNN
F 1 "100" H 7200 3500 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 7400 3550 50  0001 C CNN
F 3 "~" H 7400 3550 50  0001 C CNN
	1    7400 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 3450 7400 3450
Connection ~ 7400 3450
$Comp
L power:GND #PWR0109
U 1 1 5D4AFFF3
P 7400 3650
F 0 "#PWR0109" H 7400 3400 50  0001 C CNN
F 1 "GND" H 7405 3477 50  0000 C CNN
F 2 "" H 7400 3650 50  0001 C CNN
F 3 "" H 7400 3650 50  0001 C CNN
	1    7400 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Small D2
U 1 1 5D4B1412
P 9100 2900
F 0 "D2" H 9100 2695 50  0000 C CNN
F 1 "1N5819" H 9000 2800 50  0000 C CNN
F 2 "" V 9100 2900 50  0001 C CNN
F 3 "~" V 9100 2900 50  0001 C CNN
	1    9100 2900
	-1   0    0    1   
$EndComp
Text Label 7400 3250 2    50   ~ 0
Vlim
Wire Wire Line
	8050 2900 8050 3300
$Comp
L power:GND #PWR0115
U 1 1 5D46746E
P 8050 3750
F 0 "#PWR0115" H 8050 3500 50  0001 C CNN
F 1 "GND" H 8055 3577 50  0000 C CNN
F 2 "" H 8050 3750 50  0001 C CNN
F 3 "" H 8050 3750 50  0001 C CNN
	1    8050 3750
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 5D3340CA
P 1200 4250
F 0 "SW1" H 1200 4535 50  0000 C CNN
F 1 "SW_Push" H 1200 4444 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 1200 4450 50  0001 C CNN
F 3 "~" H 1200 4450 50  0001 C CNN
	1    1200 4250
	-1   0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0117
U 1 1 5D4CB251
P 2500 3900
F 0 "#PWR0117" H 2500 3750 50  0001 C CNN
F 1 "+3.3V" H 2515 4073 50  0000 C CNN
F 2 "" H 2500 3900 50  0001 C CNN
F 3 "" H 2500 3900 50  0001 C CNN
	1    2500 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R103
U 1 1 5D4F946F
P 3350 6250
F 0 "R103" V 3145 6250 50  0000 C CNN
F 1 "1k" V 3236 6250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 3350 6250 50  0001 C CNN
F 3 "~" H 3350 6250 50  0001 C CNN
	1    3350 6250
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R102
U 1 1 5D4FAA70
P 3100 6450
F 0 "R102" V 3200 6450 50  0000 C CNN
F 1 "1k" V 3300 6450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 3100 6450 50  0001 C CNN
F 3 "~" H 3100 6450 50  0001 C CNN
	1    3100 6450
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C103
U 1 1 5D502474
P 3200 6850
F 0 "C103" H 3292 6896 50  0000 L CNN
F 1 "15uF" H 3292 6805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3200 6850 50  0001 C CNN
F 3 "~" H 3200 6850 50  0001 C CNN
	1    3200 6850
	1    0    0    -1  
$EndComp
Text Label 3200 6650 0    50   ~ 0
V_curr_lim
Text Label 3650 6350 0    50   ~ 0
V_boost_ctrl
Text Label 3000 5850 0    50   ~ 0
SDA
$Comp
L powersupply:TFT_OLED U4
U 1 1 5D37FF21
P 5650 3850
F 0 "U4" H 5600 3850 50  0000 L CNN
F 1 "TFT_OLED" H 5500 3700 50  0000 L CNN
F 2 "" H 5650 3850 50  0001 C CNN
F 3 "" H 5650 3850 50  0001 C CNN
	1    5650 3850
	1    0    0    -1  
$EndComp
Text Label 9700 3250 0    50   ~ 0
Boost_out
Text Label 2000 4450 2    50   ~ 0
SWCLK
$Comp
L power:+3.3V #PWR0119
U 1 1 5D4C59D0
P 1700 3950
F 0 "#PWR0119" H 1700 3800 50  0001 C CNN
F 1 "+3.3V" H 1715 4123 50  0000 C CNN
F 2 "" H 1700 3950 50  0001 C CNN
F 3 "" H 1700 3950 50  0001 C CNN
	1    1700 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 3450 9400 3450
Wire Wire Line
	9200 2900 9200 3450
Connection ~ 9200 3450
$Comp
L Device:Q_PMOS_GDS Q1
U 1 1 5D4B2BFF
P 9600 3450
F 0 "Q1" H 9806 3404 50  0000 L CNN
F 1 "Q_PMOS_GDS" H 9806 3495 50  0000 L CNN
F 2 "" H 9800 3550 50  0001 C CNN
F 3 "~" H 9600 3450 50  0001 C CNN
	1    9600 3450
	1    0    0    1   
$EndComp
Wire Wire Line
	3200 6450 3200 6750
Wire Wire Line
	3000 6250 3250 6250
Wire Wire Line
	3450 6250 3650 6250
Wire Wire Line
	3650 6250 3650 6400
$Comp
L Regulator_Linear:AZ1117-3.3 U1
U 1 1 5D489A61
P 2150 2950
F 0 "U1" H 2150 3192 50  0000 C CNN
F 1 "AZ1117E-3.3" H 2150 3101 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 2150 3200 50  0001 C CIN
F 3 "https://www.diodes.com/assets/Datasheets/AZ1117.pdf" H 2150 2950 50  0001 C CNN
	1    2150 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C105
U 1 1 5D5092B9
P 3650 6500
F 0 "C105" H 3742 6546 50  0000 L CNN
F 1 "15uF" H 3742 6455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3650 6500 50  0001 C CNN
F 3 "~" H 3650 6500 50  0001 C CNN
	1    3650 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 1150 2550 1150
$Comp
L power:GND #PWR0123
U 1 1 5D66945C
P 1550 3150
F 0 "#PWR0123" H 1550 2900 50  0001 C CNN
F 1 "GND" H 1555 2977 50  0000 C CNN
F 2 "" H 1550 3150 50  0001 C CNN
F 3 "" H 1550 3150 50  0001 C CNN
	1    1550 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0124
U 1 1 5D669BF4
P 2750 3150
F 0 "#PWR0124" H 2750 2900 50  0001 C CNN
F 1 "GND" H 2755 2977 50  0000 C CNN
F 2 "" H 2750 3150 50  0001 C CNN
F 3 "" H 2750 3150 50  0001 C CNN
	1    2750 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0125
U 1 1 5D66A6FB
P 750 4250
F 0 "#PWR0125" H 750 4000 50  0001 C CNN
F 1 "GND" H 755 4077 50  0000 C CNN
F 2 "" H 750 4250 50  0001 C CNN
F 3 "" H 750 4250 50  0001 C CNN
	1    750  4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	750  4250 1000 4250
$Comp
L power:GND #PWR0126
U 1 1 5D67264E
P 2450 6600
F 0 "#PWR0126" H 2450 6350 50  0001 C CNN
F 1 "GND" H 2455 6427 50  0000 C CNN
F 2 "" H 2450 6600 50  0001 C CNN
F 3 "" H 2450 6600 50  0001 C CNN
	1    2450 6600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0127
U 1 1 5D673041
P 3200 6950
F 0 "#PWR0127" H 3200 6700 50  0001 C CNN
F 1 "GND" H 3205 6777 50  0000 C CNN
F 2 "" H 3200 6950 50  0001 C CNN
F 3 "" H 3200 6950 50  0001 C CNN
	1    3200 6950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0128
U 1 1 5D673BAE
P 3650 6600
F 0 "#PWR0128" H 3650 6350 50  0001 C CNN
F 1 "GND" H 3655 6427 50  0000 C CNN
F 2 "" H 3650 6600 50  0001 C CNN
F 3 "" H 3650 6600 50  0001 C CNN
	1    3650 6600
	1    0    0    -1  
$EndComp
Text Label 2000 4650 2    50   ~ 0
SWDIO
Text Label 1250 5650 2    50   ~ 0
SWCLK
Text Label 1250 5850 2    50   ~ 0
SWDIO
$Comp
L powersupply:joystick-K1-1506DN-01 U5
U 1 1 5D4C0110
P 5850 5500
F 0 "U5" H 5850 5500 50  0000 C CNN
F 1 "joystick-K1-1506DN-01" H 5900 5400 50  0000 C CNN
F 2 "" H 5850 5500 50  0001 C CNN
F 3 "" H 5850 5500 50  0001 C CNN
	1    5850 5500
	1    0    0    -1  
$EndComp
Text Label 3000 4850 0    50   ~ 0
up
Text Label 3000 5050 0    50   ~ 0
left
Text Label 3000 5250 0    50   ~ 0
down
Text Label 3000 4650 0    50   ~ 0
center
Text Label 5400 5800 2    50   ~ 0
up
Text Label 5400 5950 2    50   ~ 0
left
Text Label 5400 6100 2    50   ~ 0
down
Text Label 6300 5800 0    50   ~ 0
center
Text Label 6300 5950 0    50   ~ 0
right
$Comp
L power:GND #PWR0135
U 1 1 5D56FC0C
P 6450 6100
F 0 "#PWR0135" H 6450 5850 50  0001 C CNN
F 1 "GND" H 6455 5927 50  0000 C CNN
F 2 "" H 6450 6100 50  0001 C CNN
F 3 "" H 6450 6100 50  0001 C CNN
	1    6450 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 6100 6450 6100
Text Label 8700 3600 0    50   ~ 0
V_lin_ctrl
$Comp
L power:+3.3V #PWR0136
U 1 1 5D5A1ADB
P 3450 4250
F 0 "#PWR0136" H 3450 4100 50  0001 C CNN
F 1 "+3.3V" H 3465 4423 50  0000 C CNN
F 2 "" H 3450 4250 50  0001 C CNN
F 3 "" H 3450 4250 50  0001 C CNN
	1    3450 4250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0137
U 1 1 5D5A24F1
P 4050 4250
F 0 "#PWR0137" H 4050 4000 50  0001 C CNN
F 1 "GND" H 4055 4077 50  0000 C CNN
F 2 "" H 4050 4250 50  0001 C CNN
F 3 "" H 4050 4250 50  0001 C CNN
	1    4050 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C104
U 1 1 5D5A2D7A
P 3800 4250
F 0 "C104" V 3571 4250 50  0000 C CNN
F 1 "1uF" V 3662 4250 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3800 4250 50  0001 C CNN
F 3 "~" H 3800 4250 50  0001 C CNN
	1    3800 4250
	0    1    1    0   
$EndComp
Wire Wire Line
	3450 4250 3700 4250
Connection ~ 3450 4250
Wire Wire Line
	3900 4250 4050 4250
$Comp
L Device:R_Small_US R101
U 1 1 5D4A83DB
P 1700 4050
F 0 "R101" H 1500 4150 50  0000 C CNN
F 1 "4.7k" H 1586 4050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 1700 4050 50  0001 C CNN
F 3 "~" H 1700 4050 50  0001 C CNN
	1    1700 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 4150 1700 4250
Wire Wire Line
	1700 4250 2000 4250
$Comp
L power:GND #PWR01
U 1 1 5D4BEC50
P 900 5750
F 0 "#PWR01" H 900 5500 50  0001 C CNN
F 1 "GND" H 905 5577 50  0000 C CNN
F 2 "" H 900 5750 50  0001 C CNN
F 3 "" H 900 5750 50  0001 C CNN
	1    900  5750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R10
U 1 1 5D4B4E12
P 8950 3450
F 0 "R10" V 8850 3300 50  0000 L CNN
F 1 "3k" V 8850 3550 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 8950 3450 50  0001 C CNN
F 3 "~" H 8950 3450 50  0001 C CNN
	1    8950 3450
	0    1    1    0   
$EndComp
$Comp
L powersupply:MC33063AP1 U6
U 1 1 5D455E56
P 6150 1300
F 0 "U6" H 6150 1415 50  0000 C CNN
F 1 "MC33063AP1" H 6150 1324 50  0000 C CNN
F 2 "" H 6150 1300 50  0001 C CNN
F 3 "" H 6150 1300 50  0001 C CNN
	1    6150 1300
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R2
U 1 1 5D459423
P 5300 1450
F 0 "R2" V 5095 1450 50  0000 C CNN
F 1 "180" V 5186 1450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 5300 1450 50  0001 C CNN
F 3 "~" H 5300 1450 50  0001 C CNN
	1    5300 1450
	0    1    1    0   
$EndComp
Wire Wire Line
	5650 1450 5400 1450
Wire Wire Line
	5200 1450 5200 1700
Wire Wire Line
	5200 1700 5650 1700
$Comp
L Device:R_Small_US R3
U 1 1 5D45B2AA
P 5200 1800
F 0 "R3" H 5268 1846 50  0000 L CNN
F 1 "0.22" H 5268 1755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 5200 1800 50  0001 C CNN
F 3 "~" H 5200 1800 50  0001 C CNN
	1    5200 1800
	1    0    0    -1  
$EndComp
Connection ~ 5200 1700
$Comp
L Device:CP1_Small C1
U 1 1 5D45B91C
P 5200 2050
F 0 "C1" H 4950 2100 50  0000 L CNN
F 1 "330 uF" H 4850 2000 50  0000 L CNN
F 2 "" H 5200 2050 50  0001 C CNN
F 3 "~" H 5200 2050 50  0001 C CNN
	1    5200 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 1900 5200 1950
Wire Wire Line
	5650 1950 5200 1950
Connection ~ 5200 1950
$Comp
L power:GND #PWR0103
U 1 1 5D45D872
P 5200 2150
F 0 "#PWR0103" H 5200 1900 50  0001 C CNN
F 1 "GND" H 5205 1977 50  0000 C CNN
F 2 "" H 5200 2150 50  0001 C CNN
F 3 "" H 5200 2150 50  0001 C CNN
	1    5200 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R5
U 1 1 5D46B727
P 5900 2550
F 0 "R5" V 5695 2550 50  0000 C CNN
F 1 "5.5k" V 5786 2550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 5900 2550 50  0001 C CNN
F 3 "~" H 5900 2550 50  0001 C CNN
	1    5900 2550
	0    -1   1    0   
$EndComp
Wire Wire Line
	5500 2200 5650 2200
$Comp
L Device:CP1_Small C3
U 1 1 5D46EC73
P 7250 2650
F 0 "C3" H 7341 2696 50  0000 L CNN
F 1 "330uF" H 7341 2605 50  0000 L CNN
F 2 "" H 7250 2650 50  0001 C CNN
F 3 "~" H 7250 2650 50  0001 C CNN
	1    7250 2650
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5D46F50F
P 7250 2750
F 0 "#PWR0104" H 7250 2500 50  0001 C CNN
F 1 "GND" H 7255 2577 50  0000 C CNN
F 2 "" H 7250 2750 50  0001 C CNN
F 3 "" H 7250 2750 50  0001 C CNN
	1    7250 2750
	-1   0    0    -1  
$EndComp
$Comp
L Device:D_Zener_Small D1
U 1 1 5D470D69
P 7250 1750
F 0 "D1" V 7296 1682 50  0000 R CNN
F 1 "1N5819" V 7205 1682 50  0000 R CNN
F 2 "" V 7250 1750 50  0001 C CNN
F 3 "~" V 7250 1750 50  0001 C CNN
	1    7250 1750
	0    1    -1   0   
$EndComp
Wire Wire Line
	7250 1850 7250 2550
Connection ~ 7250 2550
Wire Wire Line
	7250 1650 7250 1450
Wire Wire Line
	7250 1450 6700 1450
$Comp
L power:GND #PWR0105
U 1 1 5D47314D
P 6850 1700
F 0 "#PWR0105" H 6850 1450 50  0001 C CNN
F 1 "GND" H 6855 1527 50  0000 C CNN
F 2 "" H 6850 1700 50  0001 C CNN
F 3 "" H 6850 1700 50  0001 C CNN
	1    6850 1700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6850 1700 6700 1700
$Comp
L power:GND #PWR0106
U 1 1 5D474282
P 6850 2200
F 0 "#PWR0106" H 6850 1950 50  0001 C CNN
F 1 "GND" H 6855 2027 50  0000 C CNN
F 2 "" H 6850 2200 50  0001 C CNN
F 3 "" H 6850 2200 50  0001 C CNN
	1    6850 2200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6850 2200 6700 2200
$Comp
L Device:CP1_Small C2
U 1 1 5D4755C0
P 7100 2050
F 0 "C2" H 7191 2096 50  0000 L CNN
F 1 "1500pF" H 7191 2005 50  0000 L CNN
F 2 "" H 7100 2050 50  0001 C CNN
F 3 "~" H 7100 2050 50  0001 C CNN
	1    7100 2050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7100 1950 6700 1950
$Comp
L power:GND #PWR0107
U 1 1 5D477589
P 7100 2150
F 0 "#PWR0107" H 7100 1900 50  0001 C CNN
F 1 "GND" H 7105 1977 50  0000 C CNN
F 2 "" H 7100 2150 50  0001 C CNN
F 3 "" H 7100 2150 50  0001 C CNN
	1    7100 2150
	-1   0    0    -1  
$EndComp
Text Label 7800 2550 0    50   ~ 0
Boost_out
$Comp
L Device:R_Small_US R1
U 1 1 5D49225A
P 5000 2550
F 0 "R1" V 4795 2550 50  0000 C CNN
F 1 "3.17k" V 4886 2550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 5000 2550 50  0001 C CNN
F 3 "~" H 5000 2550 50  0001 C CNN
	1    5000 2550
	0    -1   1    0   
$EndComp
$Comp
L Device:L_Small L1
U 1 1 5D4B1E6E
P 5900 950
F 0 "L1" V 5719 950 50  0000 C CNN
F 1 "170uH" V 5810 950 50  0000 C CNN
F 2 "" H 5900 950 50  0001 C CNN
F 3 "~" H 5900 950 50  0001 C CNN
	1    5900 950 
	0    -1   1    0   
$EndComp
Wire Wire Line
	5800 950  5200 950 
Wire Wire Line
	5200 950  5200 1450
Connection ~ 5200 1450
Wire Wire Line
	7250 950  7250 1450
Connection ~ 7250 1450
Wire Wire Line
	5500 2550 5500 2200
Wire Wire Line
	5800 2550 5500 2550
$Comp
L power:GND #PWR0122
U 1 1 5D46D6B4
P 5500 2750
F 0 "#PWR0122" H 5500 2500 50  0001 C CNN
F 1 "GND" H 5505 2577 50  0000 C CNN
F 2 "" H 5500 2750 50  0001 C CNN
F 3 "" H 5500 2750 50  0001 C CNN
	1    5500 2750
	-1   0    0    -1  
$EndComp
Connection ~ 5500 2550
$Comp
L Device:R_Small_US R4
U 1 1 5D46A6EF
P 5500 2650
F 0 "R4" H 5568 2696 50  0000 L CNN
F 1 "3.6k" H 5568 2605 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 5500 2650 50  0001 C CNN
F 3 "~" H 5500 2650 50  0001 C CNN
	1    5500 2650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5500 2550 5100 2550
Text Label 4900 2550 2    50   ~ 0
Vref
$Comp
L power:+5V #PWR0138
U 1 1 5D5B38BD
P 5000 1950
F 0 "#PWR0138" H 5000 1800 50  0001 C CNN
F 1 "+5V" H 5015 2123 50  0000 C CNN
F 2 "" H 5000 1950 50  0001 C CNN
F 3 "" H 5000 1950 50  0001 C CNN
	1    5000 1950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5200 1950 5000 1950
Text Label 8700 3300 0    50   ~ 0
Boost_out
$Comp
L power:GND #PWR02
U 1 1 5D4E8530
P 2150 3250
F 0 "#PWR02" H 2150 3000 50  0001 C CNN
F 1 "GND" H 2155 3077 50  0000 C CNN
F 2 "" H 2150 3250 50  0001 C CNN
F 3 "" H 2150 3250 50  0001 C CNN
	1    2150 3250
	1    0    0    -1  
$EndComp
Connection ~ 1700 4250
Wire Wire Line
	1400 4250 1700 4250
$Comp
L Connector_Generic:Conn_01x03 J1
U 1 1 5D4EFDE3
P 1450 5750
F 0 "J1" H 1530 5792 50  0000 L CNN
F 1 "Conn_01x03" H 1530 5701 50  0000 L CNN
F 2 "" H 1450 5750 50  0001 C CNN
F 3 "~" H 1450 5750 50  0001 C CNN
	1    1450 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  5750 1250 5750
Wire Wire Line
	8050 2900 9000 2900
Wire Wire Line
	9050 3450 9200 3450
Wire Wire Line
	8850 3450 8700 3450
Wire Wire Line
	8700 3750 9050 3750
Wire Wire Line
	7500 3600 8050 3600
Wire Wire Line
	6000 950  7250 950 
Wire Wire Line
	6000 2550 7250 2550
$Comp
L Device:R_Small_US R106
U 1 1 5D556674
P 4700 4050
F 0 "R106" V 4495 4050 50  0000 C CNN
F 1 "0" V 4586 4050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 4700 4050 50  0001 C CNN
F 3 "~" H 4700 4050 50  0001 C CNN
	1    4700 4050
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R107
U 1 1 5D557710
P 4700 4350
F 0 "R107" V 4500 4350 50  0000 C CNN
F 1 "0" V 4600 4350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 4700 4350 50  0001 C CNN
F 3 "~" H 4700 4350 50  0001 C CNN
	1    4700 4350
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R108
U 1 1 5D557F5A
P 4700 4600
F 0 "R108" V 4800 4600 50  0000 C CNN
F 1 "0" V 4750 4600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 4700 4600 50  0001 C CNN
F 3 "~" H 4700 4600 50  0001 C CNN
	1    4700 4600
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R109
U 1 1 5D55B992
P 4700 4850
F 0 "R109" V 4550 4850 50  0000 C CNN
F 1 "0" V 4650 4850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 4700 4850 50  0001 C CNN
F 3 "~" H 4700 4850 50  0001 C CNN
	1    4700 4850
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5D56D783
P 4600 4350
F 0 "#PWR06" H 4600 4100 50  0001 C CNN
F 1 "GND" H 4450 4250 50  0000 C CNN
F 2 "" H 4600 4350 50  0001 C CNN
F 3 "" H 4600 4350 50  0001 C CNN
	1    4600 4350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5D56DFE0
P 4600 4850
F 0 "#PWR08" H 4600 4600 50  0001 C CNN
F 1 "GND" H 4450 4800 50  0000 C CNN
F 2 "" H 4600 4850 50  0001 C CNN
F 3 "" H 4600 4850 50  0001 C CNN
	1    4600 4850
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR05
U 1 1 5D56E643
P 4600 4050
F 0 "#PWR05" H 4600 3900 50  0001 C CNN
F 1 "+3.3V" H 4450 4100 50  0000 C CNN
F 2 "" H 4600 4050 50  0001 C CNN
F 3 "" H 4600 4050 50  0001 C CNN
	1    4600 4050
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR07
U 1 1 5D56EC9F
P 4600 4600
F 0 "#PWR07" H 4600 4450 50  0001 C CNN
F 1 "+3.3V" H 4450 4650 50  0000 C CNN
F 2 "" H 4600 4600 50  0001 C CNN
F 3 "" H 4600 4600 50  0001 C CNN
	1    4600 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:L_Small L2
U 1 1 5D572C97
P 7700 2550
F 0 "L2" V 7885 2550 50  0000 C CNN
F 1 "1uH" V 7794 2550 50  0000 C CNN
F 2 "" H 7700 2550 50  0001 C CNN
F 3 "~" H 7700 2550 50  0001 C CNN
	1    7700 2550
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP1_Small C4
U 1 1 5D5744DC
P 7800 2650
F 0 "C4" H 7891 2696 50  0000 L CNN
F 1 "100uF" H 7891 2605 50  0000 L CNN
F 2 "" H 7800 2650 50  0001 C CNN
F 3 "~" H 7800 2650 50  0001 C CNN
	1    7800 2650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5D575CAF
P 7800 2750
F 0 "#PWR09" H 7800 2500 50  0001 C CNN
F 1 "GND" H 7805 2577 50  0000 C CNN
F 2 "" H 7800 2750 50  0001 C CNN
F 3 "" H 7800 2750 50  0001 C CNN
	1    7800 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 2550 7600 2550
$Comp
L Device:R_Small_US R8
U 1 1 5D4C0D0A
P 7800 4950
F 0 "R8" H 7868 4996 50  0000 L CNN
F 1 "132k" H 7868 4905 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 7800 4950 50  0001 C CNN
F 3 "~" H 7800 4950 50  0001 C CNN
	1    7800 4950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R9
U 1 1 5D4C174A
P 8450 5050
F 0 "R9" V 8650 5050 50  0000 C CNN
F 1 "100" V 8550 5050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 8450 5050 50  0001 C CNN
F 3 "~" H 8450 5050 50  0001 C CNN
	1    8450 5050
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR0110
U 1 1 5D4CFECE
P 7800 4850
F 0 "#PWR0110" H 7800 4700 50  0001 C CNN
F 1 "+3.3V" H 7815 5023 50  0000 C CNN
F 2 "" H 7800 4850 50  0001 C CNN
F 3 "" H 7800 4850 50  0001 C CNN
	1    7800 4850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R11
U 1 1 5D4D044A
P 9400 3850
F 0 "R11" H 9468 3896 50  0000 L CNN
F 1 "2.32k" H 9468 3805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 9400 3850 50  0001 C CNN
F 3 "~" H 9400 3850 50  0001 C CNN
	1    9400 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R12
U 1 1 5D4D11A0
P 9400 4250
F 0 "R12" H 9468 4296 50  0000 L CNN
F 1 "1k" H 9468 4205 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 9400 4250 50  0001 C CNN
F 3 "~" H 9400 4250 50  0001 C CNN
	1    9400 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 3750 9400 3750
Wire Wire Line
	9400 3950 9400 4100
$Comp
L power:GND #PWR0111
U 1 1 5D4E2EE6
P 9400 4350
F 0 "#PWR0111" H 9400 4100 50  0001 C CNN
F 1 "GND" H 9405 4177 50  0000 C CNN
F 2 "" H 9400 4350 50  0001 C CNN
F 3 "" H 9400 4350 50  0001 C CNN
	1    9400 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 4100 9050 4100
Connection ~ 9400 4100
Wire Wire Line
	9400 4100 9400 4150
$Comp
L Device:R_Small_US R13
U 1 1 5D4E54B6
P 9200 5150
F 0 "R13" H 9268 5196 50  0000 L CNN
F 1 "0.05" H 9268 5105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 9200 5150 50  0001 C CNN
F 3 "~" H 9200 5150 50  0001 C CNN
	1    9200 5150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 5D4EA53D
P 9200 5250
F 0 "#PWR0112" H 9200 5000 50  0001 C CNN
F 1 "GND" H 9205 5077 50  0000 C CNN
F 2 "" H 9200 5250 50  0001 C CNN
F 3 "" H 9200 5250 50  0001 C CNN
	1    9200 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 3750 9900 4150
$Comp
L Connector_Generic:Conn_01x02 U9
U 1 1 5D48A8A7
P 10300 4450
F 0 "U9" H 10200 3850 50  0000 L CNN
F 1 "1x2" H 10200 3950 50  0000 L CNN
F 2 "" H 10300 4600 50  0001 C CNN
F 3 "" H 10300 4600 50  0001 C CNN
	1    10300 4450
	-1   0    0    1   
$EndComp
Connection ~ 9900 3750
Text Label 10500 5050 2    50   ~ 0
V_negative_out
Text Label 10500 3750 2    50   ~ 0
V_positive_out
Connection ~ 9700 3750
Wire Wire Line
	7500 5050 7800 5050
Connection ~ 7800 5050
Wire Wire Line
	7800 5050 8350 5050
Connection ~ 9200 5050
Wire Wire Line
	9900 4350 9900 5050
Connection ~ 9900 5050
Wire Wire Line
	10500 3750 10500 4350
Wire Wire Line
	9900 3750 10500 3750
Wire Wire Line
	10500 5050 10500 4450
Wire Wire Line
	9900 5050 10500 5050
$Comp
L Device:CP1_Small C5
U 1 1 5D53307C
P 9900 4250
F 0 "C5" H 9991 4296 50  0000 L CNN
F 1 "100uF" H 9991 4205 50  0000 L CNN
F 2 "" H 9900 4250 50  0001 C CNN
F 3 "~" H 9900 4250 50  0001 C CNN
	1    9900 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 3750 9900 3750
Wire Wire Line
	9200 5050 9900 5050
Wire Wire Line
	7500 3600 7500 5050
Wire Wire Line
	9050 3750 9050 4100
Wire Wire Line
	9700 3250 9700 3650
Wire Wire Line
	9700 3650 9700 3750
Connection ~ 9700 3650
$Comp
L power:+5V #PWR0113
U 1 1 5D5B3C67
P 1550 2950
F 0 "#PWR0113" H 1550 2800 50  0001 C CNN
F 1 "+5V" H 1565 3123 50  0000 C CNN
F 2 "" H 1550 2950 50  0001 C CNN
F 3 "" H 1550 2950 50  0001 C CNN
	1    1550 2950
	1    0    0    -1  
$EndComp
Connection ~ 1550 2950
Wire Wire Line
	10500 3750 10850 3750
Wire Wire Line
	10850 3750 10850 4350
Connection ~ 10500 3750
Wire Wire Line
	10850 4450 10850 5050
Wire Wire Line
	10850 5050 10500 5050
Connection ~ 10500 5050
$Comp
L Device:R_Small_US R14
U 1 1 5D5DBC0A
P 3450 1500
F 0 "R14" V 3245 1500 50  0000 C CNN
F 1 "1k" V 3336 1500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 3450 1500 50  0001 C CNN
F 3 "~" H 3450 1500 50  0001 C CNN
	1    3450 1500
	0    1    1    0   
$EndComp
$Comp
L Device:D_Zener_Small D3
U 1 1 5D5DCC75
P 3450 1250
F 0 "D3" H 3450 1455 50  0000 C CNN
F 1 "6V" H 3450 1364 50  0000 C CNN
F 2 "" V 3450 1250 50  0001 C CNN
F 3 "~" V 3450 1250 50  0001 C CNN
	1    3450 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 1250 3050 1250
Wire Wire Line
	3050 1250 3050 1500
Wire Wire Line
	3350 1500 3050 1500
$Comp
L Amplifier_Operational:MCP6001-OT U10
U 1 1 5D5E94BA
P 7750 5750
F 0 "U10" H 7950 6100 50  0000 C CNN
F 1 "MCP6001-OT" H 7950 6000 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 7650 5550 50  0001 L CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21733j.pdf" H 7750 5950 50  0001 C CNN
	1    7750 5750
	-1   0    0    -1  
$EndComp
Text Label 8050 5650 0    50   ~ 0
V_negative_out
$Comp
L power:GND #PWR0114
U 1 1 5D5F3197
P 7850 6050
F 0 "#PWR0114" H 7850 5800 50  0001 C CNN
F 1 "GND" H 7855 5877 50  0000 C CNN
F 2 "" H 7850 6050 50  0001 C CNN
F 3 "" H 7850 6050 50  0001 C CNN
	1    7850 6050
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0116
U 1 1 5D5F3980
P 7850 5450
F 0 "#PWR0116" H 7850 5300 50  0001 C CNN
F 1 "+3.3V" H 7865 5623 50  0000 C CNN
F 2 "" H 7850 5450 50  0001 C CNN
F 3 "" H 7850 5450 50  0001 C CNN
	1    7850 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 5050 9200 5050
$Comp
L Device:R_Small_US R15
U 1 1 5D5F6DCC
P 7100 5850
F 0 "R15" H 7168 5896 50  0000 L CNN
F 1 "10k" H 7168 5805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 7100 5850 50  0001 C CNN
F 3 "~" H 7100 5850 50  0001 C CNN
	1    7100 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R16
U 1 1 5D5F7B68
P 7100 6300
F 0 "R16" H 7168 6346 50  0000 L CNN
F 1 "100" H 7168 6255 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 7100 6300 50  0001 C CNN
F 3 "~" H 7100 6300 50  0001 C CNN
	1    7100 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 6200 8150 6200
Wire Wire Line
	8150 6200 8150 5850
Wire Wire Line
	8150 5850 8050 5850
Wire Wire Line
	7100 5950 7100 6200
Connection ~ 7100 6200
Wire Wire Line
	7100 5750 7450 5750
Text Label 7450 5750 2    50   ~ 0
V_current_amplified
$Comp
L power:GND #PWR0118
U 1 1 5D600E2F
P 7100 6400
F 0 "#PWR0118" H 7100 6150 50  0001 C CNN
F 1 "GND" H 7105 6227 50  0000 C CNN
F 2 "" H 7100 6400 50  0001 C CNN
F 3 "" H 7100 6400 50  0001 C CNN
	1    7100 6400
	1    0    0    -1  
$EndComp
Text Label 3000 4450 0    50   ~ 0
V_current_amplified
Text Label 3000 5650 0    50   ~ 0
V_positive_out
Text Label 6800 4250 0    50   ~ 0
SDA
$Comp
L Device:R_Small_US R104
U 1 1 5D5342E8
P 6600 4150
F 0 "R104" H 6668 4196 50  0000 L CNN
F 1 "4.7k" H 6650 4300 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 6600 4150 50  0001 C CNN
F 3 "~" H 6600 4150 50  0001 C CNN
	1    6600 4150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4800 4050 5000 4050
Wire Wire Line
	5000 4050 5000 4250
Wire Wire Line
	5000 4350 4800 4350
Wire Wire Line
	5350 4250 5000 4250
Connection ~ 5000 4250
Wire Wire Line
	5000 4250 5000 4350
Wire Wire Line
	4800 4600 5000 4600
Wire Wire Line
	5000 4600 5000 4650
Wire Wire Line
	5000 4850 4800 4850
Wire Wire Line
	5350 4650 5000 4650
Connection ~ 5000 4650
Wire Wire Line
	5000 4650 5000 4850
$Comp
L power:+3.3V #PWR0120
U 1 1 5D64F711
P 6600 4050
F 0 "#PWR0120" H 6600 3900 50  0001 C CNN
F 1 "+3.3V" H 6615 4223 50  0000 C CNN
F 2 "" H 6600 4050 50  0001 C CNN
F 3 "" H 6600 4050 50  0001 C CNN
	1    6600 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 4250 6600 4250
Wire Wire Line
	6600 4250 6800 4250
Connection ~ 6600 4250
Text Label 3000 6050 0    50   ~ 0
SCK
$Comp
L Device:R_Small_US R105
U 1 1 5D5363F7
P 6600 4550
F 0 "R105" H 6350 4650 50  0000 L CNN
F 1 "4.7k" H 6350 4550 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 6600 4550 50  0001 C CNN
F 3 "~" H 6600 4550 50  0001 C CNN
	1    6600 4550
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR04
U 1 1 5D5363F1
P 6600 4450
F 0 "#PWR04" H 6600 4300 50  0001 C CNN
F 1 "+3.3V" H 6600 4600 50  0000 C CNN
F 2 "" H 6600 4450 50  0001 C CNN
F 3 "" H 6600 4450 50  0001 C CNN
	1    6600 4450
	1    0    0    -1  
$EndComp
Text Label 6800 4700 0    50   ~ 0
SCK
Wire Wire Line
	6250 4650 6600 4650
Wire Wire Line
	6600 4650 6800 4650
Connection ~ 6600 4650
Text Label 3000 5450 0    50   ~ 0
right
Wire Wire Line
	3550 1250 3850 1250
Wire Wire Line
	3550 1500 3850 1500
Wire Wire Line
	3850 1500 3850 1250
Connection ~ 3850 1250
$Comp
L Connector_Generic:Conn_01x02 U8
U 1 1 5D4A34EF
P 10650 4450
F 0 "U8" H 10550 3850 50  0000 L CNN
F 1 "1x2" H 10550 3950 50  0000 L CNN
F 2 "" H 10650 4600 50  0001 C CNN
F 3 "" H 10650 4600 50  0001 C CNN
	1    10650 4450
	-1   0    0    1   
$EndComp
Wire Wire Line
	3000 4250 3450 4250
$EndSCHEMATC
