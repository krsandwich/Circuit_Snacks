EESchema Schematic File Version 4
LIBS:wavegenerator_v1-cache
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
L Device:CP1_Small C13
U 1 1 5D1C493B
P 650 5150
F 0 "C13" H 741 5196 50  0000 L CNN
F 1 "100uF" H 741 5105 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 650 5150 50  0001 C CNN
F 3 "~" H 650 5150 50  0001 C CNN
	1    650  5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	650  4900 650  5050
$Comp
L power:+5V #PWR032
U 1 1 5D1C7520
P 650 4900
F 0 "#PWR032" H 650 4750 50  0001 C CNN
F 1 "+5V" V 665 5028 50  0000 L CNN
F 2 "" H 650 4900 50  0001 C CNN
F 3 "" H 650 4900 50  0001 C CNN
	1    650  4900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR033
U 1 1 5D1CA983
P 650 5250
F 0 "#PWR033" H 650 5000 50  0001 C CNN
F 1 "GND" H 655 5077 50  0000 C CNN
F 2 "" H 650 5250 50  0001 C CNN
F 3 "" H 650 5250 50  0001 C CNN
	1    650  5250
	1    0    0    -1  
$EndComp
Connection ~ 650  4900
$Comp
L Device:R_Small_US R10
U 1 1 5D1B4472
P 2500 5900
F 0 "R10" H 2550 5950 50  0000 L CNN
F 1 "10k" H 2550 5850 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 2500 5900 50  0001 C CNN
F 3 "~" H 2500 5900 50  0001 C CNN
	1    2500 5900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R9
U 1 1 5D1B8C65
P 2000 5800
F 0 "R9" V 1795 5800 50  0000 C CNN
F 1 "3.32k" V 1886 5800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 2000 5800 50  0001 C CNN
F 3 "~" H 2000 5800 50  0001 C CNN
	1    2000 5800
	0    1    1    0   
$EndComp
Wire Wire Line
	2100 5800 2500 5800
Wire Wire Line
	2500 5800 2500 5400
Connection ~ 2500 5800
$Comp
L Device:CP1_Small C15
U 1 1 5D1BBFB9
P 1500 5900
F 0 "C15" H 1400 5900 50  0000 R CNN
F 1 "1000uF" H 1400 6000 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 1500 5900 50  0001 C CNN
F 3 "~" H 1500 5900 50  0001 C CNN
	1    1500 5900
	-1   0    0    1   
$EndComp
Connection ~ 1650 5800
$Comp
L Device:C_Small C14
U 1 1 5D1BDC93
P 1050 5700
F 0 "C14" H 1141 5746 50  0000 L CNN
F 1 "1500pF" H 1141 5655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1050 5700 50  0001 C CNN
F 3 "~" H 1050 5700 50  0001 C CNN
	1    1050 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 5600 1050 5300
$Comp
L Device:D_Zener_Small D1
U 1 1 5D1C049C
P 2700 5600
F 0 "D1" V 2654 5668 50  0000 L CNN
F 1 "1N5819" V 2745 5668 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" V 2700 5600 50  0001 C CNN
F 3 "~" V 2700 5600 50  0001 C CNN
	1    2700 5600
	0    1    1    0   
$EndComp
$Comp
L Device:L_Core_Iron L1
U 1 1 5D1C1934
P 3100 5650
F 0 "L1" H 3188 5696 50  0000 L CNN
F 1 "82uH" H 3188 5605 50  0000 L CNN
F 2 "Inductor_SMD:L_7.3x7.3_H3.5" H 3100 5650 50  0001 C CNN
F 3 "~" H 3100 5650 50  0001 C CNN
	1    3100 5650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR051
U 1 1 5D1C2FBB
P 3100 5800
F 0 "#PWR051" H 3100 5550 50  0001 C CNN
F 1 "GND" H 3105 5627 50  0000 C CNN
F 2 "" H 3100 5800 50  0001 C CNN
F 3 "" H 3100 5800 50  0001 C CNN
	1    3100 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 5300 2700 5500
Connection ~ 2050 5000
Wire Wire Line
	2050 4900 2050 5000
Wire Wire Line
	2500 5400 2050 5400
Wire Wire Line
	1650 5800 1650 5600
Wire Wire Line
	1050 5300 1250 5300
Wire Wire Line
	2050 5000 2050 5100
$Comp
L Regulator_Switching:MC33063AD U5
U 1 1 5D1E6E42
P 1650 5100
F 0 "U5" H 1650 5567 50  0000 C CNN
F 1 "MC33063AD" H 1650 5476 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 1700 4650 50  0001 L CNN
F 3 "http://www.onsemi.com/pub_link/Collateral/MC34063A-D.PDF" H 2150 5000 50  0001 C CNN
	1    1650 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 4550 1250 4550
$Comp
L Device:R_Small_US R8
U 1 1 5D1AEDEA
P 1650 4550
F 0 "R8" V 1445 4550 50  0000 C CNN
F 1 "0.24" V 1536 4550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 1650 4550 50  0001 C CNN
F 3 "~" H 1650 4550 50  0001 C CNN
	1    1650 4550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR035
U 1 1 5D1BD2DB
P 1500 6000
F 0 "#PWR035" H 1500 5750 50  0001 C CNN
F 1 "GND" H 1505 5827 50  0000 C CNN
F 2 "" H 1500 6000 50  0001 C CNN
F 3 "" H 1500 6000 50  0001 C CNN
	1    1500 6000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR047
U 1 1 5D1BB11A
P 2500 6000
F 0 "#PWR047" H 2500 5750 50  0001 C CNN
F 1 "GND" H 2505 5827 50  0000 C CNN
F 2 "" H 2500 6000 50  0001 C CNN
F 3 "" H 2500 6000 50  0001 C CNN
	1    2500 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 800  8600 800 
Connection ~ 8600 800 
$Comp
L Device:C_Small C2
U 1 1 5D3C13C2
P 7800 800
F 0 "C2" V 8029 800 50  0000 C CNN
F 1 "100nF" V 7938 800 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7800 800 50  0001 C CNN
F 3 "~" H 7800 800 50  0001 C CNN
	1    7800 800 
	0    -1   -1   0   
