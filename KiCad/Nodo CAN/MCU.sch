EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
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
L power:GND #PWR?
U 1 1 5F8329CF
P 650 1950
AR Path="/5F8329CF" Ref="#PWR?"  Part="1" 
AR Path="/5F8190B2/5F8329CF" Ref="#PWR067"  Part="1" 
F 0 "#PWR067" H 650 1700 50  0001 C CNN
F 1 "GND" H 655 1777 50  0000 C CNN
F 2 "" H 650 1950 50  0001 C CNN
F 3 "" H 650 1950 50  0001 C CNN
	1    650  1950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F8329D5
P 1000 1950
AR Path="/5F8329D5" Ref="#PWR?"  Part="1" 
AR Path="/5F8190B2/5F8329D5" Ref="#PWR068"  Part="1" 
F 0 "#PWR068" H 1000 1700 50  0001 C CNN
F 1 "GND" H 1005 1777 50  0000 C CNN
F 2 "" H 1000 1950 50  0001 C CNN
F 3 "" H 1000 1950 50  0001 C CNN
	1    1000 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	650  1600 1650 1600
Wire Wire Line
	1000 1700 1000 1750
Wire Wire Line
	1650 1700 1000 1700
$Comp
L Device:C_Small C?
U 1 1 5F8329DF
P 650 1850
AR Path="/5F8329DF" Ref="C?"  Part="1" 
AR Path="/5F8190B2/5F8329DF" Ref="C34"  Part="1" 
F 0 "C34" H 742 1896 50  0000 L CNN
F 1 "2.2u" H 742 1805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 650 1850 50  0001 C CNN
F 3 "~" H 650 1850 50  0001 C CNN
	1    650  1850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5F8329E5
P 1000 1850
AR Path="/5F8329E5" Ref="C?"  Part="1" 
AR Path="/5F8190B2/5F8329E5" Ref="C35"  Part="1" 
F 0 "C35" H 1092 1896 50  0000 L CNN
F 1 "2.2u" H 1092 1805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1000 1850 50  0001 C CNN
F 3 "~" H 1000 1850 50  0001 C CNN
	1    1000 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F8329EC
P 2350 6400
AR Path="/5F8329EC" Ref="#PWR?"  Part="1" 
AR Path="/5F8190B2/5F8329EC" Ref="#PWR090"  Part="1" 
F 0 "#PWR090" H 2350 6150 50  0001 C CNN
F 1 "GND" H 2355 6227 50  0000 C CNN
F 2 "" H 2350 6400 50  0001 C CNN
F 3 "" H 2350 6400 50  0001 C CNN
	1    2350 6400
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5F8329F8
P 2250 900
AR Path="/5F8329F8" Ref="#PWR?"  Part="1" 
AR Path="/5F8190B2/5F8329F8" Ref="#PWR062"  Part="1" 
F 0 "#PWR062" H 2250 750 50  0001 C CNN
F 1 "+3V3" H 2265 1073 50  0000 C CNN
F 2 "" H 2250 900 50  0001 C CNN
F 3 "" H 2250 900 50  0001 C CNN
	1    2250 900 
	1    0    0    -1  
$EndComp
Text GLabel 1650 1200 0    50   Input ~ 0
RST
Text GLabel 1650 1400 0    50   Input ~ 0
BOOT0
Text GLabel 1650 3100 0    50   Input ~ 0
LED3
Text GLabel 1650 3000 0    50   Input ~ 0
LED2
Text GLabel 1650 2900 0    50   Input ~ 0
LED1
Text GLabel 1650 3600 0    50   Input ~ 0
PE7
Text GLabel 3450 2000 2    50   Input ~ 0
USB_OTG_FAULT
Text GLabel 3450 4100 2    50   Input ~ 0
CAN2_RX
Text GLabel 3450 3500 2    50   Input ~ 0
CAN2_TX
Text GLabel 1650 4600 0    50   Input ~ 0
CAN1_RX
Text GLabel 1650 4700 0    50   Input ~ 0
CAN1_TX
Text GLabel 3450 2600 2    50   Input ~ 0
SWCLK
Text GLabel 3450 2500 2    50   Input ~ 0
SWDIO
Text GLabel 3450 2100 2    50   Input ~ 0
USB_VBUS_DETECT_PIN
Text GLabel 3450 2400 2    50   Input ~ 0
USB_D+
Text GLabel 3450 2300 2    50   Input ~ 0
USB_D-
Text GLabel 3450 2200 2    50   Input ~ 0
USB_OTG_ID_PIN
Text GLabel 3450 5200 2    50   Output ~ 0
UART6_TX
Text GLabel 3450 5300 2    50   Input ~ 0
UART6_RX
Text GLabel 3450 5600 2    50   Output ~ 0
UART3_TX
Text GLabel 3450 5700 2    50   Input ~ 0
UART3_RX
Text GLabel 1650 5800 0    50   BiDi ~ 0
UART3_RTS
Text GLabel 1650 5700 0    50   BiDi ~ 0
UART3_CTS
Text GLabel 1650 4900 0    50   Input ~ 0
UART2_CTS
Text GLabel 1650 5000 0    50   Input ~ 0
UART2_RTS
Text GLabel 1650 5200 0    50   Input ~ 0
UART2_RX
Text GLabel 1650 5100 0    50   Input ~ 0
UART2_TX
Text GLabel 3450 3900 2    50   Output ~ 0
I2C2_SCL
Text GLabel 3450 4000 2    50   BiDi ~ 0
I2C2_SDA
Text GLabel 3450 3700 2    50   Output ~ 0
I2C1_SCL
Text GLabel 3450 3600 2    50   BiDi ~ 0
I2C1_SDA
Text GLabel 1650 4200 0    50   Input ~ 0
PE13
Text GLabel 1650 4000 0    50   Input ~ 0
PE11
Text GLabel 3450 4400 2    50   Output ~ 0
SPI2_MOSI
Text GLabel 3450 4200 2    50   Output ~ 0
SPI2_SCK
Text GLabel 3450 4300 2    50   Input ~ 0
SPI2_MISO
Text GLabel 3450 3800 2    50   Output ~ 0
SPI2_NSS
Text GLabel 3450 3400 2    50   Output ~ 0
SPI1_MOSI
Text GLabel 3450 3300 2    50   Input ~ 0
SPI1_MISO
Text GLabel 3450 3200 2    50   Output ~ 0
SPI1_SCK
Text GLabel 3450 2700 2    50   Output ~ 0
SPI1_NSS
Text GLabel 1650 4400 0    50   Input ~ 0
PE15
Text GLabel 1650 3800 0    50   Input ~ 0
PE9
Text GLabel 1650 3300 0    50   Input ~ 0
PE4
Text GLabel 1650 3200 0    50   Input ~ 0
PE3
Text GLabel 1650 5600 0    50   Input ~ 0
PD10
Text GLabel 1650 5300 0    50   Input ~ 0
PD7
Text GLabel 1650 4800 0    50   Input ~ 0
PD2
Text GLabel 3450 5000 2    50   Input ~ 0
PC4
Text GLabel 1650 4300 0    50   Input ~ 0
PE14
Text GLabel 1650 4100 0    50   Input ~ 0
PE12
Text GLabel 1650 3900 0    50   Input ~ 0
PE10
Text GLabel 1650 3700 0    50   Input ~ 0
PE8
Text GLabel 1650 6100 0    50   Input ~ 0
PD15
Text GLabel 1650 6000 0    50   Input ~ 0
PD14
Text GLabel 1650 5900 0    50   Input ~ 0
PD13
Text GLabel 3450 5500 2    50   Input ~ 0
PC9
Text GLabel 3450 5400 2    50   Input ~ 0
PC8
Text GLabel 3450 1700 2    50   Output ~ 0
DAC2
Text GLabel 3450 1600 2    50   Output ~ 0
DAC1
Text GLabel 3450 1200 2    50   Input ~ 0
servo0
Text GLabel 3450 4900 2    50   Input ~ 0
ACD3_IN13
Text GLabel 3450 4700 2    50   Input ~ 0
ACD3_IN11
Text GLabel 3450 4600 2    50   Input ~ 0
ACD3_IN10
Text GLabel 3450 1500 2    50   Input ~ 0
servo3
Text GLabel 3450 5100 2    50   Input ~ 0
ADC2_IN15
Text GLabel 3450 2900 2    50   Input ~ 0
ADC2_IN8
Text GLabel 3450 1800 2    50   Input ~ 0
ADC2_IN6
Text GLabel 3450 1400 2    50   Input ~ 0
servo2
Text GLabel 3450 4800 2    50   Input ~ 0
ADC1_IN12
Text GLabel 3450 3000 2    50   Input ~ 0
ADC1_IN9
Text GLabel 3450 1900 2    50   Input ~ 0
ADC1_IN7
Text GLabel 3450 1300 2    50   Input ~ 0
servo1
Text GLabel 3450 6100 2    50   Input ~ 0
OSC32_OUT
Text GLabel 3450 6000 2    50   Input ~ 0
OSC32_IN
Text GLabel 1650 2700 0    50   Input ~ 0
HSE_OUT
Text GLabel 1650 2600 0    50   Input ~ 0
HSE_IN
Text GLabel 3450 3100 2    50   Input ~ 0
BOOT1
Text GLabel 1650 1800 0    50   Input ~ 0
VREF
Text GLabel 2750 6400 3    50   Input ~ 0
GNDA
Text GLabel 2950 900  1    50   Input ~ 0
VDDA
Wire Notes Line
	11050 2600 9800 2600
