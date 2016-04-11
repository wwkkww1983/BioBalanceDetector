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
LIBS:proto03_library_v15
LIBS:BBDProto03-cache
EELAYER 25 0
EELAYER END
$Descr A2 23386 16535
encoding utf-8
Sheet 1 1
Title "Bio Balance Detector - Proto #3"
Date "2016-04-06"
Rev "B"
Comp "Andras Fuchs (andras.fuchs@gmail.com)"
Comment1 "pin 6: SPI-MISO | pin 7: SPI-MOSI | pin 8: DAC-SS | pin 9: ADC-SS | pin 10: uC-SS"
Comment2 "pin 1: +3.3V | pin 2: Vcc | pin 3: ADC-Vref | pin 4: GND | pin 5: SPI-SCK"
Comment3 "P3 PINOUT"
Comment4 "SPI Controlled Arduino Uno Multiplexer Shield"
$EndDescr
$Comp
L CONN_8 P1
U 1 1 5517C2C1
P 8700 2000
F 0 "P1" V 8650 2000 60  0000 C CNN
F 1 "Power" V 8750 2000 60  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x08" H 8700 2000 60  0001 C CNN
F 3 "" H 8700 2000 60  0000 C CNN
	1    8700 2000
	1    0    0    -1  
$EndComp
$Comp
L CONN_6 P2
U 1 1 5517C323
P 8700 950
F 0 "P2" V 8650 950 60  0000 C CNN
F 1 "Analog" V 8750 950 60  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x06" H 8700 950 60  0001 C CNN
F 3 "" H 8700 950 60  0000 C CNN
	1    8700 950 
	1    0    0    -1  
$EndComp
$Comp
L CONN_8 P4
U 1 1 5517C366
P 850 3400
F 0 "P4" V 800 3400 60  0000 C CNN
F 1 "Digital" V 900 3400 60  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x08" H 850 3400 60  0001 C CNN
F 3 "" H 850 3400 60  0000 C CNN
	1    850  3400
	-1   0    0    -1  
$EndComp
$Comp
L CONN_10 P3
U 1 1 5517C46C
P 850 6550
F 0 "P3" V 800 6550 60  0000 C CNN
F 1 "Digital" V 900 6550 60  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x10" H 850 6575 60  0001 C CNN
F 3 "" H 850 6550 60  0000 C CNN
	1    850  6550
	-1   0    0    -1  
$EndComp
Text Label 7600 1850 0    60   ~ 0
Reset
Text Label 7600 700  0    60   ~ 0
A0
Text Label 7600 800  0    60   ~ 0
A1
Text Label 7600 900  0    60   ~ 0
A2
Text Label 7600 1000 0    60   ~ 0
A3
Text Label 7600 1100 0    60   ~ 0
A4(SDA)
Text Label 7600 1200 0    60   ~ 0
A5(SCL)
Text Label 1350 3750 0    60   ~ 0
0(Rx)
Text Label 1350 3550 0    60   ~ 0
2
Text Label 1350 3650 0    60   ~ 0
1(Tx)
Text Label 1350 3450 0    60   ~ 0
3(**)
Text Label 1350 3350 0    60   ~ 0
4
Text Label 1350 3250 0    60   ~ 0
5(**)
Text Label 1350 3150 0    60   ~ 0
6(**)
Text Label 1350 3050 0    60   ~ 0
7
Text Label 1350 7000 0    60   ~ 0
8
Text Label 1350 6900 0    60   ~ 0
9(**)
Text Label 1350 6800 0    60   ~ 0
10(**/SS)
Text Label 1350 6700 0    60   ~ 0
11(**/MOSI)
Text Label 1350 6600 0    60   ~ 0
12(MISO)
Text Label 1350 6300 0    60   ~ 0
AREF
Text Label 1350 6200 0    60   ~ 0
A4(SDA)
Text Label 1350 6100 0    60   ~ 0
A5(SCL)
$Comp
L CONN_1 P5
U 1 1 551BBC06
P 775 800
F 0 "P5" H 855 800 40  0000 L CNN
F 1 "CONN_1" H 775 855 30  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 775 800 60  0001 C CNN
F 3 "" H 775 800 60  0000 C CNN
	1    775  800 
	0    -1   -1   0   
$EndComp
$Comp
L CONN_1 P6
U 1 1 551BBD10
P 850 800
F 0 "P6" H 930 800 40  0000 L CNN
F 1 "CONN_1" H 850 855 30  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 850 800 60  0001 C CNN
F 3 "" H 850 800 60  0000 C CNN
	1    850  800 
	0    -1   -1   0   
$EndComp
$Comp
L CONN_1 P7
U 1 1 551BBD30
P 925 800
F 0 "P7" H 1005 800 40  0000 L CNN
F 1 "CONN_1" H 925 855 30  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 925 800 60  0001 C CNN
F 3 "" H 925 800 60  0000 C CNN
	1    925  800 
	0    -1   -1   0   
$EndComp
$Comp
L CONN_1 P8
U 1 1 551BBD52
P 1000 800
F 0 "P8" H 1080 800 40  0000 L CNN
F 1 "CONN_1" H 1000 855 30  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 1000 800 60  0001 C CNN
F 3 "" H 1000 800 60  0000 C CNN
	1    1000 800 
	0    -1   -1   0   
$EndComp
Text Notes 775  1075 0    60   ~ 0
Holes
NoConn ~ 775  950 
NoConn ~ 850  950 
NoConn ~ 925  950 
NoConn ~ 1000 950 
$Comp
L LTC1864 U2
U 1 1 56EC3FD8
P 4600 5700
F 0 "U2" H 4100 6100 50  0000 C CNN
F 1 "LTC1864" H 4950 5300 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 4600 5700 50  0001 C CIN
F 3 "" H 4600 5700 50  0000 C CNN
	1    4600 5700
	1    0    0    -1  
$EndComp
$Comp
L CD74HC4067 U10
U 1 1 56F2D240
P 8750 8950
F 0 "U10" H 8250 9850 50  0000 C CNN
F 1 "CD74HC4067" H 9050 8050 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-24_7.5x15.4mm_Pitch1.27mm" H 8750 9650 50  0001 C CIN
F 3 "" H 8750 8950 50  0000 C CNN
	1    8750 8950
	1    0    0    -1  
$EndComp
$Comp
L ATTINY861-20SU U1
U 1 1 56F2D18C
P 4950 8200
F 0 "U1" H 4100 9150 50  0000 C CNN
F 1 "ATTINY861-20SU" H 5600 7250 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-20_7.5x12.8mm_Pitch1.27mm" H 4950 8200 50  0001 C CIN
F 3 "" H 4950 8200 50  0000 C CNN
	1    4950 8200
	1    0    0    -1  
$EndComp
$Comp
L CD74HC4067 U11
U 1 1 56F30E0E
P 12500 2400
F 0 "U11" H 12000 3300 50  0000 C CNN
F 1 "CD74HC4067" H 12800 1500 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-24_7.5x15.4mm_Pitch1.27mm" H 12500 3100 50  0001 C CIN
F 3 "" H 12500 2400 50  0000 C CNN
	1    12500 2400
	1    0    0    -1  
