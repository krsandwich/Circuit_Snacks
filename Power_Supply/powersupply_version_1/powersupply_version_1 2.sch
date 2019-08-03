EESchema Schematic File Version 4
LIBS:powersupply_version_1 2-cache
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
L Connector:USB_B_Micro J?
U 1 1 5D3004BA
P 1650 1350
F 0 "J?" H 1707 1817 50  0000 C CNN
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
L powersupply_version_1:RFM-0505S U?
U 1 1 5D303F43
P 2800 900
F 0 "U?" H 2800 825 50  0000 C CNN
F 1 "RFM-0505S" H 2800 734 50  0000 C CNN
F 2 "" H 2800 900 50  0001 C CNN
F 3 "" H 2800 900 50  0001 C CNN
	1    2800 900 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D30523C
P 3050 1650
F 0 "#PWR?" H 3050 1400 50  0001 C CNN
F 1 "GND" H 3050 1500 50  0000 C CNN
F 2 "" H 3050 1650 50  0001 C CNN
F 3 "" H 3050 1650 50  0001 C CNN
	1    3050 1650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5D305F94
P 3050 1500
F 0 "#PWR?" H 3050 1350 50  0001 C CNN
F 1 "+5V" H 3065 1673 50  0000 C CNN
F 2 "" H 3050 1500 50  0001 C CNN
F 3 "" H 3050 1500 50  0001 C CNN
	1    3050 1500
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
	1950 1150 2550 1150
Wire Wire Line
	2550 1150 2550 1200
$Comp
L Device:R_Small_US R?
U 1 1 5D394C50
P 3400 3050
F 0 "R?" V 3605 3050 50  0000 C CNN
F 1 "2.57k" V 3514 3050 50  0000 C CNN
F 2 "" H 3400 3050 50  0001 C CNN
F 3 "~" H 3400 3050 50  0001 C CNN
	1    3400 3050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2500 3050 3300 3050
Text Label 1650 2650 2    50   ~ 0
SDA
Text Label 1650 2850 2    50   ~ 0
SCL
Wire Wire Line
	4900 3850 5150 3850
Text Label 5150 3750 2    50   ~ 0
MOSI
Text Label 5150 3650 2    50   ~ 0
MISO
Text Label 5150 3550 2    50   ~ 0
SCK
$Comp
L power:VCC #PWR?
U 1 1 5D36A718
P 2500 2650
F 0 "#PWR?" H 2500 2500 50  0001 C CNN
F 1 "VCC" H 2517 2823 50  0000 C CNN
F 2 "" H 2500 2650 50  0001 C CNN
F 3 "" H 2500 2650 50  0001 C CNN
	1    2500 2650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D36B24E
P 2500 2850
F 0 "#PWR?" H 2500 2600 50  0001 C CNN
F 1 "GND" H 2650 2800 50  0000 C CNN
F 2 "" H 2500 2850 50  0001 C CNN
F 3 "" H 2500 2850 50  0001 C CNN
	1    2500 2850
	1    0    0    -1  
$EndComp
NoConn ~ 1650 3050
$Comp
L powersupply_version_1:TFT_LCD U?
U 1 1 5D37FF21
P 5150 4850
F 0 "U?" H 5828 3596 50  0000 L CNN
F 1 "TFT_LCD" H 5828 3505 50  0000 L CNN
F 2 "" H 5150 4850 50  0001 C CNN
F 3 "" H 5150 4850 50  0001 C CNN
	1    5150 4850
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5D3817E9
P 4850 5150
F 0 "#PWR?" H 4850 5000 50  0001 C CNN
F 1 "VCC" H 4867 5323 50  0000 C CNN
F 2 "" H 4850 5150 50  0001 C CNN
F 3 "" H 4850 5150 50  0001 C CNN
	1    4850 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 5300 4850 5300