Wire Notes Line
	11050 650  11050 2600
Text GLabel 10200 800  0    50   Input ~ 0
VDDA
Connection ~ 10450 800 
Connection ~ 10750 1000
Wire Wire Line
	10450 1000 10750 1000
Wire Wire Line
	10750 800  10450 800 
$Comp
L power:GND #PWR?
U 1 1 5F864A66
P 10750 1000
AR Path="/5F864A66" Ref="#PWR?"  Part="1" 
AR Path="/5F8190B2/5F864A66" Ref="#PWR063"  Part="1" 
F 0 "#PWR063" H 10750 750 50  0001 C CNN
F 1 "GND" H 10755 827 50  0000 C CNN
F 2 "" H 10750 1000 50  0001 C CNN
F 3 "" H 10750 1000 50  0001 C CNN
	1    10750 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5F864A6C
P 10450 900
AR Path="/5F864A6C" Ref="C?"  Part="1" 
AR Path="/5F8190B2/5F864A6C" Ref="C30"  Part="1" 
F 0 "C30" H 10542 946 50  0000 L CNN
F 1 "1u" H 10542 855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 10450 900 50  0001 C CNN
F 3 "~" H 10450 900 50  0001 C CNN
	1    10450 900 
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5F864A72
P 10750 900
AR Path="/5F864A72" Ref="C?"  Part="1" 
AR Path="/5F8190B2/5F864A72" Ref="C31"  Part="1" 
F 0 "C31" H 10842 946 50  0000 L CNN
F 1 "100n" H 10842 855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 10750 900 50  0001 C CNN
F 3 "~" H 10750 900 50  0001 C CNN
	1    10750 900 
	1    0    0    -1  
$EndComp
Connection ~ 10450 1250
Wire Wire Line
	10400 1250 10450 1250
Text GLabel 10400 1250 0    50   Input ~ 0
VREF
Connection ~ 10750 1450
Wire Wire Line
	10450 1450 10750 1450
Wire Wire Line
	10750 1250 10450 1250
$Comp
L power:GND #PWR?
U 1 1 5F864A7E
P 10750 1450
AR Path="/5F864A7E" Ref="#PWR?"  Part="1" 
AR Path="/5F8190B2/5F864A7E" Ref="#PWR065"  Part="1" 
F 0 "#PWR065" H 10750 1200 50  0001 C CNN
F 1 "GND" H 10755 1277 50  0000 C CNN
F 2 "" H 10750 1450 50  0001 C CNN
F 3 "" H 10750 1450 50  0001 C CNN
	1    10750 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5F864A84
P 10450 1350
AR Path="/5F864A84" Ref="C?"  Part="1" 
AR Path="/5F8190B2/5F864A84" Ref="C32"  Part="1" 
F 0 "C32" H 10542 1396 50  0000 L CNN
F 1 "1u" H 10542 1305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 10450 1350 50  0001 C CNN
F 3 "~" H 10450 1350 50  0001 C CNN
	1    10450 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5F864A8A
P 10750 1350
AR Path="/5F864A8A" Ref="C?"  Part="1" 
AR Path="/5F8190B2/5F864A8A" Ref="C33"  Part="1" 
F 0 "C33" H 10842 1396 50  0000 L CNN
F 1 "100n" H 10842 1305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 10750 1350 50  0001 C CNN
F 3 "~" H 10750 1350 50  0001 C CNN
	1    10750 1350
	1    0    0    -1  