$EndComp
$Comp
L CD74HC4067 U13
U 1 1 56F313F5
P 12500 6550
F 0 "U13" H 12000 7450 50  0000 C CNN
F 1 "CD74HC4067" H 12800 5650 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-24_7.5x15.4mm_Pitch1.27mm" H 12500 7250 50  0001 C CIN
F 3 "" H 12500 6550 50  0000 C CNN
	1    12500 6550
	1    0    0    -1  
$EndComp
$Comp
L CD74HC4067 U12
U 1 1 56F31444
P 12500 4400
F 0 "U12" H 12000 5300 50  0000 C CNN
F 1 "CD74HC4067" H 12800 3500 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-24_7.5x15.4mm_Pitch1.27mm" H 12500 5100 50  0001 C CIN
F 3 "" H 12500 4400 50  0000 C CNN
	1    12500 4400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 56F3079F
P 1300 7350
F 0 "#PWR01" H 1300 7100 50  0001 C CNN
F 1 "GND" H 1300 7200 50  0000 C CNN
F 2 "" H 1300 7350 50  0000 C CNN
F 3 "" H 1300 7350 50  0000 C CNN
	1    1300 7350
	1    0    0    -1  
$EndComp
Text Label 1350 6500 0    60   ~ 0
13(SCK)
$Comp
L GND #PWR02
U 1 1 56F42B75
P 8150 3025
F 0 "#PWR02" H 8150 2775 50  0001 C CNN
F 1 "GND" H 8150 2875 50  0000 C CNN
F 2 "" H 8150 3025 50  0000 C CNN
F 3 "" H 8150 3025 50  0000 C CNN
	1    8150 3025
	1    0    0    -1  
$EndComp
Text Label 7600 1950 0    60   ~ 0
+3.3V
Text Label 7600 2050 0    60   ~ 0
+5.0V
Text Label 7600 1750 0    60   ~ 0
IOREF
NoConn ~ 7450 1650
Text Label 7600 2350 0    60   ~ 0
Vin
$Comp
L CONN_02X08 P11
U 1 1 56F40CD8
P 14200 2300
F 0 "P11" H 14200 2750 50  0000 C CNN
F 1 "CONN_02X08" V 14200 2300 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_2x08" H 14200 1100 50  0001 C CNN
F 3 "" H 14200 1100 50  0000 C CNN
	1    14200 2300
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X08 P12
U 1 1 56F42012
P 14200 4400
F 0 "P12" H 14200 4850 50  0000 C CNN
F 1 "CONN_02X08" V 14200 4400 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_2x08" H 14200 3200 50  0001 C CNN
F 3 "" H 14200 3200 50  0000 C CNN
	1    14200 4400
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X08 P13
U 1 1 56F42083
P 14200 6550
F 0 "P13" H 14200 7000 50  0000 C CNN
F 1 "CONN_02X08" V 14200 6550 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_2x08" H 14200 5350 50  0001 C CNN
F 3 "" H 14200 5350 50  0000 C CNN
	1    14200 6550
	1    0    0    -1  
$EndComp
NoConn ~ 7450 1750
NoConn ~ 7450 2350
NoConn ~ 1800 3750
NoConn ~ 1800 3650
NoConn ~ 1800 3550
NoConn ~ 1800 3450
NoConn ~ 1800 3350
NoConn ~ 1800 3250
NoConn ~ 1800 3150
NoConn ~ 1800 3050
NoConn ~ 7550 700 
NoConn ~ 7550 800 
NoConn ~ 7550 900 
NoConn ~ 7550 1000
NoConn ~ 9450 9000
NoConn ~ 9450 9100
NoConn ~ 9450 9200
NoConn ~ 9450 9300
NoConn ~ 9450 9400
NoConn ~ 9450 9500
NoConn ~ 9450 9600
NoConn ~ 9450 9700
$Comp
L MCP4822 U3
U 1 1 57055444
P 4600 4000
F 0 "U3" H 4100 4400 50  0000 C CNN
F 1 "MCP4822" H 4900 3600 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 4600 4200 50  0001 C CIN
F 3 "" H 4600 3500 50  0000 C CNN
	1    4600 4000
	1    0    0    -1  
$EndComp
NoConn ~ 5300 3850
$Comp
L CD74HC4067 U14
U 1 1 57070CA1
P 12550 8650
F 0 "U14" H 12050 9550 50  0000 C CNN
F 1 "CD74HC4067" H 12850 7750 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-24_7.5x15.4mm_Pitch1.27mm" H 12550 9350 50  0001 C CIN
F 3 "" H 12550 8650 50  0000 C CNN
	1    12550 8650
	1    0    0    -1  
$EndComp
NoConn ~ 7450 2050
$Comp
L CONN_02X08 P14
U 1 1 5708221C
P 14250 8650
F 0 "P14" H 14250 9100 50  0000 C CNN
F 1 "CONN_02X08" V 14250 8650 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_2x08" H 14250 7450 50  0001 C CNN
F 3 "" H 14250 7450 50  0000 C CNN
	1    14250 8650
	1    0    0    -1  
$EndComp
NoConn ~ 6100 8700
$Comp
L CONN_02X05 P9
U 1 1 57067500
P 5050 10400
F 0 "P9" H 5050 10700 50  0000 C CNN
F 1 "CONN_02X05" H 5050 10100 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_2x05" H 5050 9200 50  0001 C CNN
F 3 "" H 5050 9200 50  0000 C CNN
	1    5050 10400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 57068270
P 5850 11000
F 0 "#PWR03" H 5850 10750 50  0001 C CNN
F 1 "GND" H 5850 10850 50  0000 C CNN
F 2 "" H 5850 11000 50  0000 C CNN
F 3 "" H 5850 11000 50  0000 C CNN
	1    5850 11000
	1    0    0    -1  
$EndComp
NoConn ~ 5300 10300
NoConn ~ 5300 10400
NoConn ~ 6100 8900
$Comp
L CD74HC4067 U15
U 1 1 5709E2E1
P 18150 2400
F 0 "U15" H 17650 3300 50  0000 C CNN
F 1 "CD74HC4067" H 18450 1500 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-24_7.5x15.4mm_Pitch1.27mm" H 18150 3100 50  0001 C CIN
F 3 "" H 18150 2400 50  0000 C CNN
	1    18150 2400
	1    0    0    -1  
$EndComp
$Comp
L CD74HC4067 U17
U 1 1 5709E2E7
P 18150 6550
F 0 "U17" H 17650 7450 50  0000 C CNN
F 1 "CD74HC4067" H 18450 5650 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-24_7.5x15.4mm_Pitch1.27mm" H 18150 7250 50  0001 C CIN
F 3 "" H 18150 6550 50  0000 C CNN
	1    18150 6550
	1    0    0    -1  