Text Label 4850 5500 2    50   ~ 0
CS
Text Label 4850 5650 2    50   ~ 0
Reset
Text Label 4850 5800 2    50   ~ 0
DC
Text Label 4850 5950 2    50   ~ 0
MOSI
Text Label 4850 6100 2    50   ~ 0
SCK
$Comp
L power:VCC #PWR?
U 1 1 5D38A66D
P 4850 6250
F 0 "#PWR?" H 4850 6100 50  0001 C CNN
F 1 "VCC" H 4750 6350 50  0000 C CNN
F 2 "" H 4850 6250 50  0001 C CNN
F 3 "" H 4850 6250 50  0001 C CNN
	1    4850 6250
	1    0    0    -1  
$EndComp
Text Label 4850 6400 2    50   ~ 0
MISO
NoConn ~ 4850 6550
NoConn ~ 4850 6700
NoConn ~ 4850 6850
NoConn ~ 4850 7000
NoConn ~ 4850 7150
NoConn ~ 19450 10300
NoConn ~ 25200 10700
$Comp
L powersupply_version_1:MCP4706 U?
U 1 1 5D390434
P 2200 3350
F 0 "U?" H 2325 3365 50  0000 C CNN
F 1 "MCP4706" H 2325 3274 50  0000 C CNN
F 2 "" H 2200 3350 50  0001 C CNN
F 3 "" H 2200 3350 50  0001 C CNN
	1    2200 3350
	-1   0    0    1   
$EndComp
$Comp
L powersupply_version_1:MC33063AP1 U?
U 1 1 5D455E56
P 5900 1400
F 0 "U?" H 5900 1515 50  0000 C CNN
F 1 "MC33063AP1" H 5900 1424 50  0000 C CNN
F 2 "" H 5900 1400 50  0001 C CNN
F 3 "" H 5900 1400 50  0001 C CNN
	1    5900 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5D459423
P 6500 1550
F 0 "R?" V 6295 1550 50  0000 C CNN
F 1 "R_Small_US" V 6386 1550 50  0000 C CNN
F 2 "" H 6500 1550 50  0001 C CNN
F 3 "~" H 6500 1550 50  0001 C CNN
	1    6500 1550
	0    -1   1    0   
$EndComp
Wire Wire Line
	6150 1550 6400 1550
Wire Wire Line
	6600 1550 6600 1800
Wire Wire Line
	6600 1800 6150 1800
$Comp
L Device:R_Small_US R?
U 1 1 5D45B2AA
P 6600 1900
F 0 "R?" H 6668 1946 50  0000 L CNN
F 1 "R_Small_US" H 6668 1855 50  0000 L CNN
F 2 "" H 6600 1900 50  0001 C CNN
F 3 "~" H 6600 1900 50  0001 C CNN
	1    6600 1900
	-1   0    0    -1  
$EndComp
Connection ~ 6600 1800
$Comp
L Device:CP1_Small C?
U 1 1 5D45B91C
P 6600 2150
F 0 "C?" H 6350 2200 50  0000 L CNN
F 1 "CP1_Small" H 6100 2100 50  0000 L CNN
F 2 "" H 6600 2150 50  0001 C CNN
F 3 "~" H 6600 2150 50  0001 C CNN
	1    6600 2150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6600 2000 6600 2050
Wire Wire Line
	6150 2050 6600 2050
Connection ~ 6600 2050
$Comp
L power:GND #PWR?
U 1 1 5D45D872
P 6600 2250
F 0 "#PWR?" H 6600 2000 50  0001 C CNN
F 1 "GND" H 6605 2077 50  0000 C CNN
F 2 "" H 6600 2250 50  0001 C CNN
F 3 "" H 6600 2250 50  0001 C CNN
	1    6600 2250
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5D46A6EF
P 6300 2750
F 0 "R?" H 6368 2796 50  0000 L CNN
F 1 "1k" H 6368 2705 50  0000 L CNN
F 2 "" H 6300 2750 50  0001 C CNN
F 3 "~" H 6300 2750 50  0001 C CNN
	1    6300 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5D46B727
