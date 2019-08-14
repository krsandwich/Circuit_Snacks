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
L Connector:USB_B_Micro J101
U 1 1 5D3004BA
P 1050 1250
F 0 "J101" H 1107 1717 50  0000 C CNN
F 1 "USB_B_Micro" H 1107 1626 50  0000 C CNN
F 2 "powersupply:USB_Micro-B_Amphenol_10118194-0001LF_Horizontal" H 1200 1200 50  0001 C CNN
F 3 "~" H 1200 1200 50  0001 C CNN
	1    1050 1250
	1    0    0    -1  
$EndComp
NoConn ~ 1350 1250
NoConn ~ 1350 1350
NoConn ~ 1350 1450
$Comp
L powersupply:RFM-0505S U1
U 1 1 5D303F43
P 2650 700
F 0 "U1" H 2650 625 50  0000 C CNN
F 1 "B0505S-2WR2" H 2650 534 50  0000 C CNN
F 2 "powersupply:B0505S-2WR2-Isolator" H 2650 700 50  0001 C CNN
F 3 "" H 2650 700 50  0001 C CNN
	1    2650 700 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5D30523C
P 2900 1450
F 0 "#PWR0101" H 2900 1200 50  0001 C CNN
F 1 "GND" H 2900 1300 50  0000 C CNN
F 2 "" H 2900 1450 50  0001 C CNN
F 3 "" H 2900 1450 50  0001 C CNN
	1    2900 1450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0102
U 1 1 5D305F94
P 3200 950
F 0 "#PWR0102" H 3200 800 50  0001 C CNN
F 1 "+5V" H 3215 1123 50  0000 C CNN
F 2 "" H 3200 950 50  0001 C CNN
F 3 "" H 3200 950 50  0001 C CNN
	1    3200 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  1650 1050 1650
NoConn ~ 19450 10300
NoConn ~ 25200 10700
$Comp
L powersupply:ATSAMD10D13A-SS U102
U 1 1 5D47B7D4
P 1950 3400
F 0 "U102" H 1000 3100 50  0000 C CNN
F 1 "ATSAMD10D13A-SS" H 950 2950 50  0000 C CNN
F 2 "Package_SO:SOIC-20W_7.5x12.8mm_P1.27mm" H 1950 2250 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-42242-SAM-D10_Datasheet.pdf" H 1950 2500 50  0001 C CNN
	1    1950 3400
	1    0    0    -1  
$EndComp
$Comp
L powersupply:LM358P U3
U 1 1 5D4A8FA5
P 8400 4000
F 0 "U3" H 8375 4115 50  0000 C CNN
F 1 "LM358P" H 8375 4024 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 8400 4000 50  0001 C CNN
F 3 "" H 8400 4000 50  0001 C CNN
	1    8400 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 3750 8050 4150
$Comp
L power:GND #PWR0115
U 1 1 5D46746E
P 8050 4600
F 0 "#PWR0115" H 8050 4350 50  0001 C CNN
F 1 "GND" H 8055 4427 50  0000 C CNN
F 2 "" H 8050 4600 50  0001 C CNN
F 3 "" H 8050 4600 50  0001 C CNN
	1    8050 4600
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0117
U 1 1 5D4CB251
P 1850 2850
F 0 "#PWR0117" H 1850 2700 50  0001 C CNN
F 1 "+3.3V" H 1865 3023 50  0000 C CNN
F 2 "" H 1850 2850 50  0001 C CNN
F 3 "" H 1850 2850 50  0001 C CNN
	1    1850 2850
	1    0    0    -1  
$EndComp
Text Label 2350 3000 0    50   ~ 0
V_boost_ctrl
Text Label 2350 4800 0    50   ~ 0
SDA
Text Label 9700 3550 0    50   ~ 0
Boost_out
Text Label 1350 3400 2    50   ~ 0
SWCLK
$Comp
L power:+3.3V #PWR0119
U 1 1 5D4C59D0
P 1250 2900
F 0 "#PWR0119" H 1250 2750 50  0001 C CNN
F 1 "+3.3V" H 1265 3073 50  0000 C CNN
F 2 "" H 1250 2900 50  0001 C CNN
F 3 "" H 1250 2900 50  0001 C CNN
	1    1250 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 3750 9400 3750
Wire Wire Line
	9200 3750 9200 4300
$Comp
L Device:Q_PMOS_GDS Q1
U 1 1 5D4B2BFF
P 9600 3750
F 0 "Q1" H 9806 3704 50  0000 L CNN
F 1 "Q_PMOS_GDS" H 9806 3795 50  0000 L CNN
F 2 "powersupply:IRF9540N-PMOS" H 9800 3850 50  0001 C CNN
F 3 "~" H 9600 3750 50  0001 C CNN
	1    9600 3750
	1    0    0    1   
$EndComp
Wire Wire Line
	2800 5200 3000 5200
Wire Wire Line
	3000 5200 3000 5350
$Comp
L power:GND #PWR0126
U 1 1 5D67264E
P 1800 5550
F 0 "#PWR0126" H 1800 5300 50  0001 C CNN
F 1 "GND" H 1805 5377 50  0000 C CNN
F 2 "" H 1800 5550 50  0001 C CNN
F 3 "" H 1800 5550 50  0001 C CNN
	1    1800 5550
	1    0    0    -1  
$EndComp
Text Label 1350 3600 2    50   ~ 0
SWDIO
Text Label 2750 2000 2    50   ~ 0
SWCLK
Text Label 2750 2200 2    50   ~ 0
SWDIO
$Comp
L powersupply:joystick-K1-1506DN-01 SW2
U 1 1 5D4C0110
P 5150 1950
F 0 "SW2" H 5150 1950 50  0000 C CNN
F 1 "joystick-K1-1506DN-01" H 5200 1850 50  0000 C CNN
F 2 "powersupply:directional_switch_10mm" H 5150 1950 50  0001 C CNN
F 3 "" H 5150 1950 50  0001 C CNN
	1    5150 1950
	1    0    0    -1  