$EndComp
$Comp
L CD74HC4067 U16
U 1 1 5709E2ED
P 18150 4400
F 0 "U16" H 17650 5300 50  0000 C CNN
F 1 "CD74HC4067" H 18450 3500 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-24_7.5x15.4mm_Pitch1.27mm" H 18150 5100 50  0001 C CIN
F 3 "" H 18150 4400 50  0000 C CNN
	1    18150 4400
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X08 P15
U 1 1 5709E2F3
P 19850 2300
F 0 "P15" H 19850 2750 50  0000 C CNN
F 1 "CONN_02X08" V 19850 2300 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_2x08" H 19850 1100 50  0001 C CNN
F 3 "" H 19850 1100 50  0000 C CNN
	1    19850 2300
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X08 P16
U 1 1 5709E2F9
P 19850 4400
F 0 "P16" H 19850 4850 50  0000 C CNN
F 1 "CONN_02X08" V 19850 4400 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_2x08" H 19850 3200 50  0001 C CNN
F 3 "" H 19850 3200 50  0000 C CNN
	1    19850 4400
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X08 P17
U 1 1 5709E2FF
P 19850 6550
F 0 "P17" H 19850 7000 50  0000 C CNN
F 1 "CONN_02X08" V 19850 6550 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_2x08" H 19850 5350 50  0001 C CNN
F 3 "" H 19850 5350 50  0000 C CNN
	1    19850 6550
	1    0    0    -1  
$EndComp
$Comp
L CD74HC4067 U18
U 1 1 5709E305
P 18200 8650
F 0 "U18" H 17700 9550 50  0000 C CNN
F 1 "CD74HC4067" H 18500 7750 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-24_7.5x15.4mm_Pitch1.27mm" H 18200 9350 50  0001 C CIN
F 3 "" H 18200 8650 50  0000 C CNN
	1    18200 8650
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X08 P18
U 1 1 5709E30B
P 19900 8650
F 0 "P18" H 19900 9100 50  0000 C CNN
F 1 "CONN_02X08" V 19900 8650 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_2x08" H 19900 7450 50  0001 C CNN
F 3 "" H 19900 7450 50  0000 C CNN
	1    19900 8650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 3400 9850 3400
Wire Wire Line
	9850 3400 9850 1250
Wire Wire Line
	9850 1250 16600 1250
Wire Wire Line
	1200 7000 9750 7000
Connection ~ 11050 2050
Wire Wire Line
	9750 7000 9750 1150
Wire Wire Line
	9750 1150 16700 1150
Wire Wire Line
	9650 7400 6100 7400
Connection ~ 11150 2500
Wire Wire Line
	9650 1050 9650 7400
Wire Wire Line
	9650 1050 16800 1050
Wire Wire Line
	9550 7500 6100 7500
Connection ~ 11250 2600
Wire Wire Line
	9550 950  9550 7500
Wire Wire Line
	9550 950  16900 950 
Wire Wire Line
	9450 7600 6100 7600
Connection ~ 11350 2700
Wire Wire Line
	9450 850  9450 7600
Wire Wire Line
	9450 850  17000 850 
Wire Wire Line
	9350 7700 6100 7700
Connection ~ 11450 2800
Wire Wire Line
	9350 750  9350 7700
Wire Wire Line
	9350 750  17100 750 
Connection ~ 6200 8300
Wire Wire Line
	4700 10200 4800 10200
Wire Wire Line
	4700 10000 4700 10200
Wire Wire Line
	6200 10000 4700 10000
Connection ~ 6300 8400
Wire Wire Line
	4600 10600 4800 10600
Wire Wire Line
	4600 10800 4600 10600
Wire Wire Line
	6300 10800 4600 10800
Connection ~ 6400 8500
Wire Wire Line
	4600 10500 4800 10500
Wire Wire Line
	4600 9900 4600 10500
Wire Wire Line
	6400 9900 4600 9900
Connection ~ 6800 9000
Wire Wire Line
	4500 10400 4800 10400
Wire Wire Line
	4500 9800 4500 10400
Wire Wire Line
	6800 9800 4500 9800
Connection ~ 5850 10900
Wire Wire Line
	5850 10900 4450 10900
Wire Wire Line
	4450 10900 4450 10300
Wire Wire Line
	4450 10300 4800 10300
Connection ~ 5850 10600
Wire Wire Line
	5300 10600 5850 10600
Wire Wire Line
	5850 10500 5850 11000
Wire Wire Line
	5300 10500 5850 10500
Connection ~ 3350 7400
Wire Wire Line
	3350 9700 5850 9700
Wire Wire Line
	5850 9700 5850 10200
Wire Wire Line
	5850 10200 5300 10200
Wire Wire Line
	11250 950  11250 8850
Wire Wire Line
	6900 1950 6900 3400
Connection ~ 3350 3400
Wire Wire Line
	6600 8800 6100 8800
Wire Wire Line
	3250 4250 3250 9600
Wire Wire Line
	6100 4250 6100 6500
Wire Wire Line
	3350 3400 3350 9700
Wire Wire Line
	2600 4600 5650 4600
Wire Wire Line
	2600 6800 2600 4600
Wire Wire Line
	14900 8700 14500 8700
Wire Wire Line
	14900 9600 14900 8700
Wire Wire Line
	13600 9600 14900 9600
Wire Wire Line
	13600 8800 13600 9600
Wire Wire Line
	13250 8800 13600 8800
Wire Wire Line
	13700 8800 14000 8800
Wire Wire Line
	13700 8900 13700 8800
Wire Wire Line
	13250 8900 13700 8900
Wire Wire Line
	14800 8800 14500 8800
Wire Wire Line
	14800 9500 14800 8800
Wire Wire Line
	13700 9500 14800 9500
Wire Wire Line
	13700 9000 13700 9500
Wire Wire Line
	13250 9000 13700 9000
Wire Wire Line
	13800 8900 14000 8900
Wire Wire Line
	13800 9100 13800 8900
Wire Wire Line
	13250 9100 13800 9100
Wire Wire Line
	14700 8900 14500 8900
Wire Wire Line
	14700 9200 14700 8900
Wire Wire Line
	13250 9200 14700 9200
Wire Wire Line
	13900 9300 13250 9300
Wire Wire Line
	13900 9000 13900 9300
Wire Wire Line
	14000 9000 13900 9000
Wire Wire Line
	14600 9400 13250 9400
Wire Wire Line
	14600 9000 14600 9400
Wire Wire Line
	14500 9000 14600 9000
Wire Wire Line
	13250 8700 14000 8700
Wire Wire Line
	14900 8600 14500 8600
Wire Wire Line
	14900 7600 14900 8600
Wire Wire Line
	13500 7600 14900 7600
Wire Wire Line
	13500 8600 13500 7600
Wire Wire Line
	13250 8600 13500 8600
Wire Wire Line
	13600 8600 14000 8600
Wire Wire Line
	13600 8500 13600 8600
Wire Wire Line
	13250 8500 13600 8500
Wire Wire Line
	14800 8500 14500 8500
Wire Wire Line
	14800 7700 14800 8500
Wire Wire Line
	13600 7700 14800 7700
