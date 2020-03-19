EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "OpenAmigaFourPlayerAdapter"
Date "2020-02-22"
Rev "2"
Comp "SukkoPera"
Comment1 "Licensed under CERN OHL v.1.2"
Comment2 "Thanks to Graham P."
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	7000 3600 6900 3600
Wire Wire Line
	6900 3600 6900 3000
Wire Wire Line
	6900 3000 4300 3000
Wire Wire Line
	4300 3000 4300 3700
Wire Wire Line
	4300 3700 4900 3700
Wire Wire Line
	7000 3700 6800 3700
Wire Wire Line
	6800 3700 6800 2900
Wire Wire Line
	6800 2900 4200 2900
Wire Wire Line
	4200 2900 4200 3800
Wire Wire Line
	4200 3800 4900 3800
Wire Wire Line
	7000 3800 6700 3800
Wire Wire Line
	6700 3800 6700 2800
Wire Wire Line
	6700 2800 4100 2800
Wire Wire Line
	4100 2800 4100 3900
Wire Wire Line
	4100 3900 4900 3900
Wire Wire Line
	7000 3900 6600 3900
Wire Wire Line
	6600 3900 6600 2700
Wire Wire Line
	6600 2700 4000 2700
Wire Wire Line
	4000 2700 4000 4000
Wire Wire Line
	4000 4000 4900 4000
Wire Wire Line
	7600 3700 7600 2600
Wire Wire Line
	7600 2600 3900 2600
Wire Wire Line
	3900 2600 3900 4800
Wire Wire Line
	3900 4800 4900 4800
Wire Wire Line
	7600 3900 7700 3900
Wire Wire Line
	7700 3900 7700 2500
Wire Wire Line
	7700 2500 3800 2500
Wire Wire Line
	3800 2500 3800 3100
Wire Wire Line
	3800 3100 5955 3105
Wire Wire Line
	5955 3105 5955 3900
Wire Wire Line
	4900 4100 4000 4100
Wire Wire Line
	4000 4100 4000 5200
Wire Wire Line
	4000 5200 6600 5200
Wire Wire Line
	6600 5200 6600 4400
Wire Wire Line
	6600 4400 7000 4400
Wire Wire Line
	7000 4500 6500 4500
Wire Wire Line
	6500 4500 6500 5300
Wire Wire Line
	6500 5300 4100 5300
Wire Wire Line
	4100 5300 4100 4200
Wire Wire Line
	4100 4200 4900 4200
Wire Wire Line
	7000 4600 6400 4600
Wire Wire Line
	6400 4600 6400 5400
Wire Wire Line
	6400 5400 4200 5400
Wire Wire Line
	4200 5400 4200 4300
Wire Wire Line
	4200 4300 4900 4300
Wire Wire Line
	7000 4700 6300 4700
Wire Wire Line
	6300 4700 6300 5500
Wire Wire Line
	6300 5500 4300 5500
Wire Wire Line
	4300 5500 4300 4400
Wire Wire Line
	4300 4400 4900 4400
Wire Wire Line
	7600 4500 7800 4500
Wire Wire Line
	7800 4500 7800 5600
Wire Wire Line
	7800 5600 4400 5600
Wire Wire Line
	4400 5600 4400 4600
Wire Wire Line
	4400 4600 4900 4600
Wire Wire Line
	7600 4700 7700 4700
Wire Wire Line
	7700 4700 7700 5700
Wire Wire Line
	7700 5700 5700 5700
Wire Wire Line
	5700 5700 5700 4700
Wire Wire Line
	5700 4000 5500 4000
$Comp
L 4_Player_Adapter-eagle-import:F25HP J1
U 1 1 753049C4
P 5200 4200
F 0 "J1" H 5200 5146 59  0000 C CNN
F 1 "F25HP" H 5200 5041 59  0000 C CNN
F 2 "Connector_Dsub:DSUB-25_Male_EdgeMount_P2.77mm" H 5200 4200 50  0001 C CNN
F 3 "" H 5200 4200 50  0001 C CNN
	1    5200 4200
	1    0    0    -1  
$EndComp
$Comp
L 4_Player_Adapter-eagle-import:F09HP J3
U 1 1 DDF2E3E2
P 7300 3800
F 0 "J3" H 7300 4313 59  0000 C CNN
F 1 "F09HP" H 7300 4208 59  0000 C CNN
F 2 "Connector_Dsub:DSUB-9_Male_EdgeMount_P2.77mm" H 7300 3800 50  0001 C CNN
F 3 "" H 7300 3800 50  0001 C CNN
	1    7300 3800
	1    0    0    -1  