P 5900 2650
F 0 "R?" V 5695 2650 50  0000 C CNN
F 1 "677" V 5786 2650 50  0000 C CNN
F 2 "" H 5900 2650 50  0001 C CNN
F 3 "~" H 5900 2650 50  0001 C CNN
	1    5900 2650
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D46D6B4
P 6300 2850
F 0 "#PWR?" H 6300 2600 50  0001 C CNN
F 1 "GND" H 6305 2677 50  0000 C CNN
F 2 "" H 6300 2850 50  0001 C CNN
F 3 "" H 6300 2850 50  0001 C CNN
	1    6300 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 2650 6300 2650
Wire Wire Line
	6300 2650 6300 2300
Wire Wire Line
	6300 2300 6150 2300
Connection ~ 6300 2650
$Comp
L Device:CP1_Small C?
U 1 1 5D46EC73
P 5100 2750
F 0 "C?" H 5191 2796 50  0000 L CNN
F 1 "CP1_Small" H 5191 2705 50  0000 L CNN
F 2 "" H 5100 2750 50  0001 C CNN
F 3 "~" H 5100 2750 50  0001 C CNN
	1    5100 2750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D46F50F
P 5100 2850
F 0 "#PWR?" H 5100 2600 50  0001 C CNN
F 1 "GND" H 5105 2677 50  0000 C CNN
F 2 "" H 5100 2850 50  0001 C CNN
F 3 "" H 5100 2850 50  0001 C CNN
	1    5100 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 2650 5800 2650
$Comp
L Device:D_Zener_Small D?
U 1 1 5D470D69
P 5100 1850
F 0 "D?" V 5146 1782 50  0000 R CNN
F 1 "D_Zener_Small" V 5055 1782 50  0000 R CNN
F 2 "" V 5100 1850 50  0001 C CNN
F 3 "~" V 5100 1850 50  0001 C CNN
	1    5100 1850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5100 1950 5100 2650
Connection ~ 5100 2650
Wire Wire Line
	5100 1750 5100 1550
Wire Wire Line
	5100 1550 5650 1550
$Comp
L power:GND #PWR?
U 1 1 5D47314D
P 5500 1800
F 0 "#PWR?" H 5500 1550 50  0001 C CNN
F 1 "GND" H 5505 1627 50  0000 C CNN
F 2 "" H 5500 1800 50  0001 C CNN
F 3 "" H 5500 1800 50  0001 C CNN
	1    5500 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 1800 5650 1800
$Comp
L power:GND #PWR?
U 1 1 5D474282
P 5500 2300
F 0 "#PWR?" H 5500 2050 50  0001 C CNN
F 1 "GND" H 5505 2127 50  0000 C CNN
F 2 "" H 5500 2300 50  0001 C CNN
F 3 "" H 5500 2300 50  0001 C CNN
	1    5500 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 2300 5650 2300
$Comp
L Device:CP1_Small C?
U 1 1 5D4755C0
P 5250 2150
F 0 "C?" H 5341 2196 50  0000 L CNN
F 1 "CP1_Small" H 5341 2105 50  0000 L CNN
F 2 "" H 5250 2150 50  0001 C CNN
F 3 "~" H 5250 2150 50  0001 C CNN
	1    5250 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 2050 5650 2050
$Comp
L power:GND #PWR?
U 1 1 5D477589
P 5250 2250
F 0 "#PWR?" H 5250 2000 50  0001 C CNN
F 1 "GND" H 5255 2077 50  0000 C CNN
F 2 "" H 5250 2250 50  0001 C CNN
F 3 "" H 5250 2250 50  0001 C CNN
	1    5250 2250
	1    0    0    -1  
$EndComp
Text Label 5100 2650 2    50   ~ 0
Boost_out
Text Label 6600 2050 0    50   ~ 0
Boost_in
$Comp
L power:GND #PWR?
U 1 1 5D487F77
P 4600 5300
F 0 "#PWR?" H 4600 5050 50  0001 C CNN
F 1 "GND" H 4605 5127 50  0000 C CNN
F 2 "" H 4600 5300 50  0001 C CNN
F 3 "" H 4600 5300 50  0001 C CNN
	1    4600 5300
	1    0    0    -1  