Wire Wire Line
	13600 8400 13600 7700
Wire Wire Line
	13250 8400 13600 8400
Wire Wire Line
	13700 8500 14000 8500
Wire Wire Line
	13700 8300 13700 8500
Wire Wire Line
	13250 8300 13700 8300
Wire Wire Line
	14700 8400 14500 8400
Wire Wire Line
	14700 7800 14700 8400
Wire Wire Line
	13700 7800 14700 7800
Wire Wire Line
	13700 8200 13700 7800
Wire Wire Line
	13250 8200 13700 8200
Wire Wire Line
	13800 8400 14000 8400
Wire Wire Line
	13800 8100 13800 8400
Wire Wire Line
	13250 8100 13800 8100
Wire Wire Line
	13900 7900 13250 7900
Wire Wire Line
	13900 8300 13900 7900
Wire Wire Line
	14000 8300 13900 8300
Wire Wire Line
	14600 8000 13250 8000
Wire Wire Line
	14600 8300 14600 8000
Wire Wire Line
	14500 8300 14600 8300
Connection ~ 11550 7200
Wire Wire Line
	11550 9300 11850 9300
Wire Wire Line
	9450 8500 11850 8500
Wire Wire Line
	11800 4250 10750 4250
Wire Wire Line
	10850 6400 10850 8400
Wire Wire Line
	11800 6400 10850 6400
Connection ~ 11150 6650
Wire Wire Line
	11150 8750 11850 8750
Connection ~ 11250 6750
Wire Wire Line
	11250 8850 11850 8850
Connection ~ 11350 6850
Wire Wire Line
	11350 8950 11850 8950
Connection ~ 11450 6950
Wire Wire Line
	11450 9050 11850 9050
Connection ~ 10950 5900
Wire Wire Line
	10950 8000 11850 8000
Connection ~ 11050 4050
Connection ~ 11050 6200
Wire Wire Line
	11050 8300 11850 8300
Wire Wire Line
	11800 2250 10650 2250
Wire Wire Line
	8150 2750 9250 2750
Wire Wire Line
	9250 2750 9250 600 
Wire Wire Line
	9250 600  17200 600 
Wire Wire Line
	8350 2050 7450 2050
Connection ~ 6900 3400
Connection ~ 3650 4250
Wire Wire Line
	3650 4800 3650 4250
Wire Wire Line
	5450 4800 3650 4800
Wire Wire Line
	5450 3950 5450 4800
Wire Wire Line
	5300 3950 5450 3950
Wire Wire Line
	5650 4050 5300 4050
Wire Wire Line
	5650 4600 5650 4050
Wire Wire Line
	5300 3750 6600 3750
Wire Wire Line
	5300 4150 6200 4150
Wire Wire Line
	5300 4250 6100 4250
Wire Wire Line
	3250 4250 3900 4250
Wire Wire Line
	3350 3750 3900 3750
Connection ~ 6300 6600
Wire Wire Line
	6300 6600 1200 6600
Connection ~ 6200 6700
Wire Wire Line
	6200 6700 1200 6700
Wire Wire Line
	6200 4150 6200 10000
Wire Wire Line
	6200 8300 6100 8300
Wire Wire Line
	7550 1200 8350 1200
Wire Wire Line
	7550 1100 8350 1100
Wire Wire Line
	8350 1000 7550 1000
Wire Wire Line
	2300 6300 1200 6300
Wire Wire Line
	7550 900  8350 900 
Wire Wire Line
	7550 800  8350 800 
Wire Wire Line
	8350 700  7550 700 
Wire Wire Line
	14850 6600 14450 6600
Wire Wire Line
	14850 7500 14850 6600
Wire Wire Line
	13550 7500 14850 7500
Wire Wire Line
	13550 6700 13550 7500
Wire Wire Line
	13200 6700 13550 6700
Wire Wire Line
	13650 6700 13950 6700
Wire Wire Line
	13650 6800 13650 6700
Wire Wire Line
	13200 6800 13650 6800
Wire Wire Line
	14750 6700 14450 6700
Wire Wire Line
	14750 7400 14750 6700
Wire Wire Line
	13650 7400 14750 7400
Wire Wire Line
	13650 6900 13650 7400
Wire Wire Line
	13200 6900 13650 6900
Wire Wire Line
	13750 6800 13950 6800
Wire Wire Line
	13750 7000 13750 6800
Wire Wire Line
	13200 7000 13750 7000
Wire Wire Line
	14650 6800 14450 6800
Wire Wire Line
	14650 7100 14650 6800
Wire Wire Line
	13200 7100 14650 7100
Wire Wire Line
	13850 7200 13200 7200
Wire Wire Line
	13850 6900 13850 7200
Wire Wire Line
	13950 6900 13850 6900
Wire Wire Line
	14550 7300 13200 7300
Wire Wire Line
	14550 6900 14550 7300
Wire Wire Line
	14450 6900 14550 6900
Wire Wire Line
	13200 6600 13950 6600
Wire Wire Line
	14850 6500 14450 6500
Wire Wire Line
	14850 5500 14850 6500
Wire Wire Line
	13450 5500 14850 5500
Wire Wire Line
	13450 6500 13450 5500
Wire Wire Line
	13200 6500 13450 6500
Wire Wire Line
	13550 6500 13950 6500
Wire Wire Line
	13550 6400 13550 6500
Wire Wire Line
	13200 6400 13550 6400
Wire Wire Line
	14750 6400 14450 6400
Wire Wire Line
	14750 5600 14750 6400
Wire Wire Line
	13550 5600 14750 5600
Wire Wire Line
	13550 6300 13550 5600
Wire Wire Line
	13200 6300 13550 6300
Wire Wire Line
	13650 6400 13950 6400
Wire Wire Line
	13650 6200 13650 6400
Wire Wire Line
	13200 6200 13650 6200
Wire Wire Line
	14650 6300 14450 6300
Wire Wire Line
	14650 5700 14650 6300
Wire Wire Line
	13650 5700 14650 5700
Wire Wire Line
	13650 6100 13650 5700
Wire Wire Line
	13200 6100 13650 6100
Wire Wire Line
	13750 6300 13950 6300
Wire Wire Line
	13750 6000 13750 6300
Wire Wire Line
	13200 6000 13750 6000
Wire Wire Line
	13850 5800 13200 5800
Wire Wire Line
	13850 6200 13850 5800
Wire Wire Line
	13950 6200 13850 6200
Wire Wire Line
	14550 5900 13200 5900
Wire Wire Line
	14550 6200 14550 5900
Wire Wire Line
	14450 6200 14550 6200
Wire Wire Line
	14850 4450 14450 4450
Wire Wire Line
	14850 5350 14850 4450
Wire Wire Line
	13550 5350 14850 5350
Wire Wire Line
	13550 4550 13550 5350
Wire Wire Line
	13200 4550 13550 4550
Wire Wire Line
	13650 4550 13950 4550
Wire Wire Line
	13650 4650 13650 4550
Wire Wire Line
	13200 4650 13650 4650