$EndComp
Text Label 2350 3800 0    50   ~ 0
center
Text Label 2350 4000 0    50   ~ 0
left
Text Label 2350 4200 0    50   ~ 0
down
Text Label 2350 3600 0    50   ~ 0
right
Text Label 4700 2250 2    50   ~ 0
up
Text Label 4700 2400 2    50   ~ 0
left
Text Label 5600 2250 0    50   ~ 0
center
Text Label 5600 2400 0    50   ~ 0
right
$Comp
L power:GND #PWR0135
U 1 1 5D56FC0C
P 5750 2550
F 0 "#PWR0135" H 5750 2300 50  0001 C CNN
F 1 "GND" H 5755 2377 50  0000 C CNN
F 2 "" H 5750 2550 50  0001 C CNN
F 3 "" H 5750 2550 50  0001 C CNN
	1    5750 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 2550 5750 2550
Text Label 8700 4450 0    50   ~ 0
V_lin_ctrl
$Comp
L Device:R_Small_US R103
U 1 1 5D4A83DB
P 1250 3000
F 0 "R103" H 1150 3100 50  0000 C CNN
F 1 "4.99k" H 1136 3000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 1250 3000 50  0001 C CNN
F 3 "~" H 1250 3000 50  0001 C CNN
	1    1250 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 3100 1250 3200
$Comp
L power:GND #PWR01
U 1 1 5D4BEC50
P 2400 2100
F 0 "#PWR01" H 2400 1850 50  0001 C CNN
F 1 "GND" H 2405 1927 50  0000 C CNN
F 2 "" H 2400 2100 50  0001 C CNN
F 3 "" H 2400 2100 50  0001 C CNN
	1    2400 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R119
U 1 1 5D4B4E12
P 8950 4300
F 0 "R119" V 8850 4200 50  0000 L CNN
F 1 "3k" V 8850 4400 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 8950 4300 50  0001 C CNN
F 3 "~" H 8950 4300 50  0001 C CNN
	1    8950 4300
	0    1    1    0   
$EndComp
Text Label 8700 4150 0    50   ~ 0
Boost_out
$Comp
L Connector_Generic:Conn_01x03 J1
U 1 1 5D4EFDE3
P 2950 2100
F 0 "J1" H 3030 2142 50  0000 L CNN
F 1 "Conn_01x03" H 3030 2051 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 2950 2100 50  0001 C CNN
F 3 "~" H 2950 2100 50  0001 C CNN
	1    2950 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 2100 2750 2100
Wire Wire Line
	9050 4300 9200 4300
Wire Wire Line
	8850 4300 8700 4300
$Comp
L Device:R_Small_US R118
U 1 1 5D4C0D0A
P 8450 5200
F 0 "R118" H 8518 5246 50  0000 L CNN
F 1 "130k" H 8518 5155 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 8450 5200 50  0001 C CNN
F 3 "~" H 8450 5200 50  0001 C CNN
	1    8450 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R117
U 1 1 5D4C174A
P 8900 5300
F 0 "R117" V 9100 5300 50  0000 C CNN
F 1 "100" V 9000 5300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 8900 5300 50  0001 C CNN
F 3 "~" H 8900 5300 50  0001 C CNN
	1    8900 5300
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR0110
U 1 1 5D4CFECE
P 8450 5100
F 0 "#PWR0110" H 8450 4950 50  0001 C CNN
F 1 "+3.3V" H 8465 5273 50  0000 C CNN
F 2 "" H 8450 5100 50  0001 C CNN
F 3 "" H 8450 5100 50  0001 C CNN
	1    8450 5100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R116
U 1 1 5D4D044A
P 9400 4350
F 0 "R116" H 9468 4396 50  0000 L CNN
F 1 "2.32k" H 9468 4305 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 9400 4350 50  0001 C CNN
F 3 "~" H 9400 4350 50  0001 C CNN
	1    9400 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R115
U 1 1 5D4D11A0
P 9400 4750
F 0 "R115" H 9468 4796 50  0000 L CNN
F 1 "1k" H 9468 4705 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 9400 4750 50  0001 C CNN
F 3 "~" H 9400 4750 50  0001 C CNN
	1    9400 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 4450 9400 4600
$Comp
L power:GND #PWR0111
U 1 1 5D4E2EE6
P 9400 4850
F 0 "#PWR0111" H 9400 4600 50  0001 C CNN
F 1 "GND" H 9405 4677 50  0000 C CNN
F 2 "" H 9400 4850 50  0001 C CNN
F 3 "" H 9400 4850 50  0001 C CNN
	1    9400 4850
	1    0    0    -1  
$EndComp
Connection ~ 9400 4600
Wire Wire Line
	9400 4600 9400 4650
$Comp
L Device:R_Small_US R1
U 1 1 5D4E54B6
P 9150 5400
F 0 "R1" H 9218 5446 50  0000 L CNN
F 1 "0.1" H 9218 5355 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 9150 5400 50  0001 C CNN
F 3 "~" H 9150 5400 50  0001 C CNN
	1    9150 5400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 5D4EA53D
P 9150 5500
F 0 "#PWR0112" H 9150 5250 50  0001 C CNN
F 1 "GND" H 9155 5327 50  0000 C CNN
F 2 "" H 9150 5500 50  0001 C CNN
F 3 "" H 9150 5500 50  0001 C CNN
	1    9150 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 4250 9900 4650
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 5D48A8A7
P 10300 4850
F 0 "J2" H 10250 4500 50  0000 L CNN
F 1 "1x2" H 10250 4600 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Horizontal" H 10300 5000 50  0001 C CNN
F 3 "" H 10300 5000 50  0001 C CNN
	1    10300 4850
	-1   0    0    -1  
$EndComp
Connection ~ 9900 4250
Text Label 10500 5300 2    50   ~ 0
V_negative_out
Text Label 10500 4250 2    50   ~ 0
V_positive_out
Wire Wire Line
	10500 4250 10500 4850
Wire Wire Line
	9900 4250 10500 4250
$Comp
L Device:CP1_Small C1
U 1 1 5D53307C
P 9900 4750
F 0 "C1" H 9991 4796 50  0000 L CNN
F 1 "100uF" H 9991 4705 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 9900 4750 50  0001 C CNN
F 3 "~" H 9900 4750 50  0001 C CNN
	1    9900 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	10500 4250 10850 4250
Wire Wire Line
	10850 4250 10850 4850
Connection ~ 10500 4250
$Comp
L power:+3.3V #PWR0116
U 1 1 5D5F3980
P 4750 5500
F 0 "#PWR0116" H 4750 5350 50  0001 C CNN
F 1 "+3.3V" H 4765 5673 50  0000 C CNN
F 2 "" H 4750 5500 50  0001 C CNN
F 3 "" H 4750 5500 50  0001 C CNN
	1    4750 5500
	1    0    0    -1  