$EndComp
$Comp
L Connector:USB_B_Micro J2
U 1 1 5D241E68
P 5800 4950
F 0 "J2" H 5857 5417 50  0000 C CNN
F 1 "USB_B_Micro" H 5857 5326 50  0000 C CNN
F 2 "wavegenerator_v1:USB_Micro-B_Amphenol_10118194-0001LF_Horizontal" H 5950 4900 50  0001 C CNN
F 3 "~" H 5950 4900 50  0001 C CNN
	1    5800 4950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR030
U 1 1 5D243069
P 6250 4750
F 0 "#PWR030" H 6250 4600 50  0001 C CNN
F 1 "+5V" H 6200 4900 50  0000 L CNN
F 2 "" H 6250 4750 50  0001 C CNN
F 3 "" H 6250 4750 50  0001 C CNN
	1    6250 4750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR028
U 1 1 5D243B55
P 5800 5350
F 0 "#PWR028" H 5800 5100 50  0001 C CNN
F 1 "GND" H 5805 5177 50  0000 C CNN
F 2 "" H 5800 5350 50  0001 C CNN
F 3 "" H 5800 5350 50  0001 C CNN
	1    5800 5350
	1    0    0    -1  
$EndComp
NoConn ~ 6100 4950
NoConn ~ 6100 5050
NoConn ~ 6100 5150
$Comp
L power:GND #PWR09
U 1 1 5D2E4E7A
P 10000 1450
F 0 "#PWR09" H 10000 1200 50  0001 C CNN
F 1 "GND" H 10005 1277 50  0000 C CNN
F 2 "" H 10000 1450 50  0001 C CNN
F 3 "" H 10000 1450 50  0001 C CNN
	1    10000 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C7
U 1 1 5D379378
P 1600 2700
F 0 "C7" H 1692 2746 50  0000 L CNN
F 1 "15pF" H 1692 2655 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 1600 2700 50  0001 C CNN
F 3 "~" H 1600 2700 50  0001 C CNN
	1    1600 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 2450 1600 2600
Wire Wire Line
	1600 2800 1600 2850
Wire Wire Line
	1250 2350 1250 2400
Wire Wire Line
	1650 2350 1250 2350
Wire Wire Line
	1650 2450 1600 2450
$Comp
L Device:C_Small C5
U 1 1 5D37A6B1
P 1250 1950
F 0 "C5" H 1342 1996 50  0000 L CNN
F 1 "4.7uF" H 1342 1905 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 1250 1950 50  0001 C CNN
F 3 "~" H 1250 1950 50  0001 C CNN
	1    1250 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C6
U 1 1 5D379EFA
P 1250 2500
F 0 "C6" H 1342 2546 50  0000 L CNN
F 1 "33nF" H 1342 2455 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 1250 2500 50  0001 C CNN
F 3 "~" H 1250 2500 50  0001 C CNN
	1    1250 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 2200 2850 2400
$Comp
L power:+5V #PWR022
U 1 1 5D1F1603
P 2850 2200
F 0 "#PWR022" H 2850 2050 50  0001 C CNN
F 1 "+5V" H 2750 2300 50  0000 C CNN
F 2 "" H 2850 2200 50  0001 C CNN
F 3 "" H 2850 2200 50  0001 C CNN
	1    2850 2200
	1    0    0    -1  
$EndComp
$Comp
L wavegenerator_v1:MAX038CPP U4
U 1 1 5D1E353F
P 3650 2200
F 0 "U4" H 3650 3770 50  0000 C CNN
F 1 "MAX038CPP" H 3650 3679 50  0000 C CNN
F 2 "wavegenerator_v1:MAX038CPP-W" H 3650 2200 50  0001 L BNN
F 3 "" H 3650 2200 50  0001 L BNN
F 4 "MAX038CPP" H 3650 2200 50  0001 L BNN "Field4"
F 5 "DIP-20 Maxim Integrated" H 3650 2200 50  0001 L BNN "Field5"
F 6 "None" H 3650 2200 50  0001 L BNN "Field6"
F 7 "Unavailable" H 3650 2200 50  0001 L BNN "Field7"
F 8 "Maxim Integrated" H 3650 2200 50  0001 L BNN "Field8"
	1    3650 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R3
U 1 1 5D1CCA8A
P 1850 1400
F 0 "R3" H 1918 1446 50  0000 L CNN
F 1 "560" H 1918 1355 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 1850 1400 50  0001 C CNN
F 3 "~" H 1850 1400 50  0001 C CNN
	1    1850 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV2
U 1 1 5D1CF8DB
P 1850 1650
F 0 "RV2" H 1781 1696 50  0000 R CNN
F 1 "20k" H 1781 1605 50  0000 R CNN
F 2 "wavegenerator_v1:Potentiometer_PTV09A" H 1850 1650 50  0001 C CNN
F 3 "~" H 1850 1650 50  0001 C CNN
	1    1850 1650
	1    0    0    1   
$EndComp
Wire Wire Line
	1850 1800 2000 1800
Wire Wire Line
	2000 1800 2000 1650
Wire Wire Line
	1850 1800 1850 1900
Wire Wire Line
	1850 2000 2950 2000
Connection ~ 1850 1800
$Comp
L Device:R_Small_US R2
U 1 1 5D1D5B70
P 2750 1100
F 0 "R2" V 2550 1050 50  0000 L CNN
F 1 "3.6k" V 2650 1050 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 2750 1100 50  0001 C CNN
F 3 "~" H 2750 1100 50  0001 C CNN
	1    2750 1100
	0    1    1    0   
$EndComp
$Comp
L Device:R_POT RV1
U 1 1 5D1D6226
P 2300 1100
F 0 "RV1" V 2600 1150 50  0000 R CNN
F 1 "500k" V 2500 1150 50  0000 R CNN
F 2 "wavegenerator_v1:Potentiometer_PTV09A" H 2300 1100 50  0001 C CNN
F 3 "~" H 2300 1100 50  0001 C CNN
	1    2300 1100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2150 1100 2150 950 
Wire Wire Line
	2150 950  2300 950 