$EndComp
Text Label 2450 5050 0    50   ~ 0
DAC
$Comp
L power:GND #PWR?
U 1 1 5D488ABE
P 1950 6450
F 0 "#PWR?" H 1950 6200 50  0001 C CNN
F 1 "GND" H 1955 6277 50  0000 C CNN
F 2 "" H 1950 6450 50  0001 C CNN
F 3 "" H 1950 6450 50  0001 C CNN
	1    1950 6450
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:AZ1117-3.3 U?
U 1 1 5D489A61
P 9250 1700
F 0 "U?" H 9250 1942 50  0000 C CNN
F 1 "AZ1117-3.3" H 9250 1851 50  0000 C CNN
F 2 "" H 9250 1950 50  0001 C CIN
F 3 "https://www.diodes.com/assets/Datasheets/AZ1117.pdf" H 9250 1700 50  0001 C CNN
	1    9250 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5D48B49D
P 9850 1800
F 0 "C?" H 9942 1846 50  0000 L CNN
F 1 "C_Small" H 9942 1755 50  0000 L CNN
F 2 "" H 9850 1800 50  0001 C CNN
F 3 "~" H 9850 1800 50  0001 C CNN
	1    9850 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5D48BB7E
P 8650 1800
F 0 "C?" H 8742 1846 50  0000 L CNN
F 1 "C_Small" H 8742 1755 50  0000 L CNN
F 2 "" H 8650 1800 50  0001 C CNN
F 3 "~" H 8650 1800 50  0001 C CNN
	1    8650 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 1700 8650 1700
Wire Wire Line
	9550 1700 9850 1700
$Comp
L power:GND #PWR?
U 1 1 5D48CE4B
P 9250 2000
F 0 "#PWR?" H 9250 1750 50  0001 C CNN
F 1 "GND" H 9255 1827 50  0000 C CNN
F 2 "" H 9250 2000 50  0001 C CNN
F 3 "" H 9250 2000 50  0001 C CNN
	1    9250 2000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D48D1E3
P 9850 1900
F 0 "#PWR?" H 9850 1650 50  0001 C CNN
F 1 "GND" H 9855 1727 50  0000 C CNN
F 2 "" H 9850 1900 50  0001 C CNN
F 3 "" H 9850 1900 50  0001 C CNN
	1    9850 1900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D48D57B
P 8650 1900
F 0 "#PWR?" H 8650 1650 50  0001 C CNN
F 1 "GND" H 8655 1727 50  0000 C CNN
F 2 "" H 8650 1900 50  0001 C CNN
F 3 "" H 8650 1900 50  0001 C CNN
	1    8650 1900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5D48D94A
P 8650 1700
F 0 "#PWR?" H 8650 1550 50  0001 C CNN
F 1 "+5V" H 8665 1873 50  0000 C CNN
F 2 "" H 8650 1700 50  0001 C CNN
F 3 "" H 8650 1700 50  0001 C CNN
	1    8650 1700
	1    0    0    -1  
$EndComp
Connection ~ 8650 1700
$Comp
L power:+3.3V #PWR?
U 1 1 5D48DD27
P 9850 1700
F 0 "#PWR?" H 9850 1550 50  0001 C CNN
F 1 "+3.3V" H 9865 1873 50  0000 C CNN
F 2 "" H 9850 1700 50  0001 C CNN
F 3 "" H 9850 1700 50  0001 C CNN
	1    9850 1700
	1    0    0    -1  
$EndComp
Connection ~ 9850 1700
$Comp
L Connector_Generic:Conn_01x05 J?
U 1 1 5D3457C6
P 5350 3750
F 0 "J?" H 5430 3792 50  0000 L CNN
F 1 "Conn_01x05" H 5430 3701 50  0000 L CNN
F 2 "" H 5350 3750 50  0001 C CNN
F 3 "~" H 5350 3750 50  0001 C CNN
	1    5350 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D33ECB0
