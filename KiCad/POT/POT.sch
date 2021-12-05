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
L Device:R_POT RV1
U 1 1 60FB170B
P 1750 1450
F 0 "RV1" H 1681 1496 50  0000 R CNN
F 1 "R_POT" H 1681 1405 50  0000 R CNN
F 2 "Potentiometer_THT:POT3600" H 1750 1450 50  0001 C CNN
F 3 "~" H 1750 1450 50  0001 C CNN
	1    1750 1450
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x03 J1
U 1 1 60FB2EAE
P 2450 1550
F 0 "J1" H 2530 1592 50  0000 L CNN
F 1 "Screw_Terminal_01x03" H 2530 1501 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-3-5.08_1x03_P5.08mm_Horizontal" H 2450 1550 50  0001 C CNN
F 3 "~" H 2450 1550 50  0001 C CNN
	1    2450 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 1450 2250 1450
Wire Wire Line
	1750 1300 2100 1300
Wire Wire Line
	2100 1300 2100 1550
Wire Wire Line
	2100 1550 2250 1550
Wire Wire Line
	1750 1650 1750 1600
$Comp
L power:GND #PWR03
U 1 1 60FBCA8E
P 4050 -350
F 0 "#PWR03" H 4050 -600 50  0001 C CNN
F 1 "GND" H 4055 -523 50  0000 C CNN
F 2 "" H 4050 -350 50  0001 C CNN
F 3 "" H 4050 -350 50  0001 C CNN
	1    4050 -350
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 60FBD6B7
P 4050 -350
F 0 "#FLG01" H 4050 -275 50  0001 C CNN
F 1 "PWR_FLAG" H 4050 -177 50  0000 C CNN
F 2 "" H 4050 -350 50  0001 C CNN
F 3 "~" H 4050 -350 50  0001 C CNN
	1    4050 -350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 60FBF85E
P 1750 1650
F 0 "#PWR01" H 1750 1400 50  0001 C CNN
F 1 "GND" H 1755 1477 50  0000 C CNN
F 2 "" H 1750 1650 50  0001 C CNN
F 3 "" H 1750 1650 50  0001 C CNN
	1    1750 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 60FBFD34
P 2250 1650
F 0 "#PWR02" H 2250 1400 50  0001 C CNN
F 1 "GND" H 2255 1477 50  0000 C CNN
F 2 "" H 2250 1650 50  0001 C CNN
F 3 "" H 2250 1650 50  0001 C CNN
	1    2250 1650
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 60FC7C92
P 1550 2500
F 0 "H1" H 1650 2549 50  0000 L CNN
F 1 "MountingHole_Pad" H 1650 2458 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 1550 2500 50  0001 C CNN
F 3 "~" H 1550 2500 50  0001 C CNN
	1    1550 2500
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 60FC8446
P 2600 2500
F 0 "H2" H 2700 2549 50  0000 L CNN
F 1 "MountingHole_Pad" H 2700 2458 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 2600 2500 50  0001 C CNN
F 3 "~" H 2600 2500 50  0001 C CNN
	1    2600 2500
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 60FC8A33
P 3650 2500
F 0 "H3" H 3750 2549 50  0000 L CNN
F 1 "MountingHole_Pad" H 3750 2458 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 3650 2500 50  0001 C CNN
F 3 "~" H 3650 2500 50  0001 C CNN
	1    3650 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 60FC9395
P 1550 2600
F 0 "#PWR04" H 1550 2350 50  0001 C CNN
F 1 "GND" H 1555 2427 50  0000 C CNN
F 2 "" H 1550 2600 50  0001 C CNN
F 3 "" H 1550 2600 50  0001 C CNN
	1    1550 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 60FC9ACE
P 2600 2600
F 0 "#PWR05" H 2600 2350 50  0001 C CNN
F 1 "GND" H 2605 2427 50  0000 C CNN
F 2 "" H 2600 2600 50  0001 C CNN
F 3 "" H 2600 2600 50  0001 C CNN
	1    2600 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 60FCA319
P 3650 2600
F 0 "#PWR06" H 3650 2350 50  0001 C CNN
F 1 "GND" H 3655 2427 50  0000 C CNN
F 2 "" H 3650 2600 50  0001 C CNN
F 3 "" H 3650 2600 50  0001 C CNN
	1    3650 2600
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 60FCB4CE
P 4700 2500
F 0 "H4" H 4800 2549 50  0000 L CNN
F 1 "MountingHole_Pad" H 4800 2458 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 4700 2500 50  0001 C CNN
F 3 "~" H 4700 2500 50  0001 C CNN
	1    4700 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 60FCBA3D
P 4700 2600
F 0 "#PWR07" H 4700 2350 50  0001 C CNN
F 1 "GND" H 4705 2427 50  0000 C CNN
F 2 "" H 4700 2600 50  0001 C CNN
F 3 "" H 4700 2600 50  0001 C CNN
	1    4700 2600
	1    0    0    -1  
$EndComp
$EndSCHEMATC