Connection ~ 2150 1100
$Comp
L Device:R_Small_US R4
U 1 1 5D1DA50B
P 2200 1700
F 0 "R4" H 2268 1746 50  0000 L CNN
F 1 "180k" H 2268 1655 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 2200 1700 50  0001 C CNN
F 3 "~" H 2200 1700 50  0001 C CNN
	1    2200 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 1800 2200 1900
Wire Wire Line
	2200 1900 1850 1900
Connection ~ 1850 1900
Wire Wire Line
	1850 1900 1850 2000
Wire Wire Line
	2200 1600 2200 1500
Wire Wire Line
	2200 1500 1850 1500
Connection ~ 1850 1500
$Comp
L power:+5V #PWR036
U 1 1 5D22F652
P 4350 900
F 0 "#PWR036" H 4350 750 50  0001 C CNN
F 1 "+5V" H 4365 1073 50  0000 C CNN
F 2 "" H 4350 900 50  0001 C CNN
F 3 "" H 4350 900 50  0001 C CNN
	1    4350 900 
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C16
U 1 1 5D230225
P 4900 1000
F 0 "C16" H 4992 1046 50  0000 L CNN
F 1 "1uF" H 4992 955 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 4900 1000 50  0001 C CNN
F 3 "~" H 4900 1000 50  0001 C CNN
	1    4900 1000
	-1   0    0    1   
$EndComp
Connection ~ 4350 900 
$Comp
L Device:C_Small C10
U 1 1 5D2356A9
P 1400 1300
F 0 "C10" H 1492 1346 50  0000 L CNN
F 1 "1uF" H 1492 1255 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 1400 1300 50  0001 C CNN
F 3 "~" H 1400 1300 50  0001 C CNN
	1    1400 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR020
U 1 1 5D239EBB
P 1400 1400
F 0 "#PWR020" H 1400 1150 50  0001 C CNN
F 1 "GND" H 1405 1227 50  0000 C CNN
F 2 "" H 1400 1400 50  0001 C CNN
F 3 "" H 1400 1400 50  0001 C CNN
	1    1400 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C17
U 1 1 5D248DFE
P 4700 3200
F 0 "C17" V 4900 3150 50  0000 C CNN
F 1 "1uF" V 4800 3150 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 4700 3200 50  0001 C CNN
F 3 "~" H 4700 3200 50  0001 C CNN
	1    4700 3200
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR045
U 1 1 5D24B84C
P 4800 3200
F 0 "#PWR045" H 4800 2950 50  0001 C CNN
F 1 "GND" V 4805 3072 50  0000 R CNN
F 2 "" H 4800 3200 50  0001 C CNN
F 3 "" H 4800 3200 50  0001 C CNN
	1    4800 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 5800 1350 5800
Wire Wire Line
	2700 5700 2700 6150
Connection ~ 1350 5800
Wire Wire Line
	1350 5800 1500 5800
Wire Wire Line
	1250 4550 1250 4900
Connection ~ 1250 4900
Wire Wire Line
	1750 4550 2050 4550
Wire Wire Line
	2050 4550 2050 4900
Connection ~ 2050 4900
$Comp
L power:+5V #PWR052
U 1 1 5D64A773
P 5100 1150
F 0 "#PWR052" H 5100 1000 50  0001 C CNN
F 1 "+5V" H 5115 1323 50  0000 C CNN
F 2 "" H 5100 1150 50  0001 C CNN
F 3 "" H 5100 1150 50  0001 C CNN
	1    5100 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV3
U 1 1 5D65F834
P 4350 1350
F 0 "RV3" H 4600 1550 50  0000 C CNN
F 1 "10k" H 4600 1450 50  0000 C CNN
F 2 "wavegenerator_v1:Potentiometer_PTV09A" H 4350 1350 50  0001 C CNN
F 3 "~" H 4350 1350 50  0001 C CNN
	1    4350 1350
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small_US R11
U 1 1 5D677962
P 5300 1900
F 0 "R11" V 5095 1900 50  0000 C CNN
F 1 "1k" V 5186 1900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 5300 1900 50  0001 C CNN
F 3 "~" H 5300 1900 50  0001 C CNN
	1    5300 1900
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5D20D03E
P 7700 800
F 0 "#PWR03" H 7700 550 50  0001 C CNN
F 1 "GND" H 7705 627 50  0000 C CNN
F 2 "" H 7700 800 50  0001 C CNN
F 3 "" H 7700 800 50  0001 C CNN
	1    7700 800 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR026
U 1 1 5D227376
P 5700 5350
F 0 "#PWR026" H 5700 5100 50  0001 C CNN
F 1 "GND" H 5705 5177 50  0000 C CNN
F 2 "" H 5700 5350 50  0001 C CNN
F 3 "" H 5700 5350 50  0001 C CNN
	1    5700 5350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR023
U 1 1 5D3116F4
P 2850 2600
F 0 "#PWR023" H 2850 2350 50  0001 C CNN
F 1 "GND" H 2855 2427 50  0000 C CNN
F 2 "" H 2850 2600 50  0001 C CNN
F 3 "" H 2850 2600 50  0001 C CNN
	1    2850 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5D3B016C
P 1250 2050
F 0 "#PWR012" H 1250 1800 50  0001 C CNN
F 1 "GND" H 1255 1877 50  0000 C CNN
F 2 "" H 1250 2050 50  0001 C CNN
F 3 "" H 1250 2050 50  0001 C CNN
	1    1250 2050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 5D3B0BAB
P 1250 2600
F 0 "#PWR014" H 1250 2350 50  0001 C CNN
F 1 "GND" H 1255 2427 50  0000 C CNN
F 2 "" H 1250 2600 50  0001 C CNN
F 3 "" H 1250 2600 50  0001 C CNN
	1    1250 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR016
U 1 1 5D3BFFC6
P 1600 2850
F 0 "#PWR016" H 1600 2600 50  0001 C CNN
F 1 "GND" H 1605 2677 50  0000 C CNN
F 2 "" H 1600 2850 50  0001 C CNN
F 3 "" H 1600 2850 50  0001 C CNN
	1    1600 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 5300 2700 5300
Connection ~ 1500 5800
Wire Wire Line
	1500 5800 1650 5800