P 5150 3950
F 0 "#PWR?" H 5150 3700 50  0001 C CNN
F 1 "GND" H 5155 3777 50  0000 C CNN
F 2 "" H 5150 3950 50  0001 C CNN
F 3 "" H 5150 3950 50  0001 C CNN
	1    5150 3950
	1    0    0    -1  
$EndComp
Connection ~ 4900 4700
Wire Wire Line
	4900 4700 4900 3850
Connection ~ 4800 4700
Wire Wire Line
	4800 4700 4900 4700
$Comp
L power:GND #PWR?
U 1 1 5D335430
P 5300 4700
F 0 "#PWR?" H 5300 4450 50  0001 C CNN
F 1 "GND" H 5305 4527 50  0000 C CNN
F 2 "" H 5300 4700 50  0001 C CNN
F 3 "" H 5300 4700 50  0001 C CNN
	1    5300 4700
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5D3340CA
P 5100 4700
F 0 "SW?" H 5100 4985 50  0000 C CNN
F 1 "SW_Push" H 5100 4894 50  0000 C CNN
F 2 "" H 5100 4900 50  0001 C CNN
F 3 "~" H 5100 4900 50  0001 C CNN
	1    5100 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 4700 4800 4600
Wire Wire Line
	4600 4700 4800 4700
$Comp
L power:VCC #PWR?
U 1 1 5D3309E2
P 4800 4600
F 0 "#PWR?" H 4800 4450 50  0001 C CNN
F 1 "VCC" H 4817 4773 50  0000 C CNN
F 2 "" H 4800 4600 50  0001 C CNN
F 3 "" H 4800 4600 50  0001 C CNN
	1    4800 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5D49225A
P 2850 5050
F 0 "R?" V 2645 5050 50  0000 C CNN
F 1 "3.17k" V 2736 5050 50  0000 C CNN
F 2 "" H 2850 5050 50  0001 C CNN
F 3 "~" H 2850 5050 50  0001 C CNN
	1    2850 5050
	0    1    1    0   
$EndComp
Wire Wire Line
	2450 5050 2750 5050
Text Label 6300 2650 0    50   ~ 0
Ref
Text Label 2950 5050 0    50   ~ 0
Ref
$Comp
L MCU_Microchip_SAMD:ATSAMD10D13A-SS U?
U 1 1 5D47B7D4
P 1950 5650
F 0 "U?" H 1950 6900 50  0000 C CNN
F 1 "ATSAMD10D13A-SS" H 1950 6800 50  0000 C CNN
F 2 "Package_SO:SOIC-20W_7.5x12.8mm_P1.27mm" H 1950 4500 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-42242-SAM-D10_Datasheet.pdf" H 1950 4750 50  0001 C CNN
	1    1950 5650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV?
U 1 1 5D495BBC
P 2850 6050
F 0 "RV?" V 2735 6050 50  0000 C CNN
F 1 "R_POT" V 2644 6050 50  0000 C CNN
F 2 "" H 2850 6050 50  0001 C CNN
F 3 "~" H 2850 6050 50  0001 C CNN
	1    2850 6050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2450 5750 2850 5750
$Comp
L power:GND #PWR?
U 1 1 5D497D34
P 2700 6050
F 0 "#PWR?" H 2700 5800 50  0001 C CNN
F 1 "GND" H 2705 5877 50  0000 C CNN
F 2 "" H 2700 6050 50  0001 C CNN
F 3 "" H 2700 6050 50  0001 C CNN
	1    2700 6050
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5D49814B
P 3000 6050
F 0 "#PWR?" H 3000 5900 50  0001 C CNN
F 1 "+3.3V" H 3015 6223 50  0000 C CNN
F 2 "" H 3000 6050 50  0001 C CNN
F 3 "" H 3000 6050 50  0001 C CNN
	1    3000 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 5650 2850 5650