$EndComp
Text Label 5600 5650 0    50   ~ 0
V_current_amplified
Text Label 2350 3400 0    50   ~ 0
V_current_amplified
Text Label 2800 4400 0    50   ~ 0
V_positive_out
Text Label 6000 3600 0    50   ~ 0
SDA
Text Label 2350 5000 0    50   ~ 0
SCK
Text Label 6000 4000 0    50   ~ 0
SCK
Text Label 2350 4400 0    50   ~ 0
up
$Comp
L Connector_Generic:Conn_01x02 J3
U 1 1 5D4A34EF
P 10650 4850
F 0 "J3" H 10600 4500 50  0000 L CNN
F 1 "1x2" H 10600 4600 50  0000 L CNN
F 2 "powersupply:Banana Sockets" H 10650 5000 50  0001 C CNN
F 3 "" H 10650 5000 50  0001 C CNN
	1    10650 4850
	-1   0    0    -1  
$EndComp
$Comp
L Device:D_Schottky_Small D3
U 1 1 5D4E566E
P 8400 3750
F 0 "D3" H 8400 3545 50  0000 C CNN
F 1 "1N5819" H 8400 3636 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P7.62mm_Horizontal" V 8400 3750 50  0001 C CNN
F 3 "~" V 8400 3750 50  0001 C CNN
	1    8400 3750
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint TP2
U 1 1 5D4B6929
P 2750 6900
F 0 "TP2" H 2692 6926 50  0000 R CNN
F 1 "+3.3" H 2692 7017 50  0000 R CNN
F 2 "Connector_PinHeader_1.00mm:PinHeader_1x01_P1.00mm_Vertical" H 2950 6900 50  0001 C CNN
F 3 "~" H 2950 6900 50  0001 C CNN
	1    2750 6900
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint TP1
U 1 1 5D4B73A5
P 3200 6900
F 0 "TP1" H 3142 6926 50  0000 R CNN
F 1 "+5_isolated" H 3142 7017 50  0000 R CNN
F 2 "Connector_PinHeader_1.00mm:PinHeader_1x01_P1.00mm_Vertical" H 3400 6900 50  0001 C CNN
F 3 "~" H 3400 6900 50  0001 C CNN
	1    3200 6900
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint TP6
U 1 1 5D4B7B24
P 5850 7200
F 0 "TP6" H 5908 7318 50  0000 L CNN
F 1 "Boost_out" H 5908 7227 50  0000 L CNN
F 2 "Connector_PinHeader_1.00mm:PinHeader_1x01_P1.00mm_Vertical" H 6050 7200 50  0001 C CNN
F 3 "~" H 6050 7200 50  0001 C CNN
	1    5850 7200
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP3
U 1 1 5D4B85BC
P 4800 6950
F 0 "TP3" H 4858 7068 50  0000 L CNN
F 1 "Current_limit" H 4858 6977 50  0000 L CNN
F 2 "Connector_PinHeader_1.00mm:PinHeader_1x01_P1.00mm_Vertical" H 5000 6950 50  0001 C CNN
F 3 "~" H 5000 6950 50  0001 C CNN
	1    4800 6950
	1    0    0    -1  
$EndComp
Text Label 9400 4600 0    50   ~ 0
Voltage_limit_divider
Text Label 4800 6950 2    50   ~ 0
Current_limit_divider
$Comp
L Connector:TestPoint TP5
U 1 1 5D4BBCE8
P 4800 7200
F 0 "TP5" H 4858 7318 50  0000 L CNN
F 1 "Voltage_limit" H 4858 7227 50  0000 L CNN
F 2 "Connector_PinHeader_1.00mm:PinHeader_1x01_P1.00mm_Vertical" H 5000 7200 50  0001 C CNN
F 3 "~" H 5000 7200 50  0001 C CNN
	1    4800 7200
	1    0    0    -1  
$EndComp
Text Label 4800 7200 2    50   ~ 0
Voltage_limit_divider
$Comp
L Connector:TestPoint TP4
U 1 1 5D4BF42E
P 5850 6950
F 0 "TP4" H 5908 7068 50  0000 L CNN
F 1 "Boost_c" H 5908 6977 50  0000 L CNN
F 2 "Connector_PinHeader_1.00mm:PinHeader_1x01_P1.00mm_Vertical" H 6050 6950 50  0001 C CNN
F 3 "~" H 6050 6950 50  0001 C CNN
	1    5850 6950
	1    0    0    -1  
$EndComp
Text Label 5850 6950 2    50   ~ 0
V_boost_ctrl
Text Label 5850 7200 2    50   ~ 0
Boost_out
$Comp
L Connector:TestPoint TP7
U 1 1 5D4C0DDA
P 2300 7150
F 0 "TP7" H 2358 7268 50  0000 L CNN
F 1 "GND" H 2358 7177 50  0000 L CNN
F 2 "Connector_PinHeader_1.00mm:PinHeader_1x01_P1.00mm_Vertical" H 2500 7150 50  0001 C CNN
F 3 "~" H 2500 7150 50  0001 C CNN
	1    2300 7150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0121
U 1 1 5D4C160D
P 2300 7150
F 0 "#PWR0121" H 2300 6900 50  0001 C CNN
F 1 "GND" H 2305 6977 50  0000 C CNN
F 2 "" H 2300 7150 50  0001 C CNN
F 3 "" H 2300 7150 50  0001 C CNN
	1    2300 7150
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0129
U 1 1 5D4CD74E
P 2750 6900
F 0 "#PWR0129" H 2750 6750 50  0001 C CNN
F 1 "+3.3V" H 2765 7073 50  0000 C CNN
F 2 "" H 2750 6900 50  0001 C CNN
F 3 "" H 2750 6900 50  0001 C CNN
	1    2750 6900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0130
U 1 1 5D4CDF6D
P 3200 6900
F 0 "#PWR0130" H 3200 6750 50  0001 C CNN
F 1 "+5V" H 3215 7073 50  0000 C CNN
F 2 "" H 3200 6900 50  0001 C CNN
F 3 "" H 3200 6900 50  0001 C CNN
	1    3200 6900
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 5D4CE857
P 850 6850
F 0 "H1" H 950 6896 50  0000 L CNN
F 1 "M4" H 950 6805 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 850 6850 50  0001 C CNN
F 3 "~" H 850 6850 50  0001 C CNN
	1    850  6850
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5D4CF35E
P 1450 6850
F 0 "H2" H 1550 6896 50  0000 L CNN
F 1 "M4" H 1550 6805 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 1450 6850 50  0001 C CNN
F 3 "~" H 1450 6850 50  0001 C CNN
	1    1450 6850
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5D4CFB63
P 1450 7200
F 0 "H3" H 1550 7246 50  0000 L CNN
F 1 "M4" H 1550 7155 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 1450 7200 50  0001 C CNN
F 3 "~" H 1450 7200 50  0001 C CNN
	1    1450 7200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5D4D0374