$EndComp
Text GLabel 5250 3150 0    50   Input ~ 0
PE7
Text GLabel 6400 4450 0    50   Input ~ 0
SWCLK
Text GLabel 6400 4650 0    50   Input ~ 0
SWDIO
Text GLabel 5250 2050 0    50   Input ~ 0
PE11
Text GLabel 5250 3350 0    50   Input ~ 0
PE15
Text GLabel 5250 3050 0    50   Input ~ 0
PE4
Text GLabel 5250 2950 0    50   Input ~ 0
PE3
Text GLabel 5250 2850 0    50   Input ~ 0
PD10
Text GLabel 5250 2550 0    50   Input ~ 0
PD7
Text GLabel 5250 2450 0    50   Input ~ 0
PD2
Text GLabel 5250 2250 0    50   Input ~ 0
PC4
Text GLabel 5250 2150 0    50   Input ~ 0
PE12
Text GLabel 5250 1950 0    50   Input ~ 0
PE10
Text GLabel 5250 1850 0    50   Input ~ 0
PE8
Text GLabel 5250 1750 0    50   Input ~ 0
PD15
Text GLabel 5250 1650 0    50   Input ~ 0
PD14
Text GLabel 5250 1550 0    50   Input ~ 0
PD13
Text GLabel 5250 1450 0    50   Input ~ 0
PC9
Text GLabel 5250 1350 0    50   Input ~ 0
PC8
Text Notes 8950 750  0    50   ~ 0
ANALOG
Text GLabel 9150 2300 0    50   Input ~ 0
ACD3_IN13
Text GLabel 9150 1850 0    50   Input ~ 0
ACD3_IN11
Text GLabel 9150 1400 0    50   Input ~ 0
ACD3_IN10
Text GLabel 9150 2200 0    50   Input ~ 0
ADC2_IN15
Text GLabel 9150 1750 0    50   Input ~ 0
ADC2_IN8
Text GLabel 9150 1300 0    50   Input ~ 0
ADC2_IN6
Text GLabel 9150 2100 0    50   Input ~ 0
ADC1_IN12
Text GLabel 9150 1650 0    50   Input ~ 0
ADC1_IN9
Text GLabel 9150 1200 0    50   Input ~ 0
ADC1_IN7
$Comp
L Connector:Screw_Terminal_01x03 J?
U 1 1 5F864AC7
P 9350 2200
AR Path="/5F864AC7" Ref="J?"  Part="1" 
AR Path="/5F8190B2/5F864AC7" Ref="J13"  Part="1" 
F 0 "J13" H 9430 2242 50  0000 L CNN
F 1 "ADC_IN3" H 9430 2151 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-3-5.08_1x03_P5.08mm_Horizontal" H 9350 2200 50  0001 C CNN
F 3 "~" H 9350 2200 50  0001 C CNN
	1    9350 2200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x03 J?
U 1 1 5F864ACD
P 9350 1750
AR Path="/5F864ACD" Ref="J?"  Part="1" 
AR Path="/5F8190B2/5F864ACD" Ref="J12"  Part="1" 
F 0 "J12" H 9430 1792 50  0000 L CNN
F 1 "ADC_IN2" H 9430 1701 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-3-5.08_1x03_P5.08mm_Horizontal" H 9350 1750 50  0001 C CNN
F 3 "~" H 9350 1750 50  0001 C CNN
	1    9350 1750
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x03 J?
U 1 1 5F864AD3
P 9350 1300
AR Path="/5F864AD3" Ref="J?"  Part="1" 
AR Path="/5F8190B2/5F864AD3" Ref="J10"  Part="1" 
F 0 "J10" H 9430 1342 50  0000 L CNN
F 1 "ADC_IN1" H 9430 1251 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-3-5.08_1x03_P5.08mm_Horizontal" H 9350 1300 50  0001 C CNN
F 3 "~" H 9350 1300 50  0001 C CNN
	1    9350 1300
	1    0    0    -1  
$EndComp
Connection ~ 6950 5200
Wire Wire Line
	7300 5200 6950 5200
Text GLabel 7300 5400 3    50   Input ~ 0
I2C2_SCL
Text GLabel 6950 5400 3    50   BiDi ~ 0
I2C2_SDA
$Comp
L power:+3V3 #PWR?
U 1 1 5F864ADD
P 6950 5200
AR Path="/5F864ADD" Ref="#PWR?"  Part="1" 
AR Path="/5F8190B2/5F864ADD" Ref="#PWR088"  Part="1" 
F 0 "#PWR088" H 6950 5050 50  0001 C CNN
F 1 "+3V3" H 6965 5373 50  0000 C CNN
F 2 "" H 6950 5200 50  0001 C CNN
F 3 "" H 6950 5200 50  0001 C CNN
	1    6950 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5F864AE3
P 6950 5300
AR Path="/5F864AE3" Ref="R?"  Part="1" 
AR Path="/5F8190B2/5F864AE3" Ref="R26"  Part="1" 
F 0 "R26" H 6891 5254 50  0000 R CNN
F 1 "4.7K" H 6891 5345 50  0000 R CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 6950 5300 50  0001 C CNN
F 3 "~" H 6950 5300 50  0001 C CNN
	1    6950 5300
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5F864AE9
P 7300 5300
AR Path="/5F864AE9" Ref="R?"  Part="1" 
AR Path="/5F8190B2/5F864AE9" Ref="R27"  Part="1" 
F 0 "R27" H 7241 5254 50  0000 R CNN
F 1 "4.7K" H 7241 5345 50  0000 R CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 7300 5300 50  0001 C CNN
F 3 "~" H 7300 5300 50  0001 C CNN
	1    7300 5300
	-1   0    0    1   
$EndComp
Text GLabel 7250 6050 0    50   Output ~ 0
I2C2_SCL
Text GLabel 7250 5950 0    50   BiDi ~ 0
I2C2_SDA
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 5F864AF3
P 5450 4650
AR Path="/5F864AF3" Ref="J?"  Part="1" 
AR Path="/5F8190B2/5F864AF3" Ref="J20"  Part="1" 
F 0 "J20" H 5530 4642 50  0000 L CNN
F 1 "UART2" H 5530 4551 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 5450 4650 50  0001 C CNN
F 3 "~" H 5450 4650 50  0001 C CNN
	1    5450 4650
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5F864AF9
P 7450 5950
AR Path="/5F864AF9" Ref="J?"  Part="1" 
AR Path="/5F8190B2/5F864AF9" Ref="J25"  Part="1" 
F 0 "J25" H 7530 5942 50  0000 L CNN
F 1 "I2C2" H 7530 5851 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 7450 5950 50  0001 C CNN
F 3 "~" H 7450 5950 50  0001 C CNN
	1    7450 5950
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5F864AFF
P 6500 5950
AR Path="/5F864AFF" Ref="J?"  Part="1" 
AR Path="/5F8190B2/5F864AFF" Ref="J24"  Part="1" 
F 0 "J24" H 6580 5942 50  0000 L CNN
F 1 "I2C1" H 6580 5851 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6500 5950 50  0001 C CNN
F 3 "~" H 6500 5950 50  0001 C CNN
	1    6500 5950
	1    0    0    -1  
$EndComp
Text GLabel 5250 6100 0    50   Output ~ 0
SPI2_MOSI
Text GLabel 5250 6000 0    50   Input ~ 0
SPI2_MISO
Text GLabel 5250 5900 0    50   Output ~ 0
SPI2_SCK
Text GLabel 5250 5800 0    50   Output ~ 0
SPI2_NSS
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 5F864B09
P 5450 5900
AR Path="/5F864B09" Ref="J?"  Part="1" 
AR Path="/5F8190B2/5F864B09" Ref="J23"  Part="1" 
F 0 "J23" H 5530 5892 50  0000 L CNN
F 1 "SPI2" H 5530 5801 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 5450 5900 50  0001 C CNN
F 3 "~" H 5450 5900 50  0001 C CNN
	1    5450 5900
	1    0    0    -1  