Wire Wire Line
	1650 5800 1900 5800
$Comp
L Device:C_Small C3
U 1 1 5D3F6A57
P 9550 1600
F 0 "C3" V 9400 1600 39  0000 C CNN
F 1 "12pF" V 9450 1600 39  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9550 1600 50  0001 C CNN
F 3 "~" H 9550 1600 50  0001 C CNN
	1    9550 1600
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5D40079E
P 9700 1950
F 0 "#PWR011" H 9700 1700 50  0001 C CNN
F 1 "GND" H 9800 1800 50  0000 R CNN
F 2 "" H 9700 1950 50  0001 C CNN
F 3 "" H 9700 1950 50  0001 C CNN
	1    9700 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 1700 9400 1600
Wire Wire Line
	6100 4750 6250 4750
$Comp
L MCU_Microchip_ATmega:ATmega328P-AU U1
U 1 1 5D258DD6
P 8600 2300
F 0 "U1" H 7950 1400 50  0000 C CNN
F 1 "ATmega328P-AU" H 7750 1300 50  0000 C CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 8600 2300 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 8600 2300 50  0001 C CNN
	1    8600 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5D4931BE
P 8600 3800
F 0 "#PWR02" H 8600 3550 50  0001 C CNN
F 1 "GND" H 8605 3627 50  0000 C CNN
F 2 "" H 8600 3800 50  0001 C CNN
F 3 "" H 8600 3800 50  0001 C CNN
	1    8600 3800
	1    0    0    -1  
$EndComp
$Comp
L power:-5V #PWR044
U 1 1 5D4B18E1
P 4500 3200
F 0 "#PWR044" H 4500 3300 50  0001 C CNN
F 1 "-5V" H 4515 3373 50  0000 C CNN
F 2 "" H 4500 3200 50  0001 C CNN
F 3 "" H 4500 3200 50  0001 C CNN
	1    4500 3200
	-1   0    0    1   
$EndComp
Wire Wire Line
	4500 3200 4600 3200
$Comp
L power:-5V #PWR034
U 1 1 5D4EAB46
P 1350 6150
F 0 "#PWR034" H 1350 6250 50  0001 C CNN
F 1 "-5V" H 1365 6323 50  0000 C CNN
F 2 "" H 1350 6150 50  0001 C CNN
F 3 "" H 1350 6150 50  0001 C CNN
	1    1350 6150
	-1   0    0    1   
$EndComp
Connection ~ 1350 6150
$Comp
L power:GND #PWR08
U 1 1 5D5668DA
P 9900 3200
F 0 "#PWR08" H 9900 2950 50  0001 C CNN
F 1 "GND" V 9905 3072 50  0000 R CNN
F 2 "" H 9900 3200 50  0001 C CNN
F 3 "" H 9900 3200 50  0001 C CNN
	1    9900 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR049
U 1 1 5D633AA5
P 5750 3200
F 0 "#PWR049" H 5750 2950 50  0001 C CNN
F 1 "GND" H 5755 3027 50  0000 C CNN
F 2 "" H 5750 3200 50  0001 C CNN
F 3 "" H 5750 3200 50  0001 C CNN
	1    5750 3200
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 5D20209B
P 9700 3200
F 0 "SW1" H 9700 3485 50  0000 C CNN
F 1 "button" H 9700 3394 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 9700 3400 50  0001 C CNN
F 3 "~" H 9700 3400 50  0001 C CNN
	1    9700 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C12
U 1 1 5D24C39A
P 2850 2500
F 0 "C12" H 2942 2546 50  0000 L CNN
F 1 "1uF" H 2942 2455 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 2850 2500 50  0001 C CNN
F 3 "~" H 2850 2500 50  0001 C CNN
	1    2850 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 900  4900 900 
$Comp
L power:GND #PWR042
U 1 1 5D298258
P 4900 1100
F 0 "#PWR042" H 4900 850 50  0001 C CNN
F 1 "GND" H 4905 927 50  0000 C CNN
F 2 "" H 4900 1100 50  0001 C CNN
F 3 "" H 4900 1100 50  0001 C CNN
	1    4900 1100
	1    0    0    -1  
$EndComp
Text Label 2950 1400 2    50   ~ 0
WS_1
Text Label 9200 3500 0    50   ~ 0
WS_1
Text Label 9200 3400 0    50   ~ 0
WS_0
Text Label 2950 1600 2    50   ~ 0
WS_0
Wire Wire Line
	9200 3200 9500 3200
$Comp
L power:GND #PWR07
U 1 1 5D34D1C5
P 8400 4800
F 0 "#PWR07" H 8400 4550 50  0001 C CNN
F 1 "GND" H 8405 4627 50  0000 C CNN
F 2 "" H 8400 4800 50  0001 C CNN
F 3 "" H 8400 4800 50  0001 C CNN
	1    8400 4800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR027
U 1 1 5D365AB9
P 2350 3050
F 0 "#PWR027" H 2350 2800 50  0001 C CNN
F 1 "GND" H 2355 2877 50  0000 C CNN
F 2 "" H 2350 3050 50  0001 C CNN
F 3 "" H 2350 3050 50  0001 C CNN
	1    2350 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 3050 2950 3050
$Comp
L power:GND #PWR025
U 1 1 5D36AD35
P 2250 2850
F 0 "#PWR025" H 2250 2600 50  0001 C CNN
F 1 "GND" H 2255 2677 50  0000 C CNN
F 2 "" H 2250 2850 50  0001 C CNN
F 3 "" H 2250 2850 50  0001 C CNN
	1    2250 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 2850 2950 2850
$Comp
L power:GND #PWR029
U 1 1 5D370EFF
P 2500 3300
F 0 "#PWR029" H 2500 3050 50  0001 C CNN
F 1 "GND" H 2505 3127 50  0000 C CNN
F 2 "" H 2500 3300 50  0001 C CNN
F 3 "" H 2500 3300 50  0001 C CNN
	1    2500 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 3250 2950 3250