P 850 7200
F 0 "H4" H 950 7246 50  0000 L CNN
F 1 "M4" H 950 7155 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 850 7200 50  0001 C CNN
F 3 "~" H 850 7200 50  0001 C CNN
	1    850  7200
	1    0    0    -1  
$EndComp
Connection ~ 2900 1450
$Comp
L power:GND #PWR08
U 1 1 5D56DFE0
P 5350 4450
F 0 "#PWR08" H 5350 4200 50  0001 C CNN
F 1 "GND" H 5500 4350 50  0000 C CNN
F 2 "" H 5350 4450 50  0001 C CNN
F 3 "" H 5350 4450 50  0001 C CNN
	1    5350 4450
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP8
U 1 1 5D58A893
P 4950 4400
F 0 "TP8" H 4892 4426 50  0001 R CNN
F 1 "pin_1_alt" H 5300 4450 50  0000 R CNN
F 2 "powersupply:pads" H 5150 4400 50  0001 C CNN
F 3 "~" H 5150 4400 50  0001 C CNN
	1    4950 4400
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small_US R112
U 1 1 5D61A8DD
P 2800 4500
F 0 "R112" H 2868 4546 50  0000 L CNN
F 1 "18.2k" H 2868 4455 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 2800 4500 50  0001 C CNN
F 3 "~" H 2800 4500 50  0001 C CNN
	1    2800 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R111
U 1 1 5D61B980
P 2800 4700
F 0 "R111" H 2868 4746 50  0000 L CNN
F 1 "4.99k" H 2868 4655 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 2800 4700 50  0001 C CNN
F 3 "~" H 2800 4700 50  0001 C CNN
	1    2800 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 4600 2800 4600
Connection ~ 2800 4600
$Comp
L power:GND #PWR03
U 1 1 5D629B9E
P 2800 4800
F 0 "#PWR03" H 2800 4550 50  0001 C CNN
F 1 "GND" H 2900 4700 50  0000 C CNN
F 2 "" H 2800 4800 50  0001 C CNN
F 3 "" H 2800 4800 50  0001 C CNN
	1    2800 4800
	1    0    0    -1  
$EndComp
$Comp
L powersupply:INA199 U10
U 1 1 5D650116
P 5250 5650
F 0 "U10" H 5225 6025 50  0000 C CNN
F 1 "INA199" H 5225 5934 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 5250 5950 50  0001 C CNN
F 3 "" H 5250 5950 50  0001 C CNN
	1    5250 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 5500 5600 5500
$Comp
L power:GND #PWR011
U 1 1 5D669F04
P 4750 5800
F 0 "#PWR011" H 4750 5550 50  0001 C CNN
F 1 "GND" H 4755 5627 50  0000 C CNN
F 2 "" H 4750 5800 50  0001 C CNN
F 3 "" H 4750 5800 50  0001 C CNN
	1    4750 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 5500 4850 5500
Wire Wire Line
	4850 5650 4750 5650
Wire Wire Line
	4750 5650 4750 5800
Wire Wire Line
	4750 5800 4850 5800
Connection ~ 4750 5800
$Comp
L Device:C_Small C105
U 1 1 5D675D51
P 4450 5500
F 0 "C105" V 4221 5500 50  0000 C CNN
F 1 ".1uF" V 4312 5500 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4450 5500 50  0001 C CNN
F 3 "~" H 4450 5500 50  0001 C CNN
	1    4450 5500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5D67B145
P 4250 5500
F 0 "#PWR010" H 4250 5250 50  0001 C CNN
F 1 "GND" H 4255 5327 50  0000 C CNN
F 2 "" H 4250 5500 50  0001 C CNN
F 3 "" H 4250 5500 50  0001 C CNN
	1    4250 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 5500 4350 5500
$Comp
L power:GND #PWR012
U 1 1 5D685EEC
P 5750 5800
F 0 "#PWR012" H 5750 5550 50  0001 C CNN
F 1 "GND" H 5755 5627 50  0000 C CNN
F 2 "" H 5750 5800 50  0001 C CNN
F 3 "" H 5750 5800 50  0001 C CNN
	1    5750 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 5800 5750 5800
Wire Wire Line
	1050 3200 1250 3200
Wire Wire Line
	1250 3200 1350 3200
Connection ~ 1250 3200
Connection ~ 8450 5300
Wire Wire Line
	8450 5300 8800 5300
Wire Wire Line
	7950 5300 8450 5300
Wire Wire Line
	10500 4950 10500 5300
Connection ~ 10500 5300
Wire Wire Line
	10500 5300 10850 5300
Wire Wire Line
	9900 4850 9900 5300
Connection ~ 9900 5300
Wire Wire Line
	9900 5300 10500 5300
Text Label 5650 5500 0    50   ~ 0
V_negative_out
Wire Wire Line
	9000 5300 9150 5300
Wire Wire Line
	7950 4450 8050 4450
Wire Wire Line
	8050 3750 8300 3750
Wire Wire Line
	8500 3750 9200 3750
Wire Wire Line
	10850 4950 10850 5300
Wire Wire Line
	2900 1450 3200 1450
$Comp
L Device:R_Small_US R101
U 1 1 5D5DBC0A
P 3200 1350
F 0 "R101" V 3000 1350 50  0000 C CNN
F 1 "150" V 3086 1350 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 3200 1350 50  0001 C CNN
F 3 "~" H 3200 1350 50  0001 C CNN
	1    3200 1350
	-1   0    0    1   
$EndComp
Connection ~ 3200 1450
$Comp
L Device:LED D1
U 1 1 5D62BB53
P 3950 1300
F 0 "D1" V 3989 1182 50  0000 R CNN
F 1 "C503B 2.1V" V 3898 1182 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 3950 1300 50  0001 C CNN
F 3 "~" H 3950 1300 50  0001 C CNN
	1    3950 1300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3200 1450 3550 1450