$EndComp
Text GLabel 9150 1000 0    50   Output ~ 0
DAC2
Text GLabel 9150 900  0    50   Output ~ 0
DAC1
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 5F864B11
P 9350 900
AR Path="/5F864B11" Ref="J?"  Part="1" 
AR Path="/5F8190B2/5F864B11" Ref="J9"  Part="1" 
F 0 "J9" H 9430 892 50  0000 L CNN
F 1 "DAC" H 9430 801 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2-5.08_1x02_P5.08mm_Horizontal" H 9350 900 50  0001 C CNN
F 3 "~" H 9350 900 50  0001 C CNN
	1    9350 900 
	1    0    0    -1  
$EndComp
Text GLabel 6300 5400 3    50   Input ~ 0
I2C1_SCL
Text GLabel 6000 5400 3    50   BiDi ~ 0
I2C1_SDA
Connection ~ 6000 5200
Wire Wire Line
	6000 5200 6300 5200
Text GLabel 6300 5950 0    50   BiDi ~ 0
I2C1_SDA
Text GLabel 6300 6050 0    50   Output ~ 0
I2C1_SCL
$Comp
L power:+3V3 #PWR?
U 1 1 5F864B1D
P 6000 5200
AR Path="/5F864B1D" Ref="#PWR?"  Part="1" 
AR Path="/5F8190B2/5F864B1D" Ref="#PWR087"  Part="1" 
F 0 "#PWR087" H 6000 5050 50  0001 C CNN
F 1 "+3V3" H 6015 5373 50  0000 C CNN
F 2 "" H 6000 5200 50  0001 C CNN
F 3 "" H 6000 5200 50  0001 C CNN
	1    6000 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5F864B23
P 6300 5300
AR Path="/5F864B23" Ref="R?"  Part="1" 
AR Path="/5F8190B2/5F864B23" Ref="R25"  Part="1" 
F 0 "R25" H 6241 5254 50  0000 R CNN
F 1 "4.7K" H 6241 5345 50  0000 R CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 6300 5300 50  0001 C CNN
F 3 "~" H 6300 5300 50  0001 C CNN
	1    6300 5300
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5F864B29
P 6000 5300
AR Path="/5F864B29" Ref="R?"  Part="1" 
AR Path="/5F8190B2/5F864B29" Ref="R24"  Part="1" 
F 0 "R24" H 5941 5254 50  0000 R CNN
F 1 "4.7K" H 5941 5345 50  0000 R CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 6000 5300 50  0001 C CNN
F 3 "~" H 6000 5300 50  0001 C CNN
	1    6000 5300
	-1   0    0    1   
$EndComp
Text GLabel 5250 5050 0    50   Input ~ 0
UART6_RX
Text GLabel 5250 5150 0    50   Output ~ 0
UART6_TX
Text GLabel 5250 5650 0    50   Output ~ 0
SPI1_MOSI
Text GLabel 5250 5550 0    50   Input ~ 0
SPI1_MISO
Text GLabel 5250 5450 0    50   Output ~ 0
SPI1_SCK
Text GLabel 5250 5350 0    50   Output ~ 0
SPI1_NSS
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5F864B37
P 5450 5050
AR Path="/5F864B37" Ref="J?"  Part="1" 
AR Path="/5F8190B2/5F864B37" Ref="J21"  Part="1" 
F 0 "J21" H 5530 5042 50  0000 L CNN
F 1 "USART6" H 5530 4951 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5450 5050 50  0001 C CNN
F 3 "~" H 5450 5050 50  0001 C CNN
	1    5450 5050
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 5F864B3D
P 5450 5450
AR Path="/5F864B3D" Ref="J?"  Part="1" 
AR Path="/5F8190B2/5F864B3D" Ref="J22"  Part="1" 
F 0 "J22" H 5530 5442 50  0000 L CNN
F 1 "SPI1" H 5530 5351 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 5450 5450 50  0001 C CNN
F 3 "~" H 5450 5450 50  0001 C CNN
	1    5450 5450
	1    0    0    -1  
$EndComp
Text Notes 10200 1800 0    50   ~ 0
ANALOG REF
Connection ~ 10600 2150
Wire Wire Line
	10600 2250 10600 2150
Wire Wire Line
	10900 2150 10600 2150
$Comp
L power:+3V3 #PWR?
U 1 1 5F864B47
P 10900 2150
AR Path="/5F864B47" Ref="#PWR?"  Part="1" 
AR Path="/5F8190B2/5F864B47" Ref="#PWR069"  Part="1" 
F 0 "#PWR069" H 10900 2000 50  0001 C CNN
F 1 "+3V3" H 10915 2323 50  0000 C CNN
F 2 "" H 10900 2150 50  0001 C CNN
F 3 "" H 10900 2150 50  0001 C CNN
	1    10900 2150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F864B4D
P 10600 2350
AR Path="/5F864B4D" Ref="#PWR?"  Part="1" 
AR Path="/5F8190B2/5F864B4D" Ref="#PWR071"  Part="1" 
F 0 "#PWR071" H 10600 2100 50  0001 C CNN
F 1 "GND" H 10605 2177 50  0000 C CNN
F 2 "" H 10600 2350 50  0001 C CNN
F 3 "" H 10600 2350 50  0001 C CNN
	1    10600 2350
	1    0    0    -1  
$EndComp
Text GLabel 9900 2150 0    50   Input ~ 0
VDDA
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J?
U 1 1 5F864B56
P 10300 2250
AR Path="/5F864B56" Ref="J?"  Part="1" 
AR Path="/5F8190B2/5F864B56" Ref="J14"  Part="1" 
F 0 "J14" H 10350 2567 50  0000 C CNN
F 1 "Analog Ref" H 10350 2476 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 10300 2250 50  0001 C CNN
F 3 "~" H 10300 2250 50  0001 C CNN
	1    10300 2250
	1    0    0    -1  
$EndComp
Text GLabel 5250 800  0    50   Input ~ 0
servo0
Text GLabel 5250 900  0    50   Input ~ 0
servo1
Text GLabel 5250 1000 0    50   Input ~ 0
servo2
Text GLabel 5250 1100 0    50   Input ~ 0
servo3
$Comp
L Connector:Screw_Terminal_01x04 J?
U 1 1 5F864B66
P 5450 900
AR Path="/5F864B66" Ref="J?"  Part="1" 
AR Path="/5F8190B2/5F864B66" Ref="J8"  Part="1" 
F 0 "J8" H 5530 892 50  0000 L CNN
F 1 "servos" H 5530 801 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-4-5.08_1x04_P5.08mm_Horizontal" H 5450 900 50  0001 C CNN
F 3 "~" H 5450 900 50  0001 C CNN
	1    5450 900 
	1    0    0    -1  
$EndComp
Wire Notes Line
	9800 2400 8650 2400
Wire Notes Line
	8650 2400 8650 650 
