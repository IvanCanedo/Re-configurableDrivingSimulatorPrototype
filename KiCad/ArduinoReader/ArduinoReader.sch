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
L MCU_Module:Arduino_Nano_v2.x A1
U 1 1 61206FB7
P 3100 2750
F 0 "A1" H 3600 1900 50  0000 C CNN
F 1 "Arduino_Nano_v2.x" H 3850 1800 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 3100 2750 50  0001 C CIN
F 3 "https://www.arduino.cc/en/uploads/Main/ArduinoNanoManual23.pdf" H 3100 2750 50  0001 C CNN
	1    3100 2750
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x03 J3
U 1 1 6121903F
P 6400 1850
F 0 "J3" H 6480 1892 50  0000 L CNN
F 1 "POT1" H 6480 1801 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-3_1x03_P5.00mm_Horizontal" H 6400 1850 50  0001 C CNN
F 3 "~" H 6400 1850 50  0001 C CNN
	1    6400 1850
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x03 J4
U 1 1 61219BDD
P 6400 2500
F 0 "J4" H 6480 2542 50  0000 L CNN
F 1 "POT2" H 6480 2451 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-3_1x03_P5.00mm_Horizontal" H 6400 2500 50  0001 C CNN
F 3 "~" H 6400 2500 50  0001 C CNN
	1    6400 2500
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J6
U 1 1 6121AEA5
P 6400 3650
F 0 "J6" H 6480 3642 50  0000 L CNN
F 1 "HB" H 6480 3551 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2_1x02_P5.00mm_Horizontal" H 6400 3650 50  0001 C CNN
F 3 "~" H 6400 3650 50  0001 C CNN
	1    6400 3650
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J7
U 1 1 6121BDD7
P 6400 4200
F 0 "J7" H 6480 4192 50  0000 L CNN
F 1 "RE" H 6480 4101 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2_1x02_P5.00mm_Horizontal" H 6400 4200 50  0001 C CNN
F 3 "~" H 6400 4200 50  0001 C CNN
	1    6400 4200
	1    0    0    -1  
$EndComp
NoConn ~ 3600 2150
NoConn ~ 3600 2250
NoConn ~ 3000 1750
NoConn ~ 3200 1750
NoConn ~ 3600 3450
NoConn ~ 3600 3350
NoConn ~ 3600 3250
NoConn ~ 3600 3050
NoConn ~ 3600 3150
NoConn ~ 2600 2650
NoConn ~ 2600 2750
NoConn ~ 2600 2850
NoConn ~ 2600 2950
NoConn ~ 2600 3050
NoConn ~ 2600 3150
NoConn ~ 2600 3250
NoConn ~ 2600 3350
NoConn ~ 2600 3450
$Comp
L power:+5V #PWR02
U 1 1 6121DD45
P 3300 1750
F 0 "#PWR02" H 3300 1600 50  0001 C CNN
F 1 "+5V" H 3315 1923 50  0000 C CNN
F 2 "" H 3300 1750 50  0001 C CNN
F 3 "" H 3300 1750 50  0001 C CNN
	1    3300 1750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 6121E761
P 3200 3800
F 0 "#PWR01" H 3200 3550 50  0001 C CNN
F 1 "GND" H 3205 3627 50  0000 C CNN
F 2 "" H 3200 3800 50  0001 C CNN
F 3 "" H 3200 3800 50  0001 C CNN
	1    3200 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 3750 3200 3800
Wire Wire Line
	3100 3750 3100 3800
Wire Wire Line
	3100 3800 3200 3800
Connection ~ 3200 3800
$Comp
L power:GND #PWR04
U 1 1 6122094A
P 5200 -700
F 0 "#PWR04" H 5200 -950 50  0001 C CNN
F 1 "GND" H 5205 -873 50  0000 C CNN
F 2 "" H 5200 -700 50  0001 C CNN
F 3 "" H 5200 -700 50  0001 C CNN
	1    5200 -700
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 6122347D
P 5200 -700
F 0 "#FLG01" H 5200 -625 50  0001 C CNN
F 1 "PWR_FLAG" H 5200 -527 50  0000 C CNN
F 2 "" H 5200 -700 50  0001 C CNN
F 3 "~" H 5200 -700 50  0001 C CNN
	1    5200 -700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 61228674
P 6200 4300
F 0 "#PWR017" H 6200 4050 50  0001 C CNN
F 1 "GND" H 6205 4127 50  0000 C CNN
F 2 "" H 6200 4300 50  0001 C CNN
F 3 "" H 6200 4300 50  0001 C CNN
	1    6200 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR016