Wire Wire Line
	14750 4550 14450 4550
Wire Wire Line
	14750 5250 14750 4550
Wire Wire Line
	13650 5250 14750 5250
Wire Wire Line
	13650 4750 13650 5250
Wire Wire Line
	13200 4750 13650 4750
Wire Wire Line
	13750 4650 13950 4650
Wire Wire Line
	13750 4850 13750 4650
Wire Wire Line
	13200 4850 13750 4850
Wire Wire Line
	14650 4650 14450 4650
Wire Wire Line
	14650 4950 14650 4650
Wire Wire Line
	13200 4950 14650 4950
Wire Wire Line
	13850 5050 13200 5050
Wire Wire Line
	13850 4750 13850 5050
Wire Wire Line
	13950 4750 13850 4750
Wire Wire Line
	14550 5150 13200 5150
Wire Wire Line
	14550 4750 14550 5150
Wire Wire Line
	14450 4750 14550 4750
Wire Wire Line
	13200 4450 13950 4450
Wire Wire Line
	14850 4350 14450 4350
Wire Wire Line
	14850 3350 14850 4350
Wire Wire Line
	13450 3350 14850 3350
Wire Wire Line
	13450 3350 13450 4350
Wire Wire Line
	13450 4350 13200 4350
Wire Wire Line
	13550 4350 13950 4350
Wire Wire Line
	13550 4250 13550 4350
Wire Wire Line
	13200 4250 13550 4250
Wire Wire Line
	14750 4250 14450 4250
Wire Wire Line
	14750 3450 14750 4250
Wire Wire Line
	13550 3450 14750 3450
Wire Wire Line
	13550 4150 13550 3450
Wire Wire Line
	13200 4150 13550 4150
Wire Wire Line
	13650 4250 13950 4250
Wire Wire Line
	13650 4050 13650 4250
Wire Wire Line
	13200 4050 13650 4050
Wire Wire Line
	14650 4150 14450 4150
Wire Wire Line
	14650 3550 14650 4150
Wire Wire Line
	13650 3550 14650 3550
Wire Wire Line
	13650 3950 13650 3550
Wire Wire Line
	13200 3950 13650 3950
Wire Wire Line
	13750 4150 13950 4150
Wire Wire Line
	13750 3850 13750 4150
Wire Wire Line
	13200 3850 13750 3850
Wire Wire Line
	13850 3650 13200 3650
Wire Wire Line
	13850 4050 13850 3650
Wire Wire Line
	13950 4050 13850 4050
Wire Wire Line
	14550 4050 14450 4050
Wire Wire Line
	14550 3750 14550 4050
Wire Wire Line
	13200 3750 14550 3750
Wire Wire Line
	14850 2350 14450 2350
Wire Wire Line
	14850 3250 14850 2350
Wire Wire Line
	13550 3250 14850 3250
Wire Wire Line
	13550 2550 13550 3250
Wire Wire Line
	13200 2550 13550 2550
Wire Wire Line
	14750 2450 14450 2450
Wire Wire Line
	14750 2750 14750 2450
Wire Wire Line
	13200 2750 14750 2750
Wire Wire Line
	14650 2550 14450 2550
Wire Wire Line
	14650 2950 14650 2550
Wire Wire Line
	13200 2950 14650 2950
Wire Wire Line
	14550 2650 14450 2650
Wire Wire Line
	14550 3150 14550 2650
Wire Wire Line
	13850 2650 13950 2650
Wire Wire Line
	13850 3050 13850 2650
Wire Wire Line
	13200 3050 13850 3050
Wire Wire Line
	13750 2550 13950 2550
Wire Wire Line
	13750 2850 13750 2550
Wire Wire Line
	13200 2850 13750 2850
Wire Wire Line
	13650 2450 13950 2450
Wire Wire Line
	13650 2650 13650 2450
Wire Wire Line
	13200 2650 13650 2650
Wire Wire Line
	13550 2350 13950 2350
Wire Wire Line
	13550 2450 13550 2350
Wire Wire Line
	13200 2450 13550 2450
Wire Wire Line
	13200 2250 13950 2250
Wire Wire Line
	13650 2150 13950 2150
Wire Wire Line
	13650 2050 13650 2150
Wire Wire Line
	13200 2050 13650 2050
Wire Wire Line
	13750 2050 13950 2050
Wire Wire Line
	13750 1850 13750 2050
Wire Wire Line
	13200 1850 13750 1850
Wire Wire Line
	13850 1950 13950 1950
Wire Wire Line
	13850 1650 13850 1950
Wire Wire Line
	13200 1650 13850 1650
Wire Wire Line
	14550 1950 14450 1950
Wire Wire Line
	14650 2050 14450 2050
Wire Wire Line
	14650 1550 14650 2050
Wire Wire Line
	13600 1550 14650 1550
Wire Wire Line
	13600 1950 13600 1550
Wire Wire Line
	13200 1950 13600 1950
Wire Wire Line
	14750 2150 14450 2150
Wire Wire Line
	14750 1450 14750 2150
Wire Wire Line
	13500 1450 14750 1450
Wire Wire Line
	13500 2150 13500 1450
Wire Wire Line
	13200 2150 13500 2150
Wire Wire Line
	14850 2250 14450 2250
Wire Wire Line
	14850 1350 14850 2250
Wire Wire Line
	13400 1350 14850 1350
Wire Wire Line
	13400 2350 13400 1350
Wire Wire Line
	13200 2350 13400 2350
Wire Wire Line
	2200 3400 2200 6100
Connection ~ 5800 5450
Wire Wire Line
	2300 5200 2300 6300
Wire Wire Line
	5800 5200 2300 5200
Wire Wire Line
	5800 5450 5800 5200
Connection ~ 3350 6200
Wire Wire Line
	3350 6200 1200 6200
Connection ~ 7750 7000
Wire Wire Line
	2700 6300 2700 6900
Wire Wire Line
	5900 6300 2700 6300
Wire Wire Line
	5900 5750 5900 6300
Wire Wire Line
	5300 5750 5900 5750
Connection ~ 6600 5450
Connection ~ 3700 5950
Wire Wire Line
	3700 6400 3700 5950
Wire Wire Line
	6000 6400 3700 6400
Wire Wire Line
	6000 5650 6000 6400
Wire Wire Line
	5300 5650 6000 5650
Wire Wire Line
	5300 5450 6600 5450
Wire Wire Line
	6600 3750 6600 8800
Connection ~ 3700 7400
Wire Wire Line
	3700 7800 3900 7800
Wire Wire Line
	3700 7400 3700 7800
Connection ~ 3700 9000
Wire Wire Line
	3700 8600 3700 9000
Wire Wire Line
	3900 8600 3700 8600
Wire Wire Line
	6800 1850 6800 9800
Wire Wire Line
	6800 9000 6100 9000
Connection ~ 7750 8600
Wire Wire Line
	7750 7000 7750 8600
Wire Wire Line
	11800 2050 11050 2050
Wire Wire Line
	11050 4050 11800 4050