Text GLabel 6400 4750 0    50   Input ~ 0
RST
$Comp
L Connector_Generic:Conn_01x01 J?
U 1 1 5F864B98
P 6450 7250
AR Path="/5F864B98" Ref="J?"  Part="1" 
AR Path="/5F8190B2/5F864B98" Ref="J26"  Part="1" 
F 0 "J26" H 6530 7292 50  0000 L CNN
F 1 "boot1" H 6530 7201 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 6450 7250 50  0001 C CNN
F 3 "~" H 6450 7250 50  0001 C CNN
	1    6450 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5F864B9F
P 6150 7400
AR Path="/5F864B9F" Ref="R?"  Part="1" 
AR Path="/5F8190B2/5F864B9F" Ref="R28"  Part="1" 
F 0 "R28" H 6091 7354 50  0000 R CNN
F 1 "10K" H 6091 7445 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6150 7400 50  0001 C CNN
F 3 "~" H 6150 7400 50  0001 C CNN
	1    6150 7400
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F864BA5
P 6150 7500
AR Path="/5F864BA5" Ref="#PWR?"  Part="1" 
AR Path="/5F8190B2/5F864BA5" Ref="#PWR091"  Part="1" 
F 0 "#PWR091" H 6150 7250 50  0001 C CNN
F 1 "GND" H 6150 7350 50  0000 C CNN
F 2 "" H 6150 7500 50  0001 C CNN
F 3 "" H 6150 7500 50  0001 C CNN
	1    6150 7500
	1    0    0    -1  
$EndComp
Text GLabel 6000 7250 0    50   Input ~ 0
BOOT1
Wire Notes Line
	8650 650  11050 650 
Wire Notes Line
	4600 6300 4600 3800
Wire Notes Line
	4600 3800 7750 3800
Wire Notes Line
	7750 3800 7750 6300
Wire Notes Line
	7750 6300 4600 6300
Text Notes 6150 4000 0    50   ~ 0
Comunicacion
Wire Notes Line
	9800 2400 9800 2600
$Comp
L power:+3V3 #PWR?
U 1 1 5FB8E0B5
P 6200 2550
AR Path="/5FB8E0B5" Ref="#PWR?"  Part="1" 
AR Path="/5F8190B2/5FB8E0B5" Ref="#PWR072"  Part="1" 
F 0 "#PWR072" H 6200 2400 50  0001 C CNN
F 1 "+3V3" H 6215 2723 50  0000 C CNN
F 2 "" H 6200 2550 50  0001 C CNN
F 3 "" H 6200 2550 50  0001 C CNN
	1    6200 2550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5FB9BB02
P 6050 2750
AR Path="/5FB9BB02" Ref="#PWR?"  Part="1" 
AR Path="/5F8190B2/5FB9BB02" Ref="#PWR073"  Part="1" 
F 0 "#PWR073" H 6050 2600 50  0001 C CNN
F 1 "+5V" H 6065 2923 50  0000 C CNN
F 2 "" H 6050 2750 50  0001 C CNN
F 3 "" H 6050 2750 50  0001 C CNN
	1    6050 2750
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x08 J16
U 1 1 5FBA2162
P 6400 2850
F 0 "J16" H 6480 2842 50  0000 L CNN
F 1 "PWR" H 6480 2751 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-8-5.08_1x08_P5.08mm_Horizontal" H 6400 2850 50  0001 C CNN
F 3 "~" H 6400 2850 50  0001 C CNN
	1    6400 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 2650 6200 2550
Connection ~ 6200 2550
Wire Wire Line
	6050 2750 6200 2750
Wire Wire Line
	5950 2950 6200 2950
Wire Wire Line
	6200 3050 6200 2950
Connection ~ 6200 2950
Wire Wire Line
	6200 2850 6200 2750
Connection ~ 6200 2750
Wire Wire Line
	6200 3150 6200 3250
Text GLabel 5250 3250 0    50   Input ~ 0
PE9
$Comp
L Connector_Generic:Conn_01x05 J19
U 1 1 5F4CA783
P 6600 4550
F 0 "J19" H 6680 4592 50  0000 L CNN
F 1 "SWD" H 6680 4501 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 6600 4550 50  0001 C CNN
F 3 "~" H 6600 4550 50  0001 C CNN
	1    6600 4550
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5F4CB368
P 6400 4350
AR Path="/5F4CB368" Ref="#PWR?"  Part="1" 
AR Path="/5F8190B2/5F4CB368" Ref="#PWR084"  Part="1" 
F 0 "#PWR084" H 6400 4200 50  0001 C CNN
F 1 "+3V3" H 6415 4523 50  0000 C CNN
F 2 "" H 6400 4350 50  0001 C CNN
F 3 "" H 6400 4350 50  0001 C CNN
	1    6400 4350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F4CBB22
P 6000 4550
AR Path="/5F4CBB22" Ref="#PWR?"  Part="1" 
AR Path="/5F8190B2/5F4CBB22" Ref="#PWR085"  Part="1" 
F 0 "#PWR085" H 6000 4300 50  0001 C CNN
F 1 "GND" H 6005 4377 50  0000 C CNN
F 2 "" H 6000 4550 50  0001 C CNN
F 3 "" H 6000 4550 50  0001 C CNN
	1    6000 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 4550 6400 4550
$Comp
L power:GND #PWR?
U 1 1 5F4D8250
P 6200 3250
AR Path="/5F4D8250" Ref="#PWR?"  Part="1" 
AR Path="/5F8190B2/5F4D8250" Ref="#PWR079"  Part="1" 
F 0 "#PWR079" H 6200 3000 50  0001 C CNN
F 1 "GND" H 6205 3077 50  0000 C CNN
F 2 "" H 6200 3250 50  0001 C CNN
F 3 "" H 6200 3250 50  0001 C CNN
	1    6200 3250
	1    0    0    -1  
$EndComp
Connection ~ 6200 3250
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 5F91C3E2
P 7650 2200
F 0 "H4" H 7750 2249 50  0000 L CNN
F 1 "MountingHole_Pad" H 7750 2158 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4_Pad_Via" H 7650 2200 50  0001 C CNN
F 3 "~" H 7650 2200 50  0001 C CNN
	1    7650 2200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F91D0F7
P 7650 2300
AR Path="/5F91D0F7" Ref="#PWR?"  Part="1" 
AR Path="/5F8190B2/5F91D0F7" Ref="#PWR070"  Part="1" 
F 0 "#PWR070" H 7650 2050 50  0001 C CNN
F 1 "GND" H 7655 2127 50  0000 C CNN
F 2 "" H 7650 2300 50  0001 C CNN
F 3 "" H 7650 2300 50  0001 C CNN
	1    7650 2300
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 5F921108
P 7650 1650
F 0 "H3" H 7750 1699 50  0000 L CNN
F 1 "MountingHole_Pad" H 7750 1608 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4_Pad_Via" H 7650 1650 50  0001 C CNN
F 3 "~" H 7650 1650 50  0001 C CNN
	1    7650 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F92110E