Text Label 9200 3300 0    50   ~ 0
sync
$Comp
L Switch:SW_Push SW2
U 1 1 5D1D7E30
P 10050 2600
F 0 "SW2" H 10050 2885 50  0000 C CNN
F 1 "button" H 10050 2794 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 10050 2800 50  0001 C CNN
F 3 "~" H 10050 2800 50  0001 C CNN
	1    10050 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal_Small Y1
U 1 1 5D264732
P 9400 1800
F 0 "Y1" V 9450 1700 39  0000 R CNN
F 1 "16MHz" V 9400 1750 39  0000 R CNN
F 2 "Crystal:Crystal_SMD_ECS_CSM3X-2Pin_7.6x4.1mm" H 9400 1800 50  0001 C CNN
F 3 "~" H 9400 1800 50  0001 C CNN
	1    9400 1800
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C4
U 1 1 5D3F77ED
P 9550 1950
F 0 "C4" V 9450 1950 39  0000 C CNN
F 1 "12pF" V 9400 1950 39  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9550 1950 50  0001 C CNN
F 3 "~" H 9550 1950 50  0001 C CNN
	1    9550 1950
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R1
U 1 1 5D2CC458
P 9500 2500
F 0 "R1" H 9568 2546 50  0000 L CNN
F 1 "10k" H 9568 2455 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 9500 2500 50  0001 C CNN
F 3 "~" H 9500 2500 50  0001 C CNN
	1    9500 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 5D2E0ABB
P 10250 2600
F 0 "#PWR013" H 10250 2350 50  0001 C CNN
F 1 "GND" V 10255 2472 50  0000 R CNN
F 2 "" H 10250 2600 50  0001 C CNN
F 3 "" H 10250 2600 50  0001 C CNN
	1    10250 2600
	1    0    0    -1  
$EndComp
Text Label 9200 1600 0    50   ~ 0
SCK
Text Label 8400 5300 2    50   ~ 0
SCK
Text Label 9200 1400 0    50   ~ 0
MOSI
Text Label 8400 5450 2    50   ~ 0
MOSI
Text Label 8400 5750 2    50   ~ 0
DC
Text Label 9200 3100 0    50   ~ 0
DC
Text Label 9200 3000 0    50   ~ 0
CS
Text Label 8400 5950 2    50   ~ 0
CS
Wire Wire Line
	2550 1800 2950 1800
$Comp
L power:GND #PWR037
U 1 1 5D442F1B
P 4350 3450
F 0 "#PWR037" H 4350 3200 50  0001 C CNN
F 1 "GND" H 4355 3277 50  0000 C CNN
F 2 "" H 4350 3450 50  0001 C CNN
F 3 "" H 4350 3450 50  0001 C CNN
	1    4350 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR040
U 1 1 5D47BA82
P 4650 2750
F 0 "#PWR040" H 4650 2500 50  0001 C CNN
F 1 "GND" H 4750 2650 50  0000 C CNN
F 2 "" H 4650 2750 50  0001 C CNN
F 3 "" H 4650 2750 50  0001 C CNN
	1    4650 2750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR041
U 1 1 5D47C595
P 4800 2500
F 0 "#PWR041" H 4800 2250 50  0001 C CNN
F 1 "GND" H 4900 2400 50  0000 C CNN
F 2 "" H 4800 2500 50  0001 C CNN
F 3 "" H 4800 2500 50  0001 C CNN
	1    4800 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR043
U 1 1 5D47D00A
P 4900 2250
F 0 "#PWR043" H 4900 2000 50  0001 C CNN
F 1 "GND" H 5000 2150 50  0000 C CNN
F 2 "" H 4900 2250 50  0001 C CNN
F 3 "" H 4900 2250 50  0001 C CNN
	1    4900 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 2250 4900 2250
Wire Wire Line
	4350 2500 4800 2500
Wire Wire Line
	4350 2750 4650 2750
$Comp
L power:GND #PWR01
U 1 1 5D23BDF9
P 7800 1300
F 0 "#PWR01" H 7800 1050 50  0001 C CNN
F 1 "GND" H 7805 1127 50  0000 C CNN
F 2 "" H 7800 1300 50  0001 C CNN
F 3 "" H 7800 1300 50  0001 C CNN
	1    7800 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5D23CC74
P 7800 1200
F 0 "C1" H 7650 1200 50  0000 C CNN
F 1 "100nF" H 7650 1100 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7800 1200 50  0001 C CNN
F 3 "~" H 7800 1200 50  0001 C CNN
	1    7800 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 1100 8000 1100
$Comp
L wavegenerator_v1:SP3T_V1 SW3
U 1 1 5D250C2F
P 1800 2650
F 0 "SW3" H 1550 2150 50  0000 C CNN
F 1 "SP3T" H 1550 2250 50  0000 C CNN
F 2 "wavegenerator_v1:SP3T_OS103011MS8QP1" H 1800 2600 50  0001 C CNN
F 3 "" H 1800 2600 50  0001 C CNN
	1    1800 2650
	-1   0    0    1   
$EndComp
$Comp
L Regulator_Linear:AP1117-33 U3
U 1 1 5D2563E2
P 4250 4800
F 0 "U3" H 4250 5050 50  0000 C CNN
F 1 "LinReg" H 4250 4950 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 4250 4600 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm337-n.pdf" H 4250 4800 50  0001 C CNN
	1    4250 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C11
U 1 1 5D262775
P 4600 4900
F 0 "C11" H 4350 4950 50  0000 L CNN
F 1 "0.1uF" H 4300 4850 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4600 4900 50  0001 C CNN
F 3 "~" H 4600 4900 50  0001 C CNN
	1    4600 4900
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR021
U 1 1 5D26D34C
P 4600 5000
F 0 "#PWR021" H 4600 4750 50  0001 C CNN
F 1 "GND" H 4605 4827 50  0000 C CNN
F 2 "" H 4600 5000 50  0001 C CNN
F 3 "" H 4600 5000 50  0001 C CNN
	1    4600 5000
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C8
U 1 1 5D26DF01
P 3900 4900
F 0 "C8" H 3992 4946 50  0000 L CNN
F 1 "0.1uF" H 3992 4855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3900 4900 50  0001 C CNN
F 3 "~" H 3900 4900 50  0001 C CNN
	1    3900 4900
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 5D26F0CA
P 3900 5000
F 0 "#PWR017" H 3900 4750 50  0001 C CNN
F 1 "GND" H 3905 4827 50  0000 C CNN
F 2 "" H 3900 5000 50  0001 C CNN
F 3 "" H 3900 5000 50  0001 C CNN
	1    3900 5000
	-1   0    0    -1  