$Comp
L power:GND #PWR?
U 1 1 5D49B3D9
P 2700 5500
F 0 "#PWR?" H 2700 5250 50  0001 C CNN
F 1 "GND" H 2705 5327 50  0000 C CNN
F 2 "" H 2700 5500 50  0001 C CNN
F 3 "" H 2700 5500 50  0001 C CNN
	1    2700 5500
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_POT RV?
U 1 1 5D49B3D2
P 2850 5500
F 0 "RV?" V 2735 5500 50  0000 C CNN
F 1 "R_POT" V 2644 5500 50  0000 C CNN
F 2 "" H 2850 5500 50  0001 C CNN
F 3 "~" H 2850 5500 50  0001 C CNN
	1    2850 5500
	0    -1   1    0   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5D49F5CD
P 3000 5500
F 0 "#PWR?" H 3000 5350 50  0001 C CNN
F 1 "+3.3V" H 3015 5673 50  0000 C CNN
F 2 "" H 3000 5500 50  0001 C CNN
F 3 "" H 3000 5500 50  0001 C CNN
	1    3000 5500
	1    0    0    -1  
$EndComp
Text Label 2850 5650 0    50   ~ 0
Current_set
Wire Wire Line
	2850 5750 2850 5900
Text Label 2850 5750 0    50   ~ 0
Voltage_set
$Comp
L Device:Crystal_Small Y?
U 1 1 5D4A1A95
P 1050 5800
F 0 "Y?" V 1096 5712 50  0000 R CNN
F 1 "Crystal_Small" V 1005 5712 50  0000 R CNN
F 2 "" H 1050 5800 50  0001 C CNN
F 3 "~" H 1050 5800 50  0001 C CNN
	1    1050 5800
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5D4A2AA4
P 950 5600
F 0 "C?" H 858 5554 50  0000 R CNN
F 1 "C_Small" H 858 5645 50  0000 R CNN
F 2 "" H 950 5600 50  0001 C CNN
F 3 "~" H 950 5600 50  0001 C CNN
	1    950  5600
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5D4A395D
P 950 6000
F 0 "C?" H 1042 6046 50  0000 L CNN
F 1 "C_Small" H 1042 5955 50  0000 L CNN
F 2 "" H 950 6000 50  0001 C CNN
F 3 "~" H 950 6000 50  0001 C CNN
	1    950  6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 5750 1250 5750
Wire Wire Line
	1250 5750 1250 5700
Wire Wire Line
	1250 5700 1050 5700
Connection ~ 1050 5700
Wire Wire Line
	1050 5700 950  5700
Wire Wire Line
	1450 5850 1250 5850
Wire Wire Line
	1250 5850 1250 5900
Wire Wire Line
	1250 5900 1050 5900
Connection ~ 1050 5900
Wire Wire Line
	1050 5900 950  5900
Wire Wire Line
	950  5500 750  5500
Wire Wire Line
	750  5500 750  6100
Wire Wire Line
	750  6100 950  6100
$Comp
L power:GND #PWR?
U 1 1 5D4A68C4
P 750 6100
F 0 "#PWR?" H 750 5850 50  0001 C CNN
F 1 "GND" H 755 5927 50  0000 C CNN
F 2 "" H 750 6100 50  0001 C CNN
F 3 "" H 750 6100 50  0001 C CNN
	1    750  6100
	1    0    0    -1  
$EndComp
Connection ~ 750  6100
Text Label 2450 5150 0    50   ~ 0
Ref_Amustfigureoutwhattodowiththis
$Comp
L powersupply_version_1:LM358P U?
U 1 1 5D4A8FA5
P 8400 3150
F 0 "U?" H 8375 3265 50  0000 C CNN
F 1 "LM358P" H 8375 3174 50  0000 C CNN
F 2 "" H 8400 3150 50  0001 C CNN
F 3 "" H 8400 3150 50  0001 C CNN
	1    8400 3150
	1    0    0    -1  
$EndComp
$Comp
L powersupply_version_1:LM358P U?
U 1 1 5D4AA099
P 8400 4300
F 0 "U?" H 8375 4415 50  0000 C CNN
F 1 "LM358P" H 8375 4324 50  0000 C CNN
F 2 "" H 8400 4300 50  0001 C CNN
F 3 "" H 8400 4300 50  0001 C CNN
	1    8400 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5D4AC3D3