$Comp
L Device:D_Zener_Small D101
U 1 1 5D4FADCE
P 3550 1350
F 0 "D101" V 3500 1500 50  0000 C CNN
F 1 "6V" V 3600 1450 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-323" V 3550 1350 50  0001 C CNN
F 3 "~" V 3550 1350 50  0001 C CNN
	1    3550 1350
	0    1    1    0   
$EndComp
Wire Wire Line
	2900 1300 2950 1300
Wire Wire Line
	2950 1300 2950 950 
Wire Wire Line
	2950 950  3200 950 
Wire Wire Line
	3200 950  3200 1250
Connection ~ 3200 950 
Wire Wire Line
	3200 950  3550 950 
Wire Wire Line
	3550 950  3550 1250
Wire Wire Line
	3550 1450 3950 1450
Connection ~ 3550 1450
Wire Wire Line
	3550 950  3950 950 
Connection ~ 3550 950 
Text Label 1350 1050 0    50   ~ 0
USB_5V
Text Label 2400 1000 2    50   ~ 0
USB_5V
Text Label 1050 1650 0    50   ~ 0
USB_GND
Text Label 2400 1150 2    50   ~ 0
USB_GND
Connection ~ 9200 3750
Wire Wire Line
	9400 4250 9700 4250
Wire Wire Line
	8700 4600 9400 4600
Wire Wire Line
	7950 4450 7950 5300
Wire Wire Line
	9700 3950 9700 4250
Connection ~ 9700 4250
Wire Wire Line
	9700 4250 9900 4250
$Comp
L Device:R_Small_US R2
U 1 1 5D62CB9E
P 3950 1050
F 0 "R2" H 4018 1096 50  0000 L CNN
F 1 "580" H 4018 1005 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 3950 1050 50  0001 C CNN
F 3 "~" H 3950 1050 50  0001 C CNN
	1    3950 1050
	1    0    0    -1  
$EndComp
NoConn ~ 2350 3200
NoConn ~ 1350 3850
NoConn ~ 1350 4050
$Comp
L Switch:SW_Push SW1
U 1 1 5D56B4FE
P 850 3200
F 0 "SW1" H 850 3500 50  0000 C CNN
F 1 "KMR2" H 850 3400 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_Push_1P1T_NO_CK_KMR2" H 850 3250 50  0001 C CNN
F 3 "" H 850 3250 50  0001 C CNN
	1    850  3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0125
U 1 1 5D66A6FB
P 650 3200
F 0 "#PWR0125" H 650 2950 50  0001 C CNN
F 1 "GND" H 655 3027 50  0000 C CNN
F 2 "" H 650 3200 50  0001 C CNN
F 3 "" H 650 3200 50  0001 C CNN
	1    650  3200
	1    0    0    -1  
$EndComp
Text Label 4700 2550 2    50   ~ 0
down
$Comp
L power:GND #PWR0128
U 1 1 5D673BAE
P 3000 5550
F 0 "#PWR0128" H 3000 5300 50  0001 C CNN
F 1 "GND" H 3005 5377 50  0000 C CNN
F 2 "" H 3000 5550 50  0001 C CNN
F 3 "" H 3000 5550 50  0001 C CNN
	1    3000 5550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C103
U 1 1 5D5092B9
P 3000 5450
F 0 "C103" H 3092 5496 50  0000 L CNN
F 1 "15uF" H 3092 5405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3000 5450 50  0001 C CNN
F 3 "~" H 3000 5450 50  0001 C CNN
	1    3000 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R104
U 1 1 5D4F946F
P 2700 5200
F 0 "R104" V 2495 5200 50  0000 C CNN
F 1 "1k" V 2586 5200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 2700 5200 50  0001 C CNN
F 3 "~" H 2700 5200 50  0001 C CNN
	1    2700 5200
	0    1    1    0   
$EndComp
Wire Wire Line
	2350 5200 2600 5200
Text Label 2550 5400 0    50   ~ 0
V_curr_lim
$Comp
L Device:C_Small C104
U 1 1 5D502474
P 2550 5800
F 0 "C104" H 2642 5846 50  0000 L CNN
F 1 "15uF" H 2642 5755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2550 5800 50  0001 C CNN
F 3 "~" H 2550 5800 50  0001 C CNN
	1    2550 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 5400 2550 5700
$Comp
L power:GND #PWR0127
U 1 1 5D673041
P 2550 5900
F 0 "#PWR0127" H 2550 5650 50  0001 C CNN
F 1 "GND" H 2555 5727 50  0000 C CNN
F 2 "" H 2550 5900 50  0001 C CNN
F 3 "" H 2550 5900 50  0001 C CNN
	1    2550 5900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R105
U 1 1 5D4FAA70
P 2450 5400
F 0 "R105" V 2550 5400 50  0000 C CNN
F 1 "1k" V 2650 5400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 2450 5400 50  0001 C CNN
F 3 "~" H 2450 5400 50  0001 C CNN
	1    2450 5400
	0    1    1    0   
$EndComp
Text Label 3000 5200 0    50   ~ 0
V_lin_ctrl
Wire Wire Line
	4550 5500 4750 5500
Connection ~ 4750 5500
Wire Notes Line
	450  1850 6900 1850
$Comp
L Device:R_Small_US R3
U 1 1 5D45B2AA
P 7950 1500
F 0 "R3" H 8018 1546 50  0000 L CNN
F 1 "0.3 1/4W" H 8018 1455 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 7950 1500 50  0001 C CNN
F 3 "~" H 7950 1500 50  0001 C CNN
	1    7950 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 2250 7850 2250
Wire Wire Line
	8800 750  7950 750 
Wire Wire Line
	10000 750  9000 750 
Wire Wire Line
	10000 1150 10000 750 
$Comp
L Connector:TestPoint TP13
U 1 1 5D5A2114
P 4400 4000
F 0 "TP13" H 4342 4026 50  0001 R CNN
F 1 "pin_2_pad_alt" H 4342 4117 50  0001 R CNN
F 2 "powersupply:pads" H 4600 4000 50  0001 C CNN
F 3 "~" H 4600 4000 50  0001 C CNN
	1    4400 4000
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint TP12
U 1 1 5D59450B
P 4400 3600
F 0 "TP12" H 4458 3718 50  0001 L CNN
F 1 "Pad1_default" H 4150 3850 50  0001 L CNN
F 2 "powersupply:pads" H 4600 3600 50  0001 C CNN
F 3 "~" H 4600 3600 50  0001 C CNN
	1    4400 3600
	1    0    0    -1  