U 1 1 61228BEE
P 6200 3750
F 0 "#PWR016" H 6200 3500 50  0001 C CNN
F 1 "GND" H 6205 3577 50  0000 C CNN
F 2 "" H 6200 3750 50  0001 C CNN
F 3 "" H 6200 3750 50  0001 C CNN
	1    6200 3750
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x03 J5
U 1 1 6122B335
P 6400 3150
F 0 "J5" H 6480 3192 50  0000 L CNN
F 1 "POT3" H 6480 3101 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-3_1x03_P5.00mm_Horizontal" H 6400 3150 50  0001 C CNN
F 3 "~" H 6400 3150 50  0001 C CNN
	1    6400 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 6122B717
P 6200 3250
F 0 "#PWR015" H 6200 3000 50  0001 C CNN
F 1 "GND" H 6205 3077 50  0000 C CNN
F 2 "" H 6200 3250 50  0001 C CNN
F 3 "" H 6200 3250 50  0001 C CNN
	1    6200 3250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 6122BAD6
P 6200 2600
F 0 "#PWR013" H 6200 2350 50  0001 C CNN
F 1 "GND" H 6205 2427 50  0000 C CNN
F 2 "" H 6200 2600 50  0001 C CNN
F 3 "" H 6200 2600 50  0001 C CNN
	1    6200 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 6122C9AA
P 6200 1950
F 0 "#PWR011" H 6200 1700 50  0001 C CNN
F 1 "GND" H 6205 1777 50  0000 C CNN
F 2 "" H 6200 1950 50  0001 C CNN
F 3 "" H 6200 1950 50  0001 C CNN
	1    6200 1950
	1    0    0    -1  
$EndComp
Text GLabel 3600 2750 2    50   Input ~ 0
A0
Text GLabel 3600 2850 2    50   Input ~ 0
A1
Text GLabel 3600 2950 2    50   Input ~ 0
A2
Text GLabel 6200 1850 0    50   Input ~ 0
A0
Text GLabel 6200 2500 0    50   Input ~ 0
A1
Text GLabel 6200 3150 0    50   Input ~ 0
A2
Text GLabel 2600 2350 0    50   Input ~ 0
D2
Text GLabel 2600 2450 0    50   Input ~ 0
D3
Text GLabel 6200 3650 0    50   Input ~ 0
D2
Text GLabel 6200 4200 0    50   Input ~ 0
D3
$Comp
L Connector:Screw_Terminal_01x02 J9
U 1 1 6120860C
P 6400 4750
F 0 "J9" H 6480 4742 50  0000 L CNN
F 1 "STOP" H 6480 4651 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2_1x02_P5.00mm_Horizontal" H 6400 4750 50  0001 C CNN
F 3 "~" H 6400 4750 50  0001 C CNN
	1    6400 4750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR021
U 1 1 612090DE
P 6200 4850
F 0 "#PWR021" H 6200 4600 50  0001 C CNN
F 1 "GND" H 6205 4677 50  0000 C CNN
F 2 "" H 6200 4850 50  0001 C CNN
F 3 "" H 6200 4850 50  0001 C CNN
	1    6200 4850
	1    0    0    -1  
$EndComp
Text GLabel 2600 2550 0    50   Input ~ 0
D4
Text GLabel 6200 4750 0    50   Input ~ 0
D4
$Comp
L power:+5V #PWR0101
U 1 1 613E4014
P 6200 3050
F 0 "#PWR0101" H 6200 2900 50  0001 C CNN
F 1 "+5V" H 6215 3223 50  0000 C CNN
F 2 "" H 6200 3050 50  0001 C CNN
F 3 "" H 6200 3050 50  0001 C CNN
	1    6200 3050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0102
U 1 1 613E508E
P 6200 1750
F 0 "#PWR0102" H 6200 1600 50  0001 C CNN
F 1 "+5V" H 6215 1923 50  0000 C CNN
F 2 "" H 6200 1750 50  0001 C CNN
F 3 "" H 6200 1750 50  0001 C CNN
	1    6200 1750
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0103
U 1 1 613E56BB
P 6200 2400
F 0 "#PWR0103" H 6200 2250 50  0001 C CNN
F 1 "+5V" H 6215 2573 50  0000 C CNN
F 2 "" H 6200 2400 50  0001 C CNN
F 3 "" H 6200 2400 50  0001 C CNN
	1    6200 2400
	1    0    0    -1  
$EndComp
NoConn ~ 3600 2550
NoConn ~ 2600 2150
NoConn ~ 2600 2250
$EndSCHEMATC