$EndComp
$Comp
L 4_Player_Adapter-eagle-import:F09HP J4
U 1 1 03A3F618
P 7300 4600
F 0 "J4" H 7300 4193 59  0000 C CNN
F 1 "F09HP" H 7300 4088 59  0000 C CNN
F 2 "Connector_Dsub:DSUB-9_Male_EdgeMount_P2.77mm" H 7300 4600 50  0001 C CNN
F 3 "" H 7300 4600 50  0001 C CNN
	1    7300 4600
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male JP3
U 1 1 5E0E9126
P 6250 3455
F 0 "JP3" V 6085 3383 50  0000 C CNN
F 1 "J3POWER" V 6176 3383 50  0000 C CNN
F 2 "OpenAmigaFourPlayerAdapter:PinHeader_1x02_P2.54mm_Vertical" H 6250 3455 50  0001 C CNN
F 3 "~" H 6250 3455 50  0001 C CNN
	1    6250 3455
	0    1    1    0   
$EndComp
Wire Wire Line
	5500 3600 5595 3600
Wire Wire Line
	5595 3600 5595 3800
Wire Wire Line
	6150 3800 6150 3655
Wire Wire Line
	5595 3800 6150 3800
$Comp
L Connector:Conn_01x02_Male JP4
U 1 1 5E0F1A6F
P 6040 4500
F 0 "JP4" V 5875 4428 50  0000 C CNN
F 1 "J4POWER" V 5966 4428 50  0000 C CNN
F 2 "OpenAmigaFourPlayerAdapter:PinHeader_1x02_P2.54mm_Vertical" H 6040 4500 50  0001 C CNN
F 3 "~" H 6040 4500 50  0001 C CNN
	1    6040 4500
	0    1    1    0   
$EndComp
Wire Wire Line
	5940 4700 5940 4800
Wire Wire Line
	5940 4800 5595 4800
Wire Wire Line
	5595 4800 5595 3800
Connection ~ 5595 3800
Text Label 5595 3600 2    50   ~ 0
+5v
Text Label 4665 3700 0    50   ~ 0
up3
Text Label 4665 3800 0    50   ~ 0
down3
Text Label 4665 3900 0    50   ~ 0
left3
Text Label 4665 4000 0    50   ~ 0
right3
Text Label 4665 4100 0    50   ~ 0
up4
Text Label 4665 4200 0    50   ~ 0
down4
Text Label 4665 4300 0    50   ~ 0
left4
Text Label 4665 4400 0    50   ~ 0
right4
Text Label 4665 4600 0    50   ~ 0
fire4
Text Label 4665 4800 0    50   ~ 0
fire3
Connection ~ 5700 4000
Wire Wire Line
	7600 3800 7795 3800
Wire Wire Line
	7795 3800 7795 4190
Wire Wire Line
	7795 4190 6250 4190
Wire Wire Line
	6250 3655 6250 4190
Wire Wire Line
	7600 4600 7900 4600
Wire Wire Line
	7900 4600 7900 4960
Wire Wire Line
	7900 4960 6040 4960
Wire Wire Line
	6040 4700 6040 4960
Wire Wire Line
	5500 4100 5700 4100
Connection ~ 5700 4100
Wire Wire Line
	5700 4100 5700 4000
$Comp
L Connector:Conn_01x01_Male J99
U 1 1 5E13B066
P 10610 6220
F 0 "J99" V 10672 6264 50  0000 L CNN
F 1 "OSHW_LOGO" V 10763 6264 50  0000 L CNN
F 2 "Symbol:OSHW-Logo_5.7x6mm_Copper" H 10610 6220 50  0001 C CNN
F 3 "~" H 10610 6220 50  0001 C CNN
	1    10610 6220
	0    1    1    0   
$EndComp
NoConn ~ 10610 6420
Wire Wire Line
	5500 3900 5700 3900
Wire Wire Line
	5700 3900 5700 4000
Wire Wire Line
	5500 4200 5700 4200
Connection ~ 5700 4200
Wire Wire Line
	5700 4200 5700 4100
Wire Wire Line
	5500 4300 5700 4300
Connection ~ 5700 4300
Wire Wire Line
	5700 4300 5700 4200
Wire Wire Line
	5500 4400 5700 4400
Connection ~ 5700 4400
Wire Wire Line
	5700 4400 5700 4300
Wire Wire Line
	5500 4500 5700 4500
Connection ~ 5700 4500
Wire Wire Line
	5700 4500 5700 4400
Wire Wire Line
	5500 4600 5700 4600
Connection ~ 5700 4600
Wire Wire Line
	5700 4600 5700 4500
Wire Wire Line
	5500 4700 5700 4700
Connection ~ 5700 4700
Wire Wire Line
	5700 4700 5700 4600
Wire Wire Line
	5700 3900 5955 3900
Connection ~ 5700 3900
Text Label 5800 3900 0    50   ~ 0
gnd
$EndSCHEMATC