P 7400 3350
F 0 "R?" H 7468 3396 50  0000 L CNN
F 1 "R_Small_US" H 7468 3305 50  0000 L CNN
F 2 "" H 7400 3350 50  0001 C CNN
F 3 "~" H 7400 3350 50  0001 C CNN
	1    7400 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5D4AD799
P 7400 3550
F 0 "R?" H 7468 3596 50  0000 L CNN
F 1 "R_Small_US" H 7468 3505 50  0000 L CNN
F 2 "" H 7400 3550 50  0001 C CNN
F 3 "~" H 7400 3550 50  0001 C CNN
	1    7400 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 3450 7400 3450
Connection ~ 7400 3450
$Comp
L power:GND #PWR?
U 1 1 5D4AFFF3
P 7400 3650
F 0 "#PWR?" H 7400 3400 50  0001 C CNN
F 1 "GND" H 7405 3477 50  0000 C CNN
F 2 "" H 7400 3650 50  0001 C CNN
F 3 "" H 7400 3650 50  0001 C CNN
	1    7400 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Small D?
U 1 1 5D4B1412
P 9050 3450
F 0 "D?" H 9050 3245 50  0000 C CNN
F 1 "D_Small" H 9050 3336 50  0000 C CNN
F 2 "" V 9050 3450 50  0001 C CNN
F 3 "~" V 9050 3450 50  0001 C CNN
	1    9050 3450
	-1   0    0    1   
$EndComp
$Comp
L Device:Q_PMOS_GDS Q?
U 1 1 5D4B2BFF
P 9600 3450
F 0 "Q?" H 9806 3404 50  0000 L CNN
F 1 "Q_PMOS_GDS" H 9806 3495 50  0000 L CNN
F 2 "" H 9800 3550 50  0001 C CNN
F 3 "~" H 9600 3450 50  0001 C CNN
	1    9600 3450
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5D4B4E12
P 9200 3950
F 0 "R?" H 9268 3996 50  0000 L CNN
F 1 "R_Small_US" H 9268 3905 50  0000 L CNN
F 2 "" H 9200 3950 50  0001 C CNN
F 3 "~" H 9200 3950 50  0001 C CNN
	1    9200 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 4050 8050 4050
Wire Wire Line
	8050 4050 8050 4450
Text Label 8050 4600 2    50   ~ 0
Vref
$Comp
L Device:R_Small_US R?
U 1 1 5D4C0D0A
P 7600 5200
F 0 "R?" H 7668 5246 50  0000 L CNN
F 1 "R_Small_US" H 7668 5155 50  0000 L CNN
F 2 "" H 7600 5200 50  0001 C CNN
F 3 "~" H 7600 5200 50  0001 C CNN
	1    7600 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5D4C174A
P 7700 5550
F 0 "R?" V 7905 5550 50  0000 C CNN
F 1 "R_Small_US" V 7814 5550 50  0000 C CNN
F 2 "" H 7700 5550 50  0001 C CNN
F 3 "~" H 7700 5550 50  0001 C CNN
	1    7700 5550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7600 5300 7600 5350
Wire Wire Line
	8050 3600 7950 3600
Wire Wire Line
	7600 5350 7500 5350
Wire Wire Line
	7500 5350 7500 3950
Connection ~ 7600 5350
Wire Wire Line
	7600 5350 7600 5550
Text Label 7400 3250 2    50   ~ 0
Vlim
$Comp
L power:+3.3V #PWR?
U 1 1 5D4CFECE
P 7600 5100
F 0 "#PWR?" H 7600 4950 50  0001 C CNN
F 1 "+3.3V" H 7615 5273 50  0000 C CNN
F 2 "" H 7600 5100 50  0001 C CNN
F 3 "" H 7600 5100 50  0001 C CNN
	1    7600 5100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5D4D044A
P 9400 4450
F 0 "R?" H 9468 4496 50  0000 L CNN
F 1 "R_Small_US" H 9468 4405 50  0000 L CNN
F 2 "" H 9400 4450 50  0001 C CNN
F 3 "~" H 9400 4450 50  0001 C CNN
	1    9400 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5D4D11A0