$EndComp
Text Label 8400 5600 2    50   ~ 0
reset
Text Label 9200 2500 0    50   ~ 0
reset
$Comp
L Device:R_Small_US R5
U 1 1 5D3F0A60
P 2950 3600
F 0 "R5" H 2750 3700 50  0000 L CNN
F 1 "470" H 2750 3600 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 2950 3600 50  0001 C CNN
F 3 "~" H 2950 3600 50  0001 C CNN
	1    2950 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R6
U 1 1 5D3F3254
P 3150 3750
F 0 "R6" V 3050 3700 50  0000 L CNN
F 1 "1k" V 2950 3700 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 3150 3750 50  0001 C CNN
F 3 "~" H 3150 3750 50  0001 C CNN
	1    3150 3750
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR031
U 1 1 5D413147
P 3450 3750
F 0 "#PWR031" H 3450 3500 50  0001 C CNN
F 1 "GND" H 3455 3577 50  0000 C CNN
F 2 "" H 3450 3750 50  0001 C CNN
F 3 "" H 3450 3750 50  0001 C CNN
	1    3450 3750
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR05
U 1 1 5D45597C
P 8100 5150
F 0 "#PWR05" H 8100 5000 50  0001 C CNN
F 1 "+3.3V" H 8115 5323 50  0000 C CNN
F 2 "" H 8100 5150 50  0001 C CNN
F 3 "" H 8100 5150 50  0001 C CNN
	1    8100 5150
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR06
U 1 1 5D45677E
P 8100 6150
F 0 "#PWR06" H 8100 6000 50  0001 C CNN
F 1 "+3.3V" H 8115 6323 50  0000 C CNN
F 2 "" H 8100 6150 50  0001 C CNN
F 3 "" H 8100 6150 50  0001 C CNN
	1    8100 6150
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR024
U 1 1 5D457164
P 4600 4800
F 0 "#PWR024" H 4600 4650 50  0001 C CNN
F 1 "+3.3V" H 4615 4973 50  0000 C CNN
F 2 "" H 4600 4800 50  0001 C CNN
F 3 "" H 4600 4800 50  0001 C CNN
	1    4600 4800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8100 5150 8400 5150
Wire Wire Line
	8100 6150 8400 6150
$Comp
L power:+3.3V #PWR010
U 1 1 5D480BD5
P 9500 2400
F 0 "#PWR010" H 9500 2250 50  0001 C CNN
F 1 "+3.3V" H 9650 2500 50  0000 C CNN
F 2 "" H 9500 2400 50  0001 C CNN
F 3 "" H 9500 2400 50  0001 C CNN
	1    9500 2400
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR04
U 1 1 5D48197E
P 8600 800
F 0 "#PWR04" H 8600 650 50  0001 C CNN
F 1 "+3.3V" H 8615 973 50  0000 C CNN
F 2 "" H 8600 800 50  0001 C CNN
F 3 "" H 8600 800 50  0001 C CNN
	1    8600 800 
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 5D256A11
P 750 7050
F 0 "H1" H 850 7096 50  0000 L CNN
F 1 "2.1mm" H 850 7005 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.1mm" H 750 7050 50  0001 C CNN
F 3 "~" H 750 7050 50  0001 C CNN
	1    750  7050
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5D2576B4
P 1850 7050
F 0 "H3" H 1950 7096 50  0000 L CNN
F 1 "2.1mm" H 1950 7005 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.1mm" H 1850 7050 50  0001 C CNN
F 3 "~" H 1850 7050 50  0001 C CNN
	1    1850 7050
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5D257F42
P 1300 7050
F 0 "H2" H 1400 7096 50  0000 L CNN
F 1 "2.1mm" H 1400 7005 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.1mm" H 1300 7050 50  0001 C CNN
F 3 "~" H 1300 7050 50  0001 C CNN
	1    1300 7050
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5D25900A
P 2400 7050
F 0 "H4" H 2500 7096 50  0000 L CNN
F 1 "2.1mm" H 2500 7005 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.1mm" H 2400 7050 50  0001 C CNN
F 3 "~" H 2400 7050 50  0001 C CNN
	1    2400 7050
	1    0    0    -1  
$EndComp
$Comp
L wavegenerator_v1:TFT_LCD MOD1
U 1 1 5D34C1D1
P 8600 4400
F 0 "MOD1" H 9728 3396 50  0000 L CNN
F 1 "TFT_LCD" H 9728 3305 50  0000 L CNN
F 2 "wavegenerator_v1:TFT_LCD_ST7735" H 9050 4350 50  0001 C CNN
F 3 "" H 9050 4350 50  0001 C CNN
	1    8600 4400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR015
U 1 1 5D2583C1
P 3900 4800
F 0 "#PWR015" H 3900 4650 50  0001 C CNN
F 1 "+5V" H 3915 4973 50  0000 C CNN
F 2 "" H 3900 4800 50  0001 C CNN
F 3 "" H 3900 4800 50  0001 C CNN
	1    3900 4800
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR019
U 1 1 5D2D2AA1
P 4250 5100
F 0 "#PWR019" H 4250 4850 50  0001 C CNN
F 1 "GND" H 4255 4927 50  0000 C CNN
F 2 "" H 4250 5100 50  0001 C CNN
F 3 "" H 4250 5100 50  0001 C CNN
	1    4250 5100
	-1   0    0    -1  
$EndComp
Text Label 10000 1050 2    50   ~ 0
SCK
$Comp
L wavegenerator_v1:PinHeaders J1
U 1 1 5D2280FD
P 10200 800
F 0 "J1" H 10100 850 50  0000 C CNN
F 1 "01x06" H 10100 750 50  0000 C CNN
F 2 "wavegenerator_v1:01x06_pin_header" H 10200 800 50  0001 C CNN
F 3 "~" H 10200 800 50  0001 C CNN
	1    10200 800 
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9850 1350 10000 1350
Text Label 10000 1150 2    50   ~ 0
MOSI
$Comp
L wavegenerator_v1:1x2Pinheader J6
U 1 1 5D3E4848
P 5250 2750
F 0 "J6" H 5200 2250 50  0000 C CNN
F 1 "1x2Pinheader" H 5300 2150 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 5250 2900 50  0001 C CNN
F 3 "" H 5250 2900 50  0001 C CNN
	1    5250 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 3000 5550 3000