P 7650 1750
AR Path="/5F92110E" Ref="#PWR?"  Part="1" 
AR Path="/5F8190B2/5F92110E" Ref="#PWR066"  Part="1" 
F 0 "#PWR066" H 7650 1500 50  0001 C CNN
F 1 "GND" H 7655 1577 50  0000 C CNN
F 2 "" H 7650 1750 50  0001 C CNN
F 3 "" H 7650 1750 50  0001 C CNN
	1    7650 1750
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 5F9224E1
P 7650 1150
F 0 "H2" H 7750 1199 50  0000 L CNN
F 1 "MountingHole_Pad" H 7750 1108 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4_Pad_Via" H 7650 1150 50  0001 C CNN
F 3 "~" H 7650 1150 50  0001 C CNN
	1    7650 1150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F9224E7
P 7650 1250
AR Path="/5F9224E7" Ref="#PWR?"  Part="1" 
AR Path="/5F8190B2/5F9224E7" Ref="#PWR064"  Part="1" 
F 0 "#PWR064" H 7650 1000 50  0001 C CNN
F 1 "GND" H 7655 1077 50  0000 C CNN
F 2 "" H 7650 1250 50  0001 C CNN
F 3 "" H 7650 1250 50  0001 C CNN
	1    7650 1250
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 5F9238A4
P 7650 700
F 0 "H1" H 7750 749 50  0000 L CNN
F 1 "MountingHole_Pad" H 7750 658 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4_Pad_Via" H 7650 700 50  0001 C CNN
F 3 "~" H 7650 700 50  0001 C CNN
	1    7650 700 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F9238AA
P 7650 800
AR Path="/5F9238AA" Ref="#PWR?"  Part="1" 
AR Path="/5F8190B2/5F9238AA" Ref="#PWR061"  Part="1" 
F 0 "#PWR061" H 7650 550 50  0001 C CNN
F 1 "GND" H 7655 627 50  0000 C CNN
F 2 "" H 7650 800 50  0001 C CNN
F 3 "" H 7650 800 50  0001 C CNN
	1    7650 800 
	1    0    0    -1  
$EndComp
$Comp
L power:VS #PWR?
U 1 1 5F9265FE
P 5950 2950
AR Path="/5F9265FE" Ref="#PWR?"  Part="1" 
AR Path="/5F8190B2/5F9265FE" Ref="#PWR076"  Part="1" 
F 0 "#PWR076" H 5750 2800 50  0001 C CNN
F 1 "VS" H 5965 3123 50  0000 C CNN
F 2 "" H 5950 2950 50  0001 C CNN
F 3 "" H 5950 2950 50  0001 C CNN
	1    5950 2950
	1    0    0    -1  
$EndComp
Text GLabel 10100 2250 0    50   Input ~ 0
VREF
Text GLabel 10100 2350 0    50   Input ~ 0
GNDA
$Comp
L power:VS #PWR?
U 1 1 5FB9BB08
P 6900 2950
AR Path="/5FB9BB08" Ref="#PWR?"  Part="1" 
AR Path="/5F8190B2/5FB9BB08" Ref="#PWR077"  Part="1" 
F 0 "#PWR077" H 6700 2800 50  0001 C CNN
F 1 "VS" H 6915 3123 50  0000 C CNN
F 2 "" H 6900 2950 50  0001 C CNN
F 3 "" H 6900 2950 50  0001 C CNN
	1    6900 2950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5F4D3B23
P 7000 2850
AR Path="/5F4D3B23" Ref="#PWR?"  Part="1" 
AR Path="/5F8190B2/5F4D3B23" Ref="#PWR075"  Part="1" 
F 0 "#PWR075" H 7000 2700 50  0001 C CNN
F 1 "+5V" H 7015 3023 50  0000 C CNN
F 2 "" H 7000 2850 50  0001 C CNN
F 3 "" H 7000 2850 50  0001 C CNN
	1    7000 2850
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5F4D34D8
P 7150 2750
AR Path="/5F4D34D8" Ref="#PWR?"  Part="1" 
AR Path="/5F8190B2/5F4D34D8" Ref="#PWR074"  Part="1" 
F 0 "#PWR074" H 7150 2600 50  0001 C CNN
F 1 "+3V3" H 7165 2923 50  0000 C CNN
F 2 "" H 7150 2750 50  0001 C CNN
F 3 "" H 7150 2750 50  0001 C CNN
	1    7150 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 2850 7150 2850
Wire Wire Line
	6900 2950 7150 2950
Wire Wire Line
	7150 3050 7150 3150
$Comp
L power:GND #PWR?
U 1 1 5FB8E65D
P 7150 3150
AR Path="/5FB8E65D" Ref="#PWR?"  Part="1" 
AR Path="/5F8190B2/5FB8E65D" Ref="#PWR078"  Part="1" 
F 0 "#PWR078" H 7150 2900 50  0001 C CNN
F 1 "GND" H 7155 2977 50  0000 C CNN
F 2 "" H 7150 3150 50  0001 C CNN
F 3 "" H 7150 3150 50  0001 C CNN
	1    7150 3150
	1    0    0    -1  
$EndComp
NoConn ~ 3450 5900
NoConn ~ 1650 3400
NoConn ~ 1650 3500
Text GLabel 5450 -400 1    50   Input ~ 0
GNDA
Text GLabel 5900 -400 1    50   Input ~ 0
VDDA
$Comp
L power:PWR_FLAG #FLG08
U 1 1 5F6B5CAA
P 5900 -400
F 0 "#FLG08" H 5900 -325 50  0001 C CNN
F 1 "PWR_FLAG" H 5900 -227 50  0000 C CNN
F 2 "" H 5900 -400 50  0001 C CNN
F 3 "~" H 5900 -400 50  0001 C CNN
	1    5900 -400
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG07
U 1 1 5F6B63FE
P 5450 -400
F 0 "#FLG07" H 5450 -325 50  0001 C CNN
F 1 "PWR_FLAG" H 5450 -227 50  0000 C CNN
F 2 "" H 5450 -400 50  0001 C CNN
F 3 "~" H 5450 -400 50  0001 C CNN
	1    5450 -400
	-1   0    0    1   
$EndComp
Text GLabel 5000 -400 1    50   Input ~ 0
VREF
$Comp
L power:PWR_FLAG #FLG06
U 1 1 5F6B8D55
P 5000 -400
F 0 "#FLG06" H 5000 -325 50  0001 C CNN
F 1 "PWR_FLAG" H 5000 -227 50  0000 C CNN
F 2 "" H 5000 -400 50  0001 C CNN
F 3 "~" H 5000 -400 50  0001 C CNN
	1    5000 -400
	-1   0    0    1   
$EndComp
$Comp
L MCU_ST_STM32F4:STM32F407VGTx U7
U 1 1 5F79348A
P 2550 3600
F 0 "U7" H 3150 900 50  0000 C CNN
F 1 "STM32F407VGT6" H 3200 800 50  0000 C CNN
F 2 "Package_QFP:LQFP-100_14x14mm_P0.5mm" H 1850 1000 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00037051.pdf" H 2550 3600 50  0001 C CNN
	1    2550 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 900  2450 900 
Wire Wire Line
	2550 6400 2650 6400
Wire Wire Line
	2850 900  2750 900 