P 9400 4800
F 0 "R?" H 9468 4846 50  0000 L CNN
F 1 "R_Small_US" H 9468 4755 50  0000 L CNN
F 2 "" H 9400 4800 50  0001 C CNN
F 3 "~" H 9400 4800 50  0001 C CNN
	1    9400 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 3650 9700 4350
Wire Wire Line
	9700 4350 9400 4350
Wire Wire Line
	9400 4550 9400 4650
$Comp
L power:GND #PWR?
U 1 1 5D4E2EE6
P 9400 4900
F 0 "#PWR?" H 9400 4650 50  0001 C CNN
F 1 "GND" H 9405 4727 50  0000 C CNN
F 2 "" H 9400 4900 50  0001 C CNN
F 3 "" H 9400 4900 50  0001 C CNN
	1    9400 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 4650 9050 4650
Wire Wire Line
	9050 4650 9050 5100
Wire Wire Line
	9050 5100 7900 5100
Wire Wire Line
	7900 5100 7900 4750
Wire Wire Line
	7900 4750 8050 4750
Connection ~ 9400 4650
Wire Wire Line
	9400 4650 9400 4700
$Comp
L Device:R_Small_US R?
U 1 1 5D4E54B6
P 9700 5650
F 0 "R?" H 9768 5696 50  0000 L CNN
F 1 "R_Small_US" H 9768 5605 50  0000 L CNN
F 2 "" H 9700 5650 50  0001 C CNN
F 3 "~" H 9700 5650 50  0001 C CNN
	1    9700 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 5550 9700 5550
$Comp
L power:GND #PWR?
U 1 1 5D4EA53D
P 9700 5750
F 0 "#PWR?" H 9700 5500 50  0001 C CNN
F 1 "GND" H 9705 5577 50  0000 C CNN
F 2 "" H 9700 5750 50  0001 C CNN
F 3 "" H 9700 5750 50  0001 C CNN
	1    9700 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 3450 8950 2900
Wire Wire Line
	8950 2900 8050 2900
Wire Wire Line
	8050 2900 8050 3300
Wire Wire Line
	9150 3450 9200 3450
Wire Wire Line
	9200 3850 9200 3450
Connection ~ 9200 3450
Wire Wire Line
	9200 3450 9400 3450
$Comp
L power:+5V #PWR?
U 1 1 5D45F821
P 8750 4450
F 0 "#PWR?" H 8750 4300 50  0001 C CNN
F 1 "+5V" H 8765 4623 50  0000 C CNN
F 2 "" H 8750 4450 50  0001 C CNN
F 3 "" H 8750 4450 50  0001 C CNN
	1    8750 4450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D460F2D
P 8000 4900
F 0 "#PWR?" H 8000 4650 50  0001 C CNN
F 1 "GND" H 8005 4727 50  0000 C CNN
F 2 "" H 8000 4900 50  0001 C CNN
F 3 "" H 8000 4900 50  0001 C CNN
	1    8000 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 4900 8050 4900
Wire Wire Line
	8700 4450 8750 4450
Wire Wire Line
	7500 3950 7950 3950
Wire Wire Line
	7950 3600 7950 3950
$Comp
L power:GND #PWR?
U 1 1 5D46746E
P 8050 3750
F 0 "#PWR?" H 8050 3500 50  0001 C CNN
F 1 "GND" H 8055 3577 50  0000 C CNN
F 2 "" H 8050 3750 50  0001 C CNN
F 3 "" H 8050 3750 50  0001 C CNN
	1    8050 3750
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5D46A949
P 8750 3300
F 0 "#PWR?" H 8750 3150 50  0001 C CNN
F 1 "+5V" H 8765 3473 50  0000 C CNN
F 2 "" H 8750 3300 50  0001 C CNN
F 3 "" H 8750 3300 50  0001 C CNN
	1    8750 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 3300 8750 3300
Text Label 8700 3750 0    50   ~ 0
mayhavetogroundthese
$EndSCHEMATC