$Comp
L power:GND #PWR046
U 1 1 5D3EB0AC
P 5450 3100
F 0 "#PWR046" H 5450 2850 50  0001 C CNN
F 1 "GND" H 5550 3000 50  0000 C CNN
F 2 "" H 5450 3100 50  0001 C CNN
F 3 "" H 5450 3100 50  0001 C CNN
	1    5450 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 6150 1350 5800
$Comp
L Connector:TestPoint TP4
U 1 1 5D268AD4
P 4100 7200
F 0 "TP4" H 4042 7226 50  0000 R CNN
F 1 "-5V" H 4042 7317 50  0000 R CNN
F 2 "TestPoint:TestPoint_THTPad_2.5x2.5mm_Drill1.2mm" H 4300 7200 50  0001 C CNN
F 3 "~" H 4300 7200 50  0001 C CNN
	1    4100 7200
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP3
U 1 1 5D26952B
P 5500 6950
F 0 "TP3" H 5558 7068 50  0000 L CNN
F 1 "+5 V" H 5550 7150 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_2.5x2.5mm_Drill1.2mm" H 5700 6950 50  0001 C CNN
F 3 "~" H 5700 6950 50  0001 C CNN
	1    5500 6950
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint TP2
U 1 1 5D26BA00
P 5150 6950
F 0 "TP2" H 5208 7068 50  0000 L CNN
F 1 "3.3 V" H 5200 7150 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_2.5x2.5mm_Drill1.2mm" H 5350 6950 50  0001 C CNN
F 3 "~" H 5350 6950 50  0001 C CNN
	1    5150 6950
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint TP1
U 1 1 5D270D8D
P 4350 7200
F 0 "TP1" H 4408 7318 50  0000 L CNN
F 1 "GND" H 4408 7227 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_2.5x2.5mm_Drill1.2mm" H 4550 7200 50  0001 C CNN
F 3 "~" H 4550 7200 50  0001 C CNN
	1    4350 7200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR018
U 1 1 5D27625C
P 4350 7200
F 0 "#PWR018" H 4350 6950 50  0001 C CNN
F 1 "GND" H 4355 7027 50  0000 C CNN
F 2 "" H 4350 7200 50  0001 C CNN
F 3 "" H 4350 7200 50  0001 C CNN
	1    4350 7200
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C9
U 1 1 5D573068
P 1950 2700
F 0 "C9" H 2042 2746 50  0000 L CNN
F 1 "220pF" H 2042 2655 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 1950 2700 50  0001 C CNN
F 3 "~" H 1950 2700 50  0001 C CNN
	1    1950 2700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5D57D3C7
P 1950 2850
F 0 "#PWR0101" H 1950 2600 50  0001 C CNN
F 1 "GND" H 1955 2677 50  0000 C CNN
F 2 "" H 1950 2850 50  0001 C CNN
F 3 "" H 1950 2850 50  0001 C CNN
	1    1950 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R12
U 1 1 5D827863
P 5550 2550
F 0 "R12" H 5350 2500 50  0000 L CNN
F 1 "560" H 5350 2600 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 5550 2550 50  0001 C CNN
F 3 "~" H 5550 2550 50  0001 C CNN
	1    5550 2550
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5D841218
P 4350 1600
F 0 "#PWR0102" H 4350 1350 50  0001 C CNN
F 1 "GND" H 4355 1427 50  0000 C CNN
F 2 "" H 4350 1600 50  0001 C CNN
F 3 "" H 4350 1600 50  0001 C CNN
	1    4350 1600
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM318N U7
U 1 1 5D87307D
P 5350 1450
F 0 "U7" H 5694 1496 50  0000 L CNN
F 1 "LM318N" H 5694 1405 50  0000 L CNN
F 2 "wavegenerator_v1:LM318N" H 5350 1450 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm318-n.pdf" H 5350 1450 50  0001 C CNN
	1    5350 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C18
U 1 1 5D881B41
P 5300 2250
F 0 "C18" V 5200 2250 50  0000 C CNN
F 1 "5pF" V 5100 2250 50  0000 C CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 5300 2250 50  0001 C CNN
F 3 "~" H 5300 2250 50  0001 C CNN
	1    5300 2250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5100 1150 5250 1150
Wire Wire Line
	5050 1550 5050 1900
Wire Wire Line
	5050 1900 5200 1900
Wire Wire Line
	5400 1900 5650 1900
Wire Wire Line
	5050 1900 5050 2250
Wire Wire Line
	5050 2250 5200 2250
Connection ~ 5050 1900
Wire Wire Line
	5400 2250 5650 2250
Wire Wire Line
	5650 2250 5650 1900
Connection ~ 5650 1900
$Comp
L power:-5V #PWR0104
U 1 1 5D8F3FBC
P 5250 1750
F 0 "#PWR0104" H 5250 1850 50  0001 C CNN
F 1 "-5V" H 5350 1750 50  0000 C CNN
F 2 "" H 5250 1750 50  0001 C CNN
F 3 "" H 5250 1750 50  0001 C CNN
	1    5250 1750
	-1   0    0    1   
$EndComp
Wire Wire Line
	5650 1450 5650 1900
Wire Wire Line
	4350 1100 4350 1200
Wire Wire Line
	4350 1600 4350 1500
$Comp
L power:+3.3V #PWR0106
U 1 1 5DA31049
P 5150 6950
F 0 "#PWR0106" H 5150 6800 50  0001 C CNN
F 1 "+3.3V" H 5165 7123 50  0000 C CNN
F 2 "" H 5150 6950 50  0001 C CNN
F 3 "" H 5150 6950 50  0001 C CNN
	1    5150 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	650  4900 1250 4900