Connection ~ 2450 900 
Connection ~ 2550 900 
Wire Wire Line
	2550 900  2450 900 
Connection ~ 2650 900 
Wire Wire Line
	2650 900  2550 900 
Connection ~ 2750 900 
Wire Wire Line
	2750 900  2650 900 
Wire Wire Line
	2250 900  2350 900 
Connection ~ 2250 900 
Connection ~ 2350 900 
Wire Wire Line
	2550 6400 2450 6400
Connection ~ 2550 6400
Connection ~ 2350 6400
Connection ~ 2450 6400
Wire Wire Line
	2450 6400 2350 6400
Wire Wire Line
	650  1600 650  1750
Wire Wire Line
	6250 7250 6150 7250
Wire Wire Line
	6150 7250 6150 7300
Wire Wire Line
	6000 7250 6150 7250
Connection ~ 6150 7250
$Comp
L Device:Ferrite_Bead_Small FB?
U 1 1 5FC07E75
P 10000 2150
AR Path="/5FC07E75" Ref="FB?"  Part="1" 
AR Path="/5F8190B2/5FC07E75" Ref="FB4"  Part="1" 
F 0 "FB4" H 10100 2196 50  0000 L CNN
F 1 "100 @ 100MHz" H 10100 2105 50  0000 L CNN
F 2 "Inductor_SMD:L_0805_2012Metric" V 9930 2150 50  0001 C CNN
F 3 "~" H 10000 2150 50  0001 C CNN
	1    10000 2150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10200 800  10450 800 
Wire Notes Line
	550  2200 550  1450
Wire Notes Line
	550  1450 1300 1450
Wire Notes Line
	1300 1450 1300 2200
Wire Notes Line
	550  2200 1300 2200
Text Notes 600  1550 0    50   ~ 0
Low ESR <2Ohms
Text GLabel 1650 5400 0    50   Input ~ 0
PD8
Text GLabel 1650 5500 0    50   Input ~ 0
PD9
Text GLabel 5250 2650 0    50   Input ~ 0
PD8
Text GLabel 5250 2750 0    50   Input ~ 0
PD9
Text GLabel 5250 4850 0    50   Input ~ 0
UART2_TX
Text GLabel 5250 4750 0    50   Input ~ 0
UART2_RX
Text GLabel 5250 4650 0    50   Input ~ 0
UART2_RTS
Text GLabel 5250 4550 0    50   Input ~ 0
UART2_CTS
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 5F7A5C08
P 5450 4100
AR Path="/5F7A5C08" Ref="J?"  Part="1" 
AR Path="/5F8190B2/5F7A5C08" Ref="J18"  Part="1" 
F 0 "J18" H 5530 4092 50  0000 L CNN
F 1 "UART3" H 5530 4001 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 5450 4100 50  0001 C CNN
F 3 "~" H 5450 4100 50  0001 C CNN
	1    5450 4100
	1    0    0    -1  
$EndComp
Text GLabel 5250 4300 0    50   Output ~ 0
UART3_TX
Text GLabel 5250 4200 0    50   Input ~ 0
UART3_RX
Text GLabel 5250 4100 0    50   BiDi ~ 0
UART3_RTS
Text GLabel 5250 4000 0    50   BiDi ~ 0
UART3_CTS
Text GLabel 9250 5750 0    50   Input ~ 0
USB_D+
Text GLabel 9250 5550 0    50   Input ~ 0
USB_D-
$Comp
L power:VBUS #PWR?
U 1 1 5FB0E664
P 9500 3450
AR Path="/5FB0E664" Ref="#PWR?"  Part="1" 
AR Path="/5F8190B2/5FB0E664" Ref="#PWR081"  Part="1" 
F 0 "#PWR081" H 9500 3300 50  0001 C CNN
F 1 "VBUS" H 9515 3623 50  0000 C CNN
F 2 "" H 9500 3450 50  0001 C CNN
F 3 "" H 9500 3450 50  0001 C CNN
	1    9500 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 3500 9500 3500
Wire Wire Line
	9500 3500 9500 3450
$Comp
L power:GND #PWR?
U 1 1 5FB0E66C
P 10050 3950
AR Path="/5FB0E66C" Ref="#PWR?"  Part="1" 
AR Path="/5F8190B2/5FB0E66C" Ref="#PWR083"  Part="1" 
F 0 "#PWR083" H 10050 3700 50  0001 C CNN
F 1 "GND" H 10055 3777 50  0000 C CNN
F 2 "" H 10050 3950 50  0001 C CNN
F 3 "" H 10050 3950 50  0001 C CNN
	1    10050 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 3950 10050 3900
$Comp
L Power_Management:MIC2025-1YM U?
U 1 1 5FB0E673
P 10050 3600
AR Path="/5FB0E673" Ref="U?"  Part="1" 
AR Path="/5F8190B2/5FB0E673" Ref="U8"  Part="1" 
F 0 "U8" H 10050 3967 50  0000 C CNN
F 1 "MIC2025-2YM" H 10050 3876 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 10850 3350 50  0001 C CNN
F 3 "https://ww1.microchip.com/downloads/en/DeviceDoc/MIC2025-2075-Single-Channel-Power-Distribution-Switch-DS20006030A.pdf" H 10050 3600 50  0001 C CNN
	1    10050 3600
	1    0    0    -1  
$EndComp
Text GLabel 9700 4400 2    50   Input ~ 0
USB_VBUS_DETECT_PIN
Text GLabel 8750 3700 0    50   Input ~ 0
USB_OTG_FAULT
$Comp
L Device:R_Small R?
U 1 1 5FB0E67B
P 9550 4600
AR Path="/5FB0E67B" Ref="R?"  Part="1" 
AR Path="/5F8190B2/5FB0E67B" Ref="R23"  Part="1" 
F 0 "R23" V 9650 4600 50  0000 C CNN
F 1 "1K" V 9445 4600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 9550 4600 50  0001 C CNN
F 3 "~" H 9550 4600 50  0001 C CNN
	1    9550 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5FB0E68A
P 9500 3850
AR Path="/5FB0E68A" Ref="C?"  Part="1" 
AR Path="/5F8190B2/5FB0E68A" Ref="C36"  Part="1" 
F 0 "C36" H 9592 3896 50  0000 L CNN
F 1 "100n" H 9592 3805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9500 3850 50  0001 C CNN
F 3 "~" H 9500 3850 50  0001 C CNN
	1    9500 3850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FB0E690
P 9500 3950
AR Path="/5FB0E690" Ref="#PWR?"  Part="1" 
AR Path="/5F8190B2/5FB0E690" Ref="#PWR082"  Part="1" 
F 0 "#PWR082" H 9500 3700 50  0001 C CNN
F 1 "GND" H 9350 3900 50  0000 C CNN
F 2 "" H 9500 3950 50  0001 C CNN
F 3 "" H 9500 3950 50  0001 C CNN
	1    9500 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 3750 9500 3500