Wire Wire Line
	11050 1150 11050 8300
Wire Wire Line
	11050 6200 11800 6200
Wire Wire Line
	6100 8600 8050 8600
Wire Wire Line
	6300 5850 6300 10800
Wire Wire Line
	6400 8500 6100 8500
Wire Wire Line
	6400 5950 6400 9900
Connection ~ 6100 5950
Wire Wire Line
	6300 5850 5300 5850
Wire Wire Line
	6300 8400 6100 8400
Wire Wire Line
	5300 5950 6400 5950
Wire Wire Line
	7300 5550 5300 5550
Wire Wire Line
	7300 8800 7300 5550
Wire Wire Line
	8050 8800 7300 8800
Wire Wire Line
	10850 8400 9450 8400
Wire Wire Line
	10750 4250 10750 8300
Wire Wire Line
	10750 8300 9450 8300
Wire Wire Line
	10650 8200 9450 8200
Wire Wire Line
	10650 2250 10650 8200
Connection ~ 7850 3400
Wire Wire Line
	7850 3400 7850 8300
Wire Wire Line
	7850 8300 8050 8300
Connection ~ 10950 3750
Wire Wire Line
	10950 3750 11800 3750
Wire Wire Line
	10950 1250 10950 8000
Wire Wire Line
	10950 5900 11800 5900
Connection ~ 3350 3750
Connection ~ 3350 5450
Connection ~ 11550 5050
Wire Wire Line
	11550 7200 11800 7200
Connection ~ 11550 3050
Wire Wire Line
	11550 5050 11800 5050
Connection ~ 8150 2750
Wire Wire Line
	11550 3050 11800 3050
Wire Wire Line
	11550 600  11550 9300
Connection ~ 11150 4500
Wire Wire Line
	11150 2500 11800 2500
Wire Wire Line
	11150 4500 11800 4500
Wire Wire Line
	11150 6650 11800 6650
Wire Wire Line
	11150 1050 11150 8750
Wire Wire Line
	11250 6750 11800 6750
Connection ~ 11250 4600
Wire Wire Line
	11250 2600 11800 2600
Wire Wire Line
	11250 4600 11800 4600
Connection ~ 11350 4700
Wire Wire Line
	11350 2700 11800 2700
Wire Wire Line
	11350 6850 11800 6850
Wire Wire Line
	11350 4700 11800 4700
Wire Wire Line
	11350 850  11350 8950
Connection ~ 11450 4800
Wire Wire Line
	11450 2800 11800 2800
Wire Wire Line
	11450 4800 11800 4800
Wire Wire Line
	11450 6950 11800 6950
Wire Wire Line
	11450 750  11450 9050
Connection ~ 3250 5950
Connection ~ 3250 9000
Wire Wire Line
	3250 5950 3900 5950
Wire Wire Line
	3350 5450 3900 5450
Wire Wire Line
	3350 7400 3900 7400
Wire Wire Line
	3250 9000 3900 9000
Wire Wire Line
	3250 9600 8050 9600
Wire Wire Line
	7200 9050 8050 9050
Wire Wire Line
	7200 7800 7200 9050
Wire Wire Line
	6100 7800 7200 7800
Wire Wire Line
	7100 7900 6100 7900
Wire Wire Line
	7100 9150 7100 7900
Wire Wire Line
	8050 9150 7100 9150
Wire Wire Line
	7000 9250 8050 9250
Wire Wire Line
	7000 8000 7000 9250
Wire Wire Line
	6100 8000 7000 8000
Wire Wire Line
	6900 9350 8050 9350
Wire Wire Line
	6900 8100 6900 9350
Wire Wire Line
	6100 8100 6900 8100
Wire Wire Line
	8350 2350 7450 2350
Wire Wire Line
	6900 1950 8350 1950
Wire Wire Line
	8350 1650 7450 1650
Wire Wire Line
	8350 1750 7450 1750
Wire Wire Line
	6800 1850 8350 1850
Connection ~ 8150 2250
Wire Wire Line
	8150 2250 8350 2250
Wire Wire Line
	8150 2150 8150 3025
Wire Wire Line
	8350 2150 8150 2150
Wire Wire Line
	1200 3750 1800 3750
Wire Wire Line
	1200 3650 1800 3650
Wire Wire Line
	1200 3550 1800 3550
Wire Wire Line
	1200 3450 1800 3450
Wire Wire Line
	1200 3350 1800 3350
Wire Wire Line
	1200 3250 1800 3250
Wire Wire Line
	1200 3150 1800 3150
Wire Wire Line
	1200 3050 1800 3050
Wire Wire Line
	2700 6900 1200 6900
Wire Wire Line
	2600 6800 1200 6800
Wire Wire Line
	6100 6500 1200 6500
Wire Wire Line
	2200 6100 1200 6100
Wire Wire Line
	1300 6400 1300 7350
Wire Wire Line
	1200 6400 1300 6400
Wire Wire Line
	14550 1750 14550 1950
Wire Wire Line
	13200 3150 14550 3150
Wire Wire Line
	13200 1750 14550 1750
Connection ~ 16700 2050
Connection ~ 16800 2500
Connection ~ 16900 2600
Connection ~ 17000 2700
Connection ~ 17100 2800
Wire Wire Line
	16900 950  16900 8850
Wire Wire Line
	20550 8700 20150 8700
Wire Wire Line
	20550 9600 20550 8700
Wire Wire Line
	19250 9600 20550 9600
Wire Wire Line
	19250 8800 19250 9600
Wire Wire Line
	18900 8800 19250 8800
Wire Wire Line
	19350 8800 19650 8800
Wire Wire Line
	19350 8900 19350 8800
Wire Wire Line
	18900 8900 19350 8900
Wire Wire Line
	20450 8800 20150 8800
Wire Wire Line
	20450 9500 20450 8800
Wire Wire Line
	19350 9500 20450 9500
Wire Wire Line
	19350 9000 19350 9500
Wire Wire Line
	18900 9000 19350 9000
Wire Wire Line
	19450 8900 19650 8900
Wire Wire Line
	19450 9100 19450 8900
Wire Wire Line
	18900 9100 19450 9100
Wire Wire Line
	20350 8900 20150 8900
Wire Wire Line
	20350 9200 20350 8900
Wire Wire Line
	18900 9200 20350 9200
Wire Wire Line
	19550 9300 18900 9300
Wire Wire Line
	19550 9000 19550 9300
Wire Wire Line
	19650 9000 19550 9000
Wire Wire Line
	20250 9400 18900 9400
Wire Wire Line
	20250 9000 20250 9400
Wire Wire Line
	20150 9000 20250 9000
Wire Wire Line
	18900 8700 19650 8700
Wire Wire Line
	20550 8600 20150 8600
Wire Wire Line
	20550 7600 20550 8600
Wire Wire Line
	19150 7600 20550 7600
Wire Wire Line
	19150 8600 19150 7600
Wire Wire Line
	18900 8600 19150 8600
Wire Wire Line
	19250 8600 19650 8600