$EndComp
Connection ~ 4400 3600
$Comp
L power:GND #PWR06
U 1 1 5D56D783
P 4400 3600
F 0 "#PWR06" H 4400 3350 50  0001 C CNN
F 1 "GND" H 4250 3500 50  0000 C CNN
F 2 "" H 4400 3600 50  0001 C CNN
F 3 "" H 4400 3600 50  0001 C CNN
	1    4400 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 3600 4400 3600
Wire Wire Line
	4700 3600 4650 3600
Connection ~ 4650 3600
$Comp
L Connector:TestPoint TP9
U 1 1 5D59F280
P 4650 3600
F 0 "TP9" H 4708 3718 50  0001 L CNN
F 1 "pad_1" H 4450 3550 50  0000 L CNN
F 2 "powersupply:pads" H 4850 3600 50  0001 C CNN
F 3 "~" H 4850 3600 50  0001 C CNN
	1    4650 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 4000 4400 4000
Wire Wire Line
	4700 4000 4650 4000
Connection ~ 4650 4000
$Comp
L Connector:TestPoint TP10
U 1 1 5D5A6880
P 4650 4000
F 0 "TP10" H 4592 4026 50  0001 R CNN
F 1 "pad_2" H 4850 3950 50  0000 R CNN
F 2 "powersupply:pads" H 4850 4000 50  0001 C CNN
F 3 "~" H 4850 4000 50  0001 C CNN
	1    4650 4000
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint TP11
U 1 1 5D59533A
P 5350 4450
F 0 "TP11" H 5408 4568 50  0001 L CNN
F 1 "pin_2_alt" H 5408 4477 50  0000 L CNN
F 2 "powersupply:pads" H 5550 4450 50  0001 C CNN
F 3 "~" H 5550 4450 50  0001 C CNN
	1    5350 4450
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR05
U 1 1 5D56E643
P 4950 4400
F 0 "#PWR05" H 4950 4250 50  0001 C CNN
F 1 "+3.3V" H 4800 4450 50  0000 C CNN
F 2 "" H 4950 4400 50  0001 C CNN
F 3 "" H 4950 4400 50  0001 C CNN
	1    4950 4400
	1    0    0    -1  
$EndComp
Connection ~ 4400 4000
$Comp
L power:+3.3V #PWR07
U 1 1 5D56EC9F
P 4400 4000
F 0 "#PWR07" H 4400 3850 50  0001 C CNN
F 1 "+3.3V" H 4250 4050 50  0000 C CNN
F 2 "" H 4400 4000 50  0001 C CNN
F 3 "" H 4400 4000 50  0001 C CNN
	1    4400 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Schottky_Small D2
U 1 1 5D4EED9B
P 10000 1450
F 0 "D2" V 10046 1382 50  0000 R CNN
F 1 "1N5819" V 9955 1382 50  0000 R CNN
F 2 "Diode_THT:D_DO-41_SOD81_P7.62mm_Horizontal" V 10000 1450 50  0001 C CNN
F 3 "~" V 10000 1450 50  0001 C CNN
	1    10000 1450
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C3
U 1 1 5D4C7F8E
P 9850 1750
F 0 "C3" H 9700 1800 50  0000 L CNN
F 1 "270pF" H 9450 1700 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 9850 1750 50  0001 C CNN
F 3 "~" H 9850 1750 50  0001 C CNN
	1    9850 1750
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR04
U 1 1 5D5363F1
P 5700 3800
F 0 "#PWR04" H 5700 3650 50  0001 C CNN
F 1 "+3.3V" H 5700 3950 50  0000 C CNN
F 2 "" H 5700 3800 50  0001 C CNN
F 3 "" H 5700 3800 50  0001 C CNN
	1    5700 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 4000 6000 4000
Wire Wire Line
	5600 4000 5700 4000
Connection ~ 5700 4000
$Comp
L Device:R_Small_US R109
U 1 1 5D5363F7
P 5700 3900
F 0 "R109" H 5750 3950 50  0000 L CNN
F 1 "4.99k" H 5750 3850 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 5700 3900 50  0001 C CNN
F 3 "~" H 5700 3900 50  0001 C CNN
	1    5700 3900
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0120
U 1 1 5D64F711
P 5700 3400
F 0 "#PWR0120" H 5700 3250 50  0001 C CNN
F 1 "+3.3V" H 5715 3573 50  0000 C CNN
F 2 "" H 5700 3400 50  0001 C CNN
F 3 "" H 5700 3400 50  0001 C CNN
	1    5700 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 3600 6000 3600
Wire Wire Line
	5600 3600 5700 3600
Connection ~ 5700 3600
$Comp
L Device:R_Small_US R110
U 1 1 5D5342E8
P 5700 3500
F 0 "R110" H 5450 3550 50  0000 L CNN
F 1 "4.99k" H 5450 3450 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 5700 3500 50  0001 C CNN
F 3 "~" H 5700 3500 50  0001 C CNN
	1    5700 3500
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0113
U 1 1 5D5B3C67
P 5000 1050
F 0 "#PWR0113" H 5000 900 50  0001 C CNN
F 1 "+5V" H 5015 1223 50  0000 C CNN
F 2 "" H 5000 1050 50  0001 C CNN
F 3 "" H 5000 1050 50  0001 C CNN
	1    5000 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5D575CAF
P 10200 2450
F 0 "#PWR09" H 10200 2200 50  0001 C CNN
F 1 "GND" H 10205 2277 50  0000 C CNN
F 2 "" H 10200 2450 50  0001 C CNN
F 3 "" H 10200 2450 50  0001 C CNN
	1    10200 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1_Small C2
U 1 1 5D5744DC
P 10200 2350
F 0 "C2" H 10291 2396 50  0000 L CNN
F 1 "100uF" H 10291 2305 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 10200 2350 50  0001 C CNN
F 3 "~" H 10200 2350 50  0001 C CNN
	1    10200 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:L_Small L2
U 1 1 5D572C97
P 10100 2250
F 0 "L2" V 10285 2250 50  0000 C CNN
F 1 "1uH" V 10194 2250 50  0000 C CNN
F 2 "powersupply:11R102C_Inductor" H 10100 2250 50  0001 C CNN
F 3 "~" H 10100 2250 50  0001 C CNN
	1    10100 2250
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5D4E8530
P 5600 1350
F 0 "#PWR02" H 5600 1100 50  0001 C CNN
F 1 "GND" H 5605 1177 50  0000 C CNN
F 2 "" H 5600 1350 50  0001 C CNN
F 3 "" H 5600 1350 50  0001 C CNN
	1    5600 1350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0138