Connection ~ 9500 3500
$Comp
L Device:R_Small R?
U 1 1 5FB0E698
P 9300 4400
AR Path="/5FB0E698" Ref="R?"  Part="1" 
AR Path="/5F8190B2/5FB0E698" Ref="R22"  Part="1" 
F 0 "R22" V 9400 4400 50  0000 C CNN
F 1 "470" V 9195 4400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 9300 4400 50  0001 C CNN
F 3 "~" H 9300 4400 50  0001 C CNN
	1    9300 4400
	0    1    1    0   
$EndComp
$Comp
L Power_Protection:USBLC6-4SC6 U?
U 1 1 5FB0E69F
P 9650 5650
AR Path="/5FB0E69F" Ref="U?"  Part="1" 
AR Path="/5F8190B2/5FB0E69F" Ref="U9"  Part="1" 
F 0 "U9" H 9650 6231 50  0000 C CNN
F 1 "USBLC6-4SC6" H 9650 6140 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 9650 5150 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/usblc6-4.pdf" H 9850 6000 50  0001 C CNN
	1    9650 5650
	1    0    0    -1  
$EndComp
NoConn ~ 9650 5250
$Comp
L power:GND #PWR?
U 1 1 5FB0E6A6
P 9650 6050
AR Path="/5FB0E6A6" Ref="#PWR?"  Part="1" 
AR Path="/5F8190B2/5FB0E6A6" Ref="#PWR089"  Part="1" 
F 0 "#PWR089" H 9650 5800 50  0001 C CNN
F 1 "GND" H 9655 5877 50  0000 C CNN
F 2 "" H 9650 6050 50  0001 C CNN
F 3 "" H 9650 6050 50  0001 C CNN
	1    9650 6050
	1    0    0    -1  
$EndComp
Text GLabel 10050 5550 2    50   Input ~ 0
USB_OTG_ID_PIN
Text GLabel 10050 5750 2    50   Input ~ 0
USB_OTG_VBUS
Text GLabel 9000 4400 0    50   Input ~ 0
USB_OTG_VBUS
$Comp
L power:GND #PWR?
U 1 1 5FB0E6B0
P 9550 4700
AR Path="/5FB0E6B0" Ref="#PWR?"  Part="1" 
AR Path="/5F8190B2/5FB0E6B0" Ref="#PWR086"  Part="1" 
F 0 "#PWR086" H 9550 4450 50  0001 C CNN
F 1 "GND" H 9555 4527 50  0000 C CNN
F 2 "" H 9550 4700 50  0001 C CNN
F 3 "" H 9550 4700 50  0001 C CNN
	1    9550 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 4500 9550 4400
Wire Wire Line
	9200 4400 9000 4400
Text GLabel 10450 3500 2    50   Input ~ 0
USB_OTG_VBUS
Text Notes 8200 3200 0    50   ~ 0
USB OTG protección
Wire Notes Line
	8000 3000 11100 3000
Wire Notes Line
	11100 3000 11100 6350
Wire Notes Line
	11100 6350 8000 6350
Wire Notes Line
	8000 6350 8000 3000
Wire Wire Line
	9400 4400 9550 4400
Connection ~ 9550 4400
Wire Wire Line
	9550 4400 9700 4400
$Comp
L Mechanical:MountingHole_Pad H5
U 1 1 5FCB7933
P 8050 2600
F 0 "H5" H 8150 2649 50  0000 L CNN
F 1 "MountingHole_Pad" H 8150 2558 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4_Pad_Via" H 8050 2600 50  0001 C CNN
F 3 "~" H 8050 2600 50  0001 C CNN
	1    8050 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FCB7939
P 8050 2700
AR Path="/5FCB7939" Ref="#PWR?"  Part="1" 
AR Path="/5F8190B2/5FCB7939" Ref="#PWR092"  Part="1" 
F 0 "#PWR092" H 8050 2450 50  0001 C CNN
F 1 "GND" H 8055 2527 50  0000 C CNN
F 2 "" H 8050 2700 50  0001 C CNN
F 3 "" H 8050 2700 50  0001 C CNN
	1    8050 2700
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x10 J11
U 1 1 5F8D1AC2
P 5450 1750
F 0 "J11" H 5530 1742 50  0000 L CNN
F 1 "pwm" H 5530 1651 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-10-5.08_1x10_P5.08mm_Horizontal" H 5450 1750 50  0001 C CNN
F 3 "~" H 5450 1750 50  0001 C CNN
	1    5450 1750
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x10 J15
U 1 1 5F8D4E5C
P 5450 2850
F 0 "J15" H 5530 2842 50  0000 L CNN
F 1 "gpio" H 5530 2751 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-10-5.08_1x10_P5.08mm_Horizontal" H 5450 2850 50  0001 C CNN
F 3 "~" H 5450 2850 50  0001 C CNN
	1    5450 2850
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J17
U 1 1 5F8DD831
P 7350 2850
F 0 "J17" H 7430 2842 50  0000 L CNN
F 1 "Conn_01x04" H 7430 2751 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 7350 2850 50  0001 C CNN
F 3 "~" H 7350 2850 50  0001 C CNN
	1    7350 2850
	1    0    0    -1  
$EndComp
Text GLabel 3450 5800 2    50   Input ~ 0
PC12
Text GLabel 8750 3550 0    50   Input ~ 0
PC12
$Comp
L Device:R_Small R30
U 1 1 5F91F22F
P 9300 3850
F 0 "R30" H 9500 3800 50  0000 R CNN
F 1 "10K" H 9500 3900 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 9300 3850 50  0001 C CNN
F 3 "~" H 9300 3850 50  0001 C CNN
	1    9300 3850
	-1   0    0    1   
$EndComp
Wire Wire Line
	8950 3600 8950 3550
Wire Wire Line
	8950 3550 8750 3550
$Comp
L Device:R_Small R29
U 1 1 5F91E6DE
P 9100 3400
F 0 "R29" H 9300 3350 50  0000 R CNN
F 1 "10K" H 9300 3450 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 9100 3400 50  0001 C CNN
F 3 "~" H 9100 3400 50  0001 C CNN
	1    9100 3400
	-1   0    0    1   
$EndComp
Wire Wire Line
	8950 3600 9300 3600
Wire Wire Line
	9300 3950 9500 3950
Connection ~ 9500 3950
Wire Wire Line
	9300 3750 9300 3600
Connection ~ 9300 3600
Wire Wire Line
	9300 3600 9650 3600
$Comp
L power:+3V3 #PWR?
U 1 1 5F94273B
P 9100 3300
AR Path="/5F94273B" Ref="#PWR?"  Part="1" 
AR Path="/5F8190B2/5F94273B" Ref="#PWR05"  Part="1" 
F 0 "#PWR05" H 9100 3150 50  0001 C CNN
F 1 "+3V3" H 9115 3473 50  0000 C CNN
F 2 "" H 9100 3300 50  0001 C CNN
F 3 "" H 9100 3300 50  0001 C CNN
	1    9100 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 3700 9100 3700
Wire Wire Line
	9100 3500 9100 3700
Connection ~ 9100 3700
Wire Wire Line
	9100 3700 9650 3700
$EndSCHEMATC