$Comp
L power:+5V #PWR0107
U 1 1 5DA3D54D
P 5500 6950
F 0 "#PWR0107" H 5500 6800 50  0001 C CNN
F 1 "+5V" H 5515 7123 50  0000 C CNN
F 2 "" H 5500 6950 50  0001 C CNN
F 3 "" H 5500 6950 50  0001 C CNN
	1    5500 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 6150 2700 6150
$Comp
L power:-5V #PWR0108
U 1 1 5DA4D2EB
P 4100 7200
F 0 "#PWR0108" H 4100 7300 50  0001 C CNN
F 1 "-5V" H 4115 7373 50  0000 C CNN
F 2 "" H 4100 7200 50  0001 C CNN
F 3 "" H 4100 7200 50  0001 C CNN
	1    4100 7200
	-1   0    0    1   
$EndComp
Connection ~ 1850 1200
Wire Wire Line
	1850 1200 1850 1300
Wire Wire Line
	2850 2200 2950 2200
Connection ~ 2850 2200
Wire Wire Line
	1400 1200 1850 1200
Wire Wire Line
	2550 1800 2550 2350
Wire Wire Line
	3250 3750 3450 3750
Wire Wire Line
	2700 5300 3100 5300
Wire Wire Line
	3100 5300 3100 5500
Connection ~ 2700 5300
Wire Wire Line
	4500 1350 5050 1350
$Comp
L Connector:Conn_Coaxial J3
U 1 1 5D6293F8
P 5750 3000
F 0 "J3" H 5700 3250 50  0000 L CNN
F 1 "Conn_Coaxial" H 5600 3150 50  0000 L CNN
F 2 "wavegenerator_v1:BNC_connector_731000105" H 5750 3000 50  0001 C CNN
F 3 " ~" H 5750 3000 50  0001 C CNN
	1    5750 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 2250 1600 2250
Wire Wire Line
	1600 2250 1600 1850
Wire Wire Line
	1600 1850 1250 1850
Wire Wire Line
	1950 2800 1950 2850
Wire Wire Line
	1950 2600 1600 2600
Connection ~ 1600 2600
Wire Wire Line
	2050 2350 2550 2350
Wire Wire Line
	2850 1100 2950 1100
Wire Wire Line
	2450 1100 2650 1100
Wire Wire Line
	1850 1100 1850 1200
Wire Wire Line
	1850 1100 2150 1100
Wire Wire Line
	4350 3000 4350 2750
Connection ~ 4350 2750
Wire Wire Line
	4350 3300 4350 3450
Connection ~ 4350 3450
Wire Wire Line
	4350 3200 4500 3200
Connection ~ 4500 3200
Wire Wire Line
	5650 2250 5650 2350
Wire Wire Line
	5650 2350 5550 2350
Wire Wire Line
	5550 2350 5550 2450
Connection ~ 5650 2250
Wire Wire Line
	5550 2650 5550 3000
Connection ~ 5550 3000
Wire Wire Line
	9200 1700 9400 1700
Connection ~ 9400 1700
Wire Wire Line
	9200 1800 9250 1800
Wire Wire Line
	9250 1800 9250 1900
Wire Wire Line
	9250 1900 9400 1900
Wire Wire Line
	9700 1600 9700 1950
Wire Wire Line
	9650 1950 9700 1950
Connection ~ 9700 1950
Wire Wire Line
	9400 1900 9400 1950
Wire Wire Line
	9400 1950 9450 1950
Connection ~ 9400 1900
Wire Wire Line
	9650 1600 9700 1600
Wire Wire Line
	9400 1600 9450 1600
Wire Wire Line
	9200 1500 9450 1500
Wire Wire Line
	9200 2600 9500 2600
Connection ~ 9500 2600
Wire Wire Line
	9500 2600 9850 2600
Connection ~ 9850 2600
Wire Wire Line
	9850 2600 9850 1350
Wire Wire Line
	9450 1500 9450 950 
Wire Wire Line
	9450 950  10000 950 
Wire Wire Line
	7900 800  8600 800 
Wire Wire Line
	4550 4800 4600 4800
Connection ~ 4600 4800
Wire Wire Line
	3900 4800 3950 4800
Connection ~ 3900 4800
Text Notes 9750 4250 0    118  ~ 0
Microcontroller
Text Notes 10050 6400 0    118  ~ 0
LCD Module
Wire Wire Line
	2950 3700 2950 3750
Wire Wire Line
	2950 3750 3050 3750
Text Label 2950 3750 2    50   ~ 0
sync
Text Notes 6650 4200 2    118  ~ 0
Function Generator
Wire Notes Line
	500  500  11150 500 
Wire Notes Line
	500  4300 11150 4300
Wire Notes Line
	11150 500  11150 6500
Text Notes 6600 6400 2    118  ~ 0
Power Supplies
Wire Notes Line
	500  6500 11150 6500
Wire Notes Line
	500  500  500  7750
Wire Notes Line
	6850 500  6850 7750
Text Notes 3300 7700 2    118  ~ 0
Mounting Holes
Wire Notes Line
	3550 7750 3550 6500
Wire Notes Line
	500  7750 6850 7750
Text Notes 6600 7700 2    118  ~ 0
Test Points
Text Notes 6300 5750 2    79   ~ 0
5V USB Bus
Text Notes 4950 5500 2    79   ~ 0
3.3V Linear Regulator
Text Notes 10150 1750 0    79   ~ 0
Programming\nPin Headers
Text Notes 6200 3550 2    79   ~ 0
Output Connectors
Text Notes 6300 1250 2    79   ~ 0
Amplitude \nController
Text Notes 1750 3350 2    79   ~ 0
Frequency \nBand Adjust
Text Notes 8200 7500 2    79   ~ 0
Wavegenerator
Text Notes 8850 7650 2    59   ~ 0
July 15th, 2019
Text Notes 10750 7650 2    59   ~ 0
1.0\n
Text Notes 2300 6400 2    79   ~ 0
-5V Inverter
Wire Wire Line
	1850 1200 2950 1200
NoConn ~ 5350 1750
NoConn ~ 5450 1750
NoConn ~ 5350 1150
$EndSCHEMATC