U 1 1 5D5B38BD
P 7750 1650
F 0 "#PWR0138" H 7750 1500 50  0001 C CNN
F 1 "+5V" H 7765 1823 50  0000 C CNN
F 2 "" H 7750 1650 50  0001 C CNN
F 3 "" H 7750 1650 50  0001 C CNN
	1    7750 1650
	-1   0    0    -1  
$EndComp
Text Label 7650 2250 2    50   ~ 0
V_boost_ctrl
$Comp
L Device:R_Small_US R107
U 1 1 5D46A6EF
P 8250 2350
F 0 "R107" H 8318 2396 50  0000 L CNN
F 1 "3.6k" H 8318 2305 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 8250 2350 50  0001 C CNN
F 3 "~" H 8250 2350 50  0001 C CNN
	1    8250 2350
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0122
U 1 1 5D46D6B4
P 8250 2450
F 0 "#PWR0122" H 8250 2200 50  0001 C CNN
F 1 "GND" H 8255 2277 50  0000 C CNN
F 2 "" H 8250 2450 50  0001 C CNN
F 3 "" H 8250 2450 50  0001 C CNN
	1    8250 2450
	-1   0    0    -1  
$EndComp
Connection ~ 8250 2250
Wire Wire Line
	8550 2250 8250 2250
Wire Wire Line
	8250 2250 8250 1900
$Comp
L Device:L_Small L1
U 1 1 5D4B1E6E
P 8900 750
F 0 "L1" V 8719 750 50  0000 C CNN
F 1 "47uH" V 8810 750 50  0000 C CNN
F 2 "Inductor_THT:L_Radial_D8.7mm_P5.00mm_Fastron_07HCP" H 8900 750 50  0001 C CNN
F 3 "~" H 8900 750 50  0001 C CNN
	1    8900 750 
	0    -1   1    0   
$EndComp
$Comp
L Device:R_Small_US R106
U 1 1 5D49225A
P 7750 2250
F 0 "R106" V 7545 2250 50  0000 C CNN
F 1 "3.17k" V 7636 2250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 7750 2250 50  0001 C CNN
F 3 "~" H 7750 2250 50  0001 C CNN
	1    7750 2250
	0    -1   1    0   
$EndComp
Text Label 10200 2250 0    50   ~ 0
Boost_out
$Comp
L power:GND #PWR0107
U 1 1 5D477589
P 9850 1850
F 0 "#PWR0107" H 9850 1600 50  0001 C CNN
F 1 "GND" H 9855 1677 50  0000 C CNN
F 2 "" H 9850 1850 50  0001 C CNN
F 3 "" H 9850 1850 50  0001 C CNN
	1    9850 1850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9850 1650 9450 1650
Wire Wire Line
	9600 1900 9450 1900
$Comp
L power:GND #PWR0106
U 1 1 5D474282
P 9600 1900
F 0 "#PWR0106" H 9600 1650 50  0001 C CNN
F 1 "GND" H 9605 1727 50  0000 C CNN
F 2 "" H 9600 1900 50  0001 C CNN
F 3 "" H 9600 1900 50  0001 C CNN
	1    9600 1900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9600 1400 9450 1400
$Comp
L power:GND #PWR0105
U 1 1 5D47314D
P 9600 1400
F 0 "#PWR0105" H 9600 1150 50  0001 C CNN
F 1 "GND" H 9605 1227 50  0000 C CNN
F 2 "" H 9600 1400 50  0001 C CNN
F 3 "" H 9600 1400 50  0001 C CNN
	1    9600 1400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10000 1150 9450 1150
Connection ~ 10000 1150
Wire Wire Line
	10000 1350 10000 1150
Connection ~ 10000 2250
Wire Wire Line
	10000 1550 10000 2250
$Comp
L power:GND #PWR0104
U 1 1 5D46F50F
P 9250 2450
F 0 "#PWR0104" H 9250 2200 50  0001 C CNN
F 1 "GND" H 9255 2277 50  0000 C CNN
F 2 "" H 9250 2450 50  0001 C CNN
F 3 "" H 9250 2450 50  0001 C CNN
	1    9250 2450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9250 2250 10000 2250
Wire Wire Line
	8750 2250 9250 2250
Connection ~ 9250 2250
$Comp
L Device:CP1_Small C5
U 1 1 5D46EC73
P 9250 2350
F 0 "C5" H 9341 2396 50  0000 L CNN
F 1 "470uF" H 9341 2305 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 9250 2350 50  0001 C CNN
F 3 "~" H 9250 2350 50  0001 C CNN
	1    9250 2350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8250 1900 8400 1900
$Comp
L Device:R_Small_US R108
U 1 1 5D46B727
P 8650 2250
F 0 "R108" V 8445 2250 50  0000 C CNN
F 1 "5.5k" V 8536 2250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 8650 2250 50  0001 C CNN
F 3 "~" H 8650 2250 50  0001 C CNN
	1    8650 2250
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5D45D872
P 7950 1850
F 0 "#PWR0103" H 7950 1600 50  0001 C CNN
F 1 "GND" H 7955 1677 50  0000 C CNN
F 2 "" H 7950 1850 50  0001 C CNN
F 3 "" H 7950 1850 50  0001 C CNN
	1    7950 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 1650 7750 1650
Wire Wire Line
	8400 1650 7950 1650
Connection ~ 7950 1650
Wire Wire Line
	7950 1600 7950 1650
$Comp
L Device:CP1_Small C4
U 1 1 5D45B91C
P 7950 1750
F 0 "C4" H 7700 1800 50  0000 L CNN
F 1 "470uF" H 7600 1700 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 7950 1750 50  0001 C CNN
F 3 "~" H 7950 1750 50  0001 C CNN
	1    7950 1750
	1    0    0    -1  
$EndComp
Connection ~ 7950 1400
Wire Wire Line
	7950 1400 8400 1400
Wire Wire Line
	8400 1150 8150 1150
Wire Wire Line
	7950 750  7950 1150
Wire Wire Line
	7950 1150 7950 1400