Wire Wire Line
	19250 8500 19250 8600
Wire Wire Line
	18900 8500 19250 8500
Wire Wire Line
	20450 8500 20150 8500
Wire Wire Line
	20450 7700 20450 8500
Wire Wire Line
	19250 7700 20450 7700
Wire Wire Line
	19250 8400 19250 7700
Wire Wire Line
	18900 8400 19250 8400
Wire Wire Line
	19350 8500 19650 8500
Wire Wire Line
	19350 8300 19350 8500
Wire Wire Line
	18900 8300 19350 8300
Wire Wire Line
	20350 8400 20150 8400
Wire Wire Line
	20350 7800 20350 8400
Wire Wire Line
	19350 7800 20350 7800
Wire Wire Line
	19350 8200 19350 7800
Wire Wire Line
	18900 8200 19350 8200
Wire Wire Line
	19450 8400 19650 8400
Wire Wire Line
	19450 8100 19450 8400
Wire Wire Line
	18900 8100 19450 8100
Wire Wire Line
	19550 7900 18900 7900
Wire Wire Line
	19550 8300 19550 7900
Wire Wire Line
	19650 8300 19550 8300
Wire Wire Line
	20250 8000 18900 8000
Wire Wire Line
	20250 8300 20250 8000
Wire Wire Line
	20150 8300 20250 8300
Connection ~ 17200 7200
Wire Wire Line
	17200 9300 17500 9300
Wire Wire Line
	16600 8500 17500 8500
Wire Wire Line
	17450 4250 16400 4250
Wire Wire Line
	17450 6400 16500 6400
Connection ~ 16800 6650
Wire Wire Line
	16800 8750 17500 8750
Connection ~ 16900 6750
Wire Wire Line
	16900 8850 17500 8850
Connection ~ 17000 6850
Wire Wire Line
	17000 8950 17500 8950
Connection ~ 17100 6950
Wire Wire Line
	17100 9050 17500 9050
Connection ~ 16600 5900
Wire Wire Line
	16600 8000 17500 8000
Connection ~ 16700 4050
Connection ~ 16700 6200
Wire Wire Line
	16700 8300 17500 8300
Wire Wire Line
	17450 2250 16300 2250
Wire Wire Line
	20500 6600 20100 6600
Wire Wire Line
	20500 7500 20500 6600
Wire Wire Line
	19200 7500 20500 7500
Wire Wire Line
	19200 6700 19200 7500
Wire Wire Line
	18850 6700 19200 6700
Wire Wire Line
	19300 6700 19600 6700
Wire Wire Line
	19300 6800 19300 6700
Wire Wire Line
	18850 6800 19300 6800
Wire Wire Line
	20400 6700 20100 6700
Wire Wire Line
	20400 7400 20400 6700
Wire Wire Line
	19300 7400 20400 7400
Wire Wire Line
	19300 6900 19300 7400
Wire Wire Line
	18850 6900 19300 6900
Wire Wire Line
	19400 6800 19600 6800
Wire Wire Line
	19400 7000 19400 6800
Wire Wire Line
	18850 7000 19400 7000
Wire Wire Line
	20300 6800 20100 6800
Wire Wire Line
	20300 7100 20300 6800
Wire Wire Line
	18850 7100 20300 7100
Wire Wire Line
	19500 7200 18850 7200
Wire Wire Line
	19500 6900 19500 7200
Wire Wire Line
	19600 6900 19500 6900
Wire Wire Line
	20200 7300 18850 7300
Wire Wire Line
	20200 6900 20200 7300
Wire Wire Line
	20100 6900 20200 6900
Wire Wire Line
	18850 6600 19600 6600
Wire Wire Line
	20500 6500 20100 6500
Wire Wire Line
	20500 5500 20500 6500
Wire Wire Line
	19100 5500 20500 5500
Wire Wire Line
	19100 6500 19100 5500
Wire Wire Line
	18850 6500 19100 6500
Wire Wire Line
	19200 6500 19600 6500
Wire Wire Line
	19200 6400 19200 6500
Wire Wire Line
	18850 6400 19200 6400
Wire Wire Line
	20400 6400 20100 6400
Wire Wire Line
	20400 5600 20400 6400
Wire Wire Line
	19200 5600 20400 5600
Wire Wire Line
	19200 6300 19200 5600
Wire Wire Line
	18850 6300 19200 6300
Wire Wire Line
	19300 6400 19600 6400
Wire Wire Line
	19300 6200 19300 6400
Wire Wire Line
	18850 6200 19300 6200
Wire Wire Line
	20300 6300 20100 6300
Wire Wire Line
	20300 5700 20300 6300
Wire Wire Line
	19300 5700 20300 5700
Wire Wire Line
	19300 6100 19300 5700
Wire Wire Line
	18850 6100 19300 6100
Wire Wire Line
	19400 6300 19600 6300
Wire Wire Line
	19400 6000 19400 6300
Wire Wire Line
	18850 6000 19400 6000
Wire Wire Line
	19500 5800 18850 5800
Wire Wire Line
	19500 6200 19500 5800
Wire Wire Line
	19600 6200 19500 6200
Wire Wire Line
	20200 5900 18850 5900
Wire Wire Line
	20200 6200 20200 5900
Wire Wire Line
	20100 6200 20200 6200
Wire Wire Line
	20500 4450 20100 4450
Wire Wire Line
	20500 5350 20500 4450
Wire Wire Line
	19200 5350 20500 5350
Wire Wire Line
	19200 4550 19200 5350
Wire Wire Line
	18850 4550 19200 4550
Wire Wire Line
	19300 4550 19600 4550
Wire Wire Line
	19300 4650 19300 4550
Wire Wire Line
	18850 4650 19300 4650
Wire Wire Line
	20400 4550 20100 4550
Wire Wire Line
	20400 5250 20400 4550
Wire Wire Line
	19300 5250 20400 5250
Wire Wire Line
	19300 4750 19300 5250
Wire Wire Line
	18850 4750 19300 4750
Wire Wire Line
	19400 4650 19600 4650
Wire Wire Line
	19400 4850 19400 4650
Wire Wire Line
	18850 4850 19400 4850
Wire Wire Line
	20300 4650 20100 4650
Wire Wire Line
	20300 4950 20300 4650
Wire Wire Line
	18850 4950 20300 4950
Wire Wire Line
	19500 5050 18850 5050
Wire Wire Line
	19500 4750 19500 5050
Wire Wire Line
	19600 4750 19500 4750
Wire Wire Line
	20200 5150 18850 5150
Wire Wire Line
	20200 4750 20200 5150
Wire Wire Line
	20100 4750 20200 4750
Wire Wire Line
	18850 4450 19600 4450
Wire Wire Line
	20500 4350 20100 4350
Wire Wire Line
	20500 3350 20500 4350
Wire Wire Line
	19100 3350 20500 3350
Wire Wire Line
	19100 3350 19100 4350
Wire Wire Line
	19100 4350 18850 4350
Wire Wire Line
	19200 4350 19600 4350
Wire Wire Line
	19200 4250 19200 4350
Wire Wire Line
	18850 4250 19200 4250
Wire Wire Line
	20400 4250 20100 4250
Wire Wire Line
	20400 3450 20400 4250
Wire Wire Line
	19200 3450 20400 3450
Wire Wire Line
	19200 4150 19200 3450
Wire Wire Line
	18850 4150 19200 4150
Wire Wire Line
	19300 4250 19600 4250
Wire Wire Line
	19300 4050 19300 4250
Wire Wire Line
	18850 4050 19300 4050
Wire Wire Line
	20300 4150 20100 4150
Wire Wire Line
	20300 3550 20300 4150
Wire Wire Line
	19300 3550 20300 3550
Wire Wire Line
	19300 3950 19300 3550
Wire Wire Line
	18850 3950 19300 3950
Wire Wire Line
	19400 4150 19600 4150
Wire Wire Line
	19400 3850 19400 4150
Wire Wire Line
	18850 3850 19400 3850
Wire Wire Line
	19500 3650 18850 3650
Wire Wire Line
	19500 4050 19500 3650
Wire Wire Line
	19600 4050 19500 4050
Wire Wire Line
	20200 4050 20100 4050
Wire Wire Line
	20200 3750 20200 4050
Wire Wire Line
	18850 3750 20200 3750
Wire Wire Line
	20500 2350 20100 2350
Wire Wire Line
	20500 3250 20500 2350
Wire Wire Line
	19200 3250 20500 3250
Wire Wire Line
	19200 2550 19200 3250
Wire Wire Line
	18850 2550 19200 2550
Wire Wire Line
	20400 2450 20100 2450
Wire Wire Line
	20400 2750 20400 2450
Wire Wire Line
	18850 2750 20400 2750
Wire Wire Line
	20300 2550 20100 2550
Wire Wire Line
	20300 2950 20300 2550
Wire Wire Line
	18850 2950 20300 2950
Wire Wire Line
	20200 2650 20100 2650
Wire Wire Line
	20200 3150 20200 2650
Wire Wire Line
	19500 2650 19600 2650
Wire Wire Line
	19500 3050 19500 2650
Wire Wire Line
	18850 3050 19500 3050
Wire Wire Line
	19400 2550 19600 2550
Wire Wire Line
	19400 2850 19400 2550
Wire Wire Line
	18850 2850 19400 2850
Wire Wire Line
	19300 2450 19600 2450
Wire Wire Line
	19300 2650 19300 2450
Wire Wire Line
	18850 2650 19300 2650
Wire Wire Line
	19200 2350 19600 2350
Wire Wire Line
	19200 2450 19200 2350
Wire Wire Line
	18850 2450 19200 2450
Wire Wire Line
	18850 2250 19600 2250
Wire Wire Line
	19300 2150 19600 2150
Wire Wire Line
	19300 2050 19300 2150
Wire Wire Line
	18850 2050 19300 2050
Wire Wire Line
	19400 2050 19600 2050
Wire Wire Line
	19400 1850 19400 2050
Wire Wire Line
	18850 1850 19400 1850
Wire Wire Line
	19500 1950 19600 1950
Wire Wire Line
	19500 1650 19500 1950
Wire Wire Line
	18850 1650 19500 1650
Wire Wire Line
	20200 1950 20100 1950
Wire Wire Line
	20300 2050 20100 2050
Wire Wire Line
	20300 1550 20300 2050
Wire Wire Line
	19250 1550 20300 1550
Wire Wire Line
	19250 1950 19250 1550
Wire Wire Line
	18850 1950 19250 1950
Wire Wire Line
	20400 2150 20100 2150
Wire Wire Line
	20400 1450 20400 2150
Wire Wire Line
	19150 1450 20400 1450
Wire Wire Line
	19150 2150 19150 1450
Wire Wire Line
	18850 2150 19150 2150
Wire Wire Line
	20500 2250 20100 2250
Wire Wire Line
	20500 1350 20500 2250
Wire Wire Line
	19050 1350 20500 1350
Wire Wire Line
	19050 2350 19050 1350
Wire Wire Line
	18850 2350 19050 2350
Wire Wire Line
	17450 2050 16700 2050
Wire Wire Line
	16700 4050 17450 4050
Wire Wire Line
	16700 1150 16700 8300
Wire Wire Line
	16700 6200 17450 6200
Connection ~ 16600 3750
Wire Wire Line
	16600 3750 17450 3750
Wire Wire Line
	16600 1250 16600 8000
Wire Wire Line
	16600 5900 17450 5900
Connection ~ 17200 5050
Wire Wire Line
	17200 7200 17450 7200
Connection ~ 17200 3050
Wire Wire Line
	17200 5050 17450 5050
Wire Wire Line
	17200 3050 17450 3050
Wire Wire Line
	17200 600  17200 9300
Connection ~ 16800 4500
Wire Wire Line
	16800 2500 17450 2500
Wire Wire Line
	16800 4500 17450 4500
Wire Wire Line
	16800 6650 17450 6650
Wire Wire Line
	16800 1050 16800 8750
Wire Wire Line
	16900 6750 17450 6750
Connection ~ 16900 4600
Wire Wire Line
	16900 2600 17450 2600
Wire Wire Line
	16900 4600 17450 4600
Connection ~ 17000 4700
Wire Wire Line
	17000 2700 17450 2700
Wire Wire Line
	17000 6850 17450 6850
Wire Wire Line
	17000 4700 17450 4700
Wire Wire Line
	17000 850  17000 8950
Connection ~ 17100 4800
Wire Wire Line
	17100 2800 17450 2800
Wire Wire Line
	17100 4800 17450 4800
Wire Wire Line
	17100 6950 17450 6950
Wire Wire Line
	17100 750  17100 9050
Wire Wire Line
	20200 1750 20200 1950
Wire Wire Line
	18850 3150 20200 3150
Wire Wire Line
	18850 1750 20200 1750
Connection ~ 11550 600 
Connection ~ 11450 750 
Connection ~ 11350 850 
Connection ~ 11250 950 
Connection ~ 11150 1050
Connection ~ 11050 1150
Connection ~ 10950 1250
Wire Wire Line
	16300 9700 11050 9700
Wire Wire Line
	11050 9700 11050 8600
Wire Wire Line
	11050 8600 9450 8600
Wire Wire Line
	16300 2250 16300 9700
Wire Wire Line
	16400 4250 16400 9800
Wire Wire Line
	16400 9800 10950 9800
Wire Wire Line
	10950 9800 10950 8700
Wire Wire Line
	10950 8700 9450 8700
Wire Wire Line
	16500 6400 16500 9900
Wire Wire Line
	16500 9900 10850 9900
Wire Wire Line
	10850 9900 10850 8800
Wire Wire Line
	10850 8800 9450 8800
Wire Wire Line
	16600 8500 16600 10000
Wire Wire Line
	16600 10000 10750 10000
Wire Wire Line
	10750 10000 10750 8900
Wire Wire Line
	10750 8900 9450 8900
$EndSCHEMATC