Connection ~ 7950 1150
$Comp
L Device:R_Small_US R102
U 1 1 5D459423
P 8050 1150
F 0 "R102" V 7845 1150 50  0000 C CNN
F 1 "180" V 7936 1150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 8050 1150 50  0001 C CNN
F 3 "~" H 8050 1150 50  0001 C CNN
	1    8050 1150
	0    1    1    0   
$EndComp
$Comp
L powersupply:MC33063AP1 U2
U 1 1 5D455E56
P 8900 1000
F 0 "U2" H 8900 1115 50  0000 C CNN
F 1 "MC33063AP1" H 8900 1024 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 8900 1000 50  0001 C CNN
F 3 "" H 8900 1000 50  0001 C CNN
	1    8900 1000
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0124
U 1 1 5D669BF4
P 6200 1250
F 0 "#PWR0124" H 6200 1000 50  0001 C CNN
F 1 "GND" H 6205 1077 50  0000 C CNN
F 2 "" H 6200 1250 50  0001 C CNN
F 3 "" H 6200 1250 50  0001 C CNN
	1    6200 1250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0123
U 1 1 5D66945C
P 5000 1250
F 0 "#PWR0123" H 5000 1000 50  0001 C CNN
F 1 "GND" H 5005 1077 50  0000 C CNN
F 2 "" H 5000 1250 50  0001 C CNN
F 3 "" H 5000 1250 50  0001 C CNN
	1    5000 1250
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:AZ1117-3.3 U101
U 1 1 5D489A61
P 5600 1050
F 0 "U101" H 5600 1292 50  0000 C CNN
F 1 "AZ1117E-3.3" H 5600 1201 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 5600 1300 50  0001 C CIN
F 3 "https://www.diodes.com/assets/Datasheets/AZ1117.pdf" H 5600 1050 50  0001 C CNN
	1    5600 1050
	1    0    0    -1  
$EndComp
$Comp
L powersupply:TFT_OLED MOD1
U 1 1 5D37FF21
P 5000 3200
F 0 "MOD1" H 4950 3200 50  0000 L CNN
F 1 "TFT_OLED" H 4850 3050 50  0000 L CNN
F 2 "powersupply:TFT_OLED_display" H 5000 3200 50  0001 C CNN
F 3 "" H 5000 3200 50  0001 C CNN
	1    5000 3200
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0108
U 1 1 5D48DD27
P 6200 1050
F 0 "#PWR0108" H 6200 900 50  0001 C CNN
F 1 "+3.3V" H 6215 1223 50  0000 C CNN
F 2 "" H 6200 1050 50  0001 C CNN
F 3 "" H 6200 1050 50  0001 C CNN
	1    6200 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 1050 6200 1050
Wire Wire Line
	5300 1050 5000 1050
Connection ~ 5000 1050
$Comp
L Device:C_Small C101
U 1 1 5D48BB7E
P 5000 1150
F 0 "C101" H 5092 1196 50  0000 L CNN
F 1 "1uF" H 5092 1105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5000 1150 50  0001 C CNN
F 3 "~" H 5000 1150 50  0001 C CNN
	1    5000 1150
	1    0    0    -1  
$EndComp
Connection ~ 6200 1050
$Comp
L Device:C_Small C102
U 1 1 5D48B49D
P 6200 1150
F 0 "C102" H 6292 1196 50  0000 L CNN
F 1 "1uF" H 6292 1105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6200 1150 50  0001 C CNN
F 3 "~" H 6200 1150 50  0001 C CNN
	1    6200 1150
	1    0    0    -1  
$EndComp
Connection ~ 9150 5300
Wire Wire Line
	9150 5300 9900 5300
Text Notes 5650 1800 0    118  ~ 0
Power Supply
Text Notes 800  650  0    79   ~ 0
Mirco USB
Text Notes 2850 650  0    79   ~ 0
2W Isolator
Text Notes 5200 650  0    79   ~ 0
3.3V Regulator
Text Notes 8550 2950 0    118  ~ 0
Step-Up Switching Regulator
Text Notes 8600 6450 0    118  ~ 0
Step-Down Linear Regulator 
Text Label 7750 4050 2    50   ~ 0
V_curr_lim
$Comp
L power:GND #PWR0109
U 1 1 5D4AFFF3
P 7750 4550
F 0 "#PWR0109" H 7750 4300 50  0001 C CNN
F 1 "GND" H 7755 4377 50  0000 C CNN
F 2 "" H 7750 4550 50  0001 C CNN
F 3 "" H 7750 4550 50  0001 C CNN
	1    7750 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R114
U 1 1 5D4AD799
P 7750 4450
F 0 "R114" H 7800 4500 50  0000 L CNN
F 1 "100" H 7800 4400 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 7750 4450 50  0001 C CNN
F 3 "~" H 7750 4450 50  0001 C CNN
	1    7750 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R113
U 1 1 5D4AC3D3
P 7750 4150
F 0 "R113" H 7800 4200 50  0000 L CNN
F 1 "15k" H 7800 4100 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 7750 4150 50  0001 C CNN
F 3 "~" H 7750 4150 50  0001 C CNN
	1    7750 4150
	1    0    0    -1  
$EndComp
Text Label 7750 4350 2    50   ~ 0
Current_limit_divider
Wire Wire Line
	7750 4250 7750 4300
Wire Wire Line
	7750 4300 8050 4300
Connection ~ 7750 4300
Wire Wire Line
	7750 4300 7750 4350
Text Notes 10050 5500 0    79   ~ 0
Ouput Connectors
Text Notes 7350 5500 0    79   ~ 0
Current Limiting \n
Text Notes 6400 4900 0    118  ~ 0
OLED
Text Notes 6150 2950 0    118  ~ 0
Joystick
Text Notes 1950 2500 0    79   ~ 0
Programming Pin Headers
Text Notes 2150 6400 0    118  ~ 0
Microcontroller
Text Notes 5300 6400 0    118  ~ 0
Current Amplifier
Wire Notes Line
	6900 4950 3850 4950
Wire Notes Line
	3850 1850 3850 7800
Text Notes 5300 7750 0    118  ~ 0
Signal Test Points
Text Notes 2200 7750 0    118  ~ 0
Power Test Points
Wire Notes Line
	3850 3000 11200 3000
Text Notes 550  7750 0    118  ~ 0
Mounting Holes\n
Wire Notes Line
	6950 500  6950 7800
Wire Notes Line
	450  6500 11200 6500
Wire Notes Line
	2000 6500 2000 7800
$EndSCHEMATC
