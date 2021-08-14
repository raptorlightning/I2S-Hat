EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
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
Connection ~ 3150 6800
$Comp
L power:+3.3VP #PWR043
U 1 1 5D96245B
P 3150 6800
F 0 "#PWR043" H 3300 6750 50  0001 C CNN
F 1 "+3.3VP" H 3170 6943 50  0000 C CNN
F 2 "" H 3150 6800 50  0001 C CNN
F 3 "" H 3150 6800 50  0001 C CNN
	1    3150 6800
	1    0    0    -1  
$EndComp
Connection ~ 3825 7525
$Comp
L power:+3.3VA #PWR048
U 1 1 5D951C1F
P 3825 7525
F 0 "#PWR048" H 3825 7375 50  0001 C CNN
F 1 "+3.3VA" H 3840 7698 50  0000 C CNN
F 2 "" H 3825 7525 50  0001 C CNN
F 3 "" H 3825 7525 50  0001 C CNN
	1    3825 7525
	1    0    0    -1  
$EndComp
Wire Wire Line
	9775 5825 9775 6000
Text Label 9775 5950 0    50   ~ 0
RST
Wire Wire Line
	9775 5525 9775 5450
Wire Wire Line
	9775 6300 9775 6350
$Comp
L power:GNDREF #PWR040
U 1 1 5E3EC575
P 9775 6350
F 0 "#PWR040" H 9775 6100 50  0001 C CNN
F 1 "GNDREF" H 9780 6177 50  0001 C CNN
F 2 "" H 9775 6350 50  0001 C CNN
F 3 "" H 9775 6350 50  0001 C CNN
	1    9775 6350
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR033
U 1 1 5E3C8D37
P 9775 5450
F 0 "#PWR033" H 9775 5300 50  0001 C CNN
F 1 "+3V3" H 9790 5623 50  0000 C CNN
F 2 "" H 9775 5450 50  0001 C CNN
F 3 "" H 9775 5450 50  0001 C CNN
	1    9775 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C17
U 1 1 5E3B0789
P 9775 6150
F 0 "C17" H 9950 6100 50  0000 C CNN
F 1 "1u" H 9950 6175 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 9813 6000 50  0001 C CNN
F 3 "~" H 9775 6150 50  0001 C CNN
	1    9775 6150
	1    0    0    1   
$EndComp
$Comp
L Device:R R30
U 1 1 5E1A1548
P 9775 5675
F 0 "R30" V 9875 5625 50  0000 L CNN
F 1 "100K" V 9775 5575 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 9705 5675 50  0001 C CNN
F 3 "~" H 9775 5675 50  0001 C CNN
	1    9775 5675
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LD1117S33TR_SOT223 U9
U 1 1 5D8EE4A3
P 2550 6800
F 0 "U9" H 2550 7075 60  0000 C CNN
F 1 "LD1117S33" H 2550 6975 60  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 2750 7000 60  0001 L CNN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/99/3b/7d/91/91/51/4b/be/CD00000544.pdf/files/CD00000544.pdf/jcr:content/translations/en.CD00000544.pdf" H 2750 7100 60  0001 L CNN
F 4 "497-1241-1-ND" H 2750 7200 60  0001 L CNN "Digi-Key_PN"
F 5 "LD1117S33CTR" H 2750 7300 60  0001 L CNN "MPN"
F 6 "Integrated Circuits (ICs)" H 2750 7400 60  0001 L CNN "Category"
F 7 "PMIC - Voltage Regulators - Linear" H 2750 7500 60  0001 L CNN "Family"
F 8 "http://www.st.com/content/ccc/resource/technical/document/datasheet/99/3b/7d/91/91/51/4b/be/CD00000544.pdf/files/CD00000544.pdf/jcr:content/translations/en.CD00000544.pdf" H 2750 7600 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/stmicroelectronics/LD1117S33CTR/497-1241-1-ND/586241" H 2750 7700 60  0001 L CNN "DK_Detail_Page"
F 10 "IC REG LINEAR 3.3V 800MA SOT223" H 2750 7800 60  0001 L CNN "Description"
F 11 "STMicroelectronics" H 2750 7900 60  0001 L CNN "Manufacturer"
F 12 "Active" H 2750 8000 60  0001 L CNN "Status"
	1    2550 6800
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR044
U 1 1 5D8F73B2
P 2550 7100
F 0 "#PWR044" H 2550 6850 50  0001 C CNN
F 1 "GNDREF" H 2555 6927 50  0001 C CNN
F 2 "" H 2550 7100 50  0001 C CNN
F 3 "" H 2550 7100 50  0001 C CNN
	1    2550 7100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C20
U 1 1 5D8FA433
P 2025 6950
F 0 "C20" H 2140 6996 50  0000 L CNN
F 1 "100n" H 2140 6905 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 2063 6800 50  0001 C CNN
F 3 "~" H 2025 6950 50  0001 C CNN
	1    2025 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2025 6800 2250 6800
Wire Wire Line
	2025 7100 2550 7100
Connection ~ 2550 7100
$Comp
L Device:CP C19
U 1 1 5D8FB705
P 1625 6950
F 0 "C19" H 1743 6996 50  0000 L CNN
F 1 "47u" H 1743 6905 50  0000 L CNN
F 2 "Capacitor_SMD:C_Elec_6.3x5.8" H 1663 6800 50  0001 C CNN
F 3 "~" H 1625 6950 50  0001 C CNN
F 4 "667-EEH-ZA1E470P" H 1625 6950 50  0001 C CNN "Mouser Part Number"
	1    1625 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1625 7100 2025 7100
Connection ~ 2025 7100
Wire Wire Line
	1625 6800 2025 6800
Connection ~ 2025 6800
$Comp
L Device:CP C21
U 1 1 5D901B5D
P 3150 6950
F 0 "C21" H 3268 6996 50  0000 L CNN
F 1 "47u" H 3268 6905 50  0000 L CNN
F 2 "Capacitor_SMD:C_Elec_6.3x5.8" H 3188 6800 50  0001 C CNN
F 3 "~" H 3150 6950 50  0001 C CNN
F 4 "667-EEH-ZA1E470P" H 3150 6950 50  0001 C CNN "Mouser Part Number"
	1    3150 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 7100 3150 7100
$Comp
L power:GNDREF #PWR049
U 1 1 5D8F4285
P 1600 7825
F 0 "#PWR049" H 1600 7575 50  0001 C CNN
F 1 "GNDREF" H 1605 7652 50  0001 C CNN
F 2 "" H 1600 7825 50  0001 C CNN
F 3 "" H 1600 7825 50  0001 C CNN
	1    1600 7825
	1    0    0    -1  
$EndComp
Wire Wire Line
	3825 7825 3225 7825
Connection ~ 2200 7525
Wire Wire Line
	2200 7825 1600 7825
$Comp
L Device:CP C25
U 1 1 5D9016D4
P 3825 7675
F 0 "C25" H 3943 7721 50  0000 L CNN
F 1 "47u" H 3943 7630 50  0000 L CNN
F 2 "Capacitor_SMD:C_Elec_6.3x5.8" H 3863 7525 50  0001 C CNN
F 3 "~" H 3825 7675 50  0001 C CNN
F 4 "667-EEH-ZA1E470P" H 3825 7675 50  0001 C CNN "Mouser Part Number"
	1    3825 7675
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C23
U 1 1 5D9011F5
P 2200 7675
F 0 "C23" H 2318 7721 50  0000 L CNN
F 1 "47u" H 2318 7630 50  0000 L CNN
F 2 "Capacitor_SMD:C_Elec_6.3x5.8" H 2238 7525 50  0001 C CNN
F 3 "~" H 2200 7675 50  0001 C CNN
F 4 "667-EEH-ZA1E470P" H 2200 7675 50  0001 C CNN "Mouser Part Number"
	1    2200 7675
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR046
U 1 1 5D8FE86B
P 2200 7525
F 0 "#PWR046" H 2200 7375 50  0001 C CNN
F 1 "+3V3" H 2215 7698 50  0000 C CNN
F 2 "" H 2200 7525 50  0001 C CNN
F 3 "" H 2200 7525 50  0001 C CNN
	1    2200 7525
	1    0    0    -1  
$EndComp
Connection ~ 1600 7825
Wire Wire Line
	1075 7825 1600 7825
Wire Wire Line
	1075 7525 1300 7525
Connection ~ 3225 7825
Wire Wire Line
	2700 7825 3225 7825
Wire Wire Line
	2700 7525 2925 7525
$Comp
L Device:C C24
U 1 1 5D8FA1FE
P 2700 7675
F 0 "C24" H 2815 7721 50  0000 L CNN
F 1 "100n" H 2815 7630 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 2738 7525 50  0001 C CNN
F 3 "~" H 2700 7675 50  0001 C CNN
	1    2700 7675
	1    0    0    -1  
$EndComp
$Comp
L Device:C C22
U 1 1 5D8F939D
P 1075 7675
F 0 "C22" H 1190 7721 50  0000 L CNN
F 1 "100n" H 1190 7630 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 1113 7525 50  0001 C CNN
F 3 "~" H 1075 7675 50  0001 C CNN
	1    1075 7675
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR050
U 1 1 5D8F728A
P 3225 7825
F 0 "#PWR050" H 3225 7575 50  0001 C CNN
F 1 "GNDREF" H 3230 7652 50  0001 C CNN
F 2 "" H 3225 7825 50  0001 C CNN
F 3 "" H 3225 7825 50  0001 C CNN
	1    3225 7825
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LD1117S33TR_SOT223 U11
U 1 1 5D8EF2D1
P 3225 7525
F 0 "U11" H 3225 7800 60  0000 C CNN
F 1 "LD1117S33" H 3225 7700 60  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 3425 7725 60  0001 L CNN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/99/3b/7d/91/91/51/4b/be/CD00000544.pdf/files/CD00000544.pdf/jcr:content/translations/en.CD00000544.pdf" H 3425 7825 60  0001 L CNN
F 4 "497-1241-1-ND" H 3425 7925 60  0001 L CNN "Digi-Key_PN"
F 5 "LD1117S33CTR" H 3425 8025 60  0001 L CNN "MPN"
F 6 "Integrated Circuits (ICs)" H 3425 8125 60  0001 L CNN "Category"
F 7 "PMIC - Voltage Regulators - Linear" H 3425 8225 60  0001 L CNN "Family"
F 8 "http://www.st.com/content/ccc/resource/technical/document/datasheet/99/3b/7d/91/91/51/4b/be/CD00000544.pdf/files/CD00000544.pdf/jcr:content/translations/en.CD00000544.pdf" H 3425 8325 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/stmicroelectronics/LD1117S33CTR/497-1241-1-ND/586241" H 3425 8425 60  0001 L CNN "DK_Detail_Page"
F 10 "IC REG LINEAR 3.3V 800MA SOT223" H 3425 8525 60  0001 L CNN "Description"
F 11 "STMicroelectronics" H 3425 8625 60  0001 L CNN "Manufacturer"
F 12 "Active" H 3425 8725 60  0001 L CNN "Status"
	1    3225 7525
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LD1117S33TR_SOT223 U10
U 1 1 5D8EC988
P 1600 7525
F 0 "U10" H 1600 7825 60  0000 C CNN
F 1 "LD1117S33" H 1600 7700 60  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 1800 7725 60  0001 L CNN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/99/3b/7d/91/91/51/4b/be/CD00000544.pdf/files/CD00000544.pdf/jcr:content/translations/en.CD00000544.pdf" H 1800 7825 60  0001 L CNN
F 4 "497-1241-1-ND" H 1800 7925 60  0001 L CNN "Digi-Key_PN"
F 5 "LD1117S33CTR" H 1800 8025 60  0001 L CNN "MPN"
F 6 "Integrated Circuits (ICs)" H 1800 8125 60  0001 L CNN "Category"
F 7 "PMIC - Voltage Regulators - Linear" H 1800 8225 60  0001 L CNN "Family"
F 8 "http://www.st.com/content/ccc/resource/technical/document/datasheet/99/3b/7d/91/91/51/4b/be/CD00000544.pdf/files/CD00000544.pdf/jcr:content/translations/en.CD00000544.pdf" H 1800 8325 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/stmicroelectronics/LD1117S33CTR/497-1241-1-ND/586241" H 1800 8425 60  0001 L CNN "DK_Detail_Page"
F 10 "IC REG LINEAR 3.3V 800MA SOT223" H 1800 8525 60  0001 L CNN "Description"
F 11 "STMicroelectronics" H 1800 8625 60  0001 L CNN "Manufacturer"
F 12 "Active" H 1800 8725 60  0001 L CNN "Status"
	1    1600 7525
	1    0    0    -1  
$EndComp
$Comp
L Mouser:PLR135_T9 J1
U 1 1 6041827B
P 4650 1400
F 0 "J1" H 5004 1528 50  0001 C TNN
F 1 "TORX142L" H 5050 1525 50  0000 C BNN
F 2 "Mouser:PLR135T9" H 5300 1500 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/PLR135_T9.pdf" H 5300 1400 50  0001 L CNN
F 4 "Fiber Optic Transmitters, Receivers, Transceivers Photo Link" H 5300 1300 50  0001 L CNN "Description"
F 5 "20" H 5300 1200 50  0001 L CNN "Height"
F 6 "638-PLR135T9" H 5300 1100 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=638-PLR135T9" H 5300 1000 50  0001 L CNN "Mouser Price/Stock"
F 8 "Everlight" H 5300 900 50  0001 L CNN "Manufacturer_Name"
F 9 "PLR135/T9" H 5300 800 50  0001 L CNN "Manufacturer_Part_Number"
	1    4650 1400
	-1   0    0    1   
$EndComp
$Comp
L Device:C C4
U 1 1 60419E74
P 4725 1500
F 0 "C4" H 4475 1500 50  0000 L CNN
F 1 "100n" H 4525 1400 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 4763 1350 50  0001 C CNN
F 3 "~" H 4725 1500 50  0001 C CNN
	1    4725 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 6041B361
P 5250 1400
F 0 "C3" H 5100 1500 50  0000 L CNN
F 1 "100n" H 5050 1300 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 5288 1250 50  0001 C CNN
F 3 "~" H 5250 1400 50  0001 C CNN
	1    5250 1400
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 6041DA84
P 7450 1450
F 0 "R2" V 7550 1450 50  0000 C CNN
F 1 "33" V 7450 1450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 7380 1450 50  0001 C CNN
F 3 "~" H 7450 1450 50  0001 C CNN
	1    7450 1450
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R3
U 1 1 6041EF23
P 1150 1650
F 0 "R3" V 1250 1650 50  0000 C CNN
F 1 "33" V 1150 1650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 1080 1650 50  0001 C CNN
F 3 "~" H 1150 1650 50  0001 C CNN
	1    1150 1650
	0    1    1    0   
$EndComp
$Comp
L dk_Logic-Buffers-Drivers-Receivers-Transceivers:NC7SZ125M5X U1
U 1 1 6046D214
P 5725 1300
F 0 "U1" H 5900 1100 60  0000 C TNN
F 1 "74LVC1G125DBV" H 5650 800 47  0000 C BNN
F 2 "digikey-footprints:SOT-753" H 5925 1500 60  0001 L CNN
F 3 "https://www.onsemi.com/pub/Collateral/NC7SZ125-D.PDF" H 5925 1600 60  0001 L CNN
F 4 "NC7SZ125M5XCT-ND" H 5925 1700 60  0001 L CNN "Digi-Key_PN"
F 5 "NC7SZ125M5X" H 5925 1800 60  0001 L CNN "MPN"
F 6 "Integrated Circuits (ICs)" H 5925 1900 60  0001 L CNN "Category"
F 7 "Logic - Buffers, Drivers, Receivers, Transceivers" H 5925 2000 60  0001 L CNN "Family"
F 8 "https://www.onsemi.com/pub/Collateral/NC7SZ125-D.PDF" H 5925 2100 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/NC7SZ125M5X/NC7SZ125M5XCT-ND/673392" H 5925 2200 60  0001 L CNN "DK_Detail_Page"
F 10 "IC BUF NON-INVERT 5.5V SOT23-5" H 5925 2300 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 5925 2400 60  0001 L CNN "Manufacturer"
F 12 "Active" H 5925 2500 60  0001 L CNN "Status"
	1    5725 1300
	1    0    0    -1  
$EndComp
Text Label 7600 1450 0    50   ~ 0
RX
$Comp
L power:GNDREF #PWR07
U 1 1 604CA331
P 3850 1700
F 0 "#PWR07" H 3850 1450 50  0001 C CNN
F 1 "GNDREF" H 3855 1527 50  0001 C CNN
F 2 "" H 3850 1700 50  0001 C CNN
F 3 "" H 3850 1700 50  0001 C CNN
	1    3850 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5725 1600 5725 1700
$Comp
L Mouser:PLR135_T9 J2
U 1 1 6050EA5E
P 2250 1650
F 0 "J2" H 2650 1285 50  0000 C CNN
F 1 "TOTX142L" H 2650 1376 50  0000 C CNN
F 2 "Mouser:PLR135T9" H 2900 1750 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/PLR135_T9.pdf" H 2900 1650 50  0001 L CNN
F 4 "Fiber Optic Transmitters, Receivers, Transceivers Photo Link" H 2900 1550 50  0001 L CNN "Description"
F 5 "20" H 2900 1450 50  0001 L CNN "Height"
F 6 "638-PLR135T9" H 2900 1350 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=638-PLR135T9" H 2900 1250 50  0001 L CNN "Mouser Price/Stock"
F 8 "Everlight" H 2900 1150 50  0001 L CNN "Manufacturer_Name"
F 9 "PLR135/T9" H 2900 1050 50  0001 L CNN "Manufacturer_Part_Number"
	1    2250 1650
	1    0    0    1   
$EndComp
$Comp
L Device:C C5
U 1 1 605102AF
P 3200 1800
F 0 "C5" H 3315 1846 50  0000 L CNN
F 1 "100n" H 3315 1755 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 3238 1650 50  0001 C CNN
F 3 "~" H 3200 1800 50  0001 C CNN
	1    3200 1800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3050 1650 3200 1650
Wire Wire Line
	3200 1950 2250 1950
Wire Wire Line
	2250 1950 2250 1650
$Comp
L Device:L L2
U 1 1 6052B6DE
P 3200 1450
F 0 "L2" H 3253 1496 50  0000 L CNN
F 1 "47uH" H 3253 1405 50  0000 L CNN
F 2 "Inductor_SMD:L_Taiyo-Yuden_NR-24xx_HandSoldering" H 3200 1450 50  0001 C CNN
F 3 "~" H 3200 1450 50  0001 C CNN
F 4 "963-CB2518T470K" H 3200 1450 50  0001 C CNN "Mouser Part Number"
	1    3200 1450
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3VP #PWR06
U 1 1 6053DE6C
P 3200 1200
F 0 "#PWR06" H 3350 1150 50  0001 C CNN
F 1 "+3.3VP" H 3220 1343 50  0000 C CNN
F 2 "" H 3200 1200 50  0001 C CNN
F 3 "" H 3200 1200 50  0001 C CNN
	1    3200 1200
	1    0    0    -1  
$EndComp
$Comp
L dk_Logic-Buffers-Drivers-Receivers-Transceivers:NC7SZ125M5X U3
U 1 1 60547C7E
P 1900 1550
F 0 "U3" H 1725 1325 60  0000 C TNN
F 1 "74LVC1G125DBV" H 1850 1050 47  0000 C BNN
F 2 "digikey-footprints:SOT-753" H 2100 1750 60  0001 L CNN
F 3 "https://www.onsemi.com/pub/Collateral/NC7SZ125-D.PDF" H 2100 1850 60  0001 L CNN
F 4 "NC7SZ125M5XCT-ND" H 2100 1950 60  0001 L CNN "Digi-Key_PN"
F 5 "NC7SZ125M5X" H 2100 2050 60  0001 L CNN "MPN"
F 6 "Integrated Circuits (ICs)" H 2100 2150 60  0001 L CNN "Category"
F 7 "Logic - Buffers, Drivers, Receivers, Transceivers" H 2100 2250 60  0001 L CNN "Family"
F 8 "https://www.onsemi.com/pub/Collateral/NC7SZ125-D.PDF" H 2100 2350 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/NC7SZ125M5X/NC7SZ125M5XCT-ND/673392" H 2100 2450 60  0001 L CNN "DK_Detail_Page"
F 10 "IC BUF NON-INVERT 5.5V SOT23-5" H 2100 2550 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 2100 2650 60  0001 L CNN "Manufacturer"
F 12 "Active" H 2100 2750 60  0001 L CNN "Status"
	1    1900 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6125 950  5975 950 
Wire Wire Line
	5725 1000 5725 950 
$Comp
L Device:Ferrite_Bead_Small FB1
U 1 1 6041C6DC
P 5875 950
F 0 "FB1" V 6020 950 50  0000 C CNN
F 1 "Ferrite_Bead_Small" H 5975 905 50  0001 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 5805 950 50  0001 C CNN
F 3 "~" H 5875 950 50  0001 C CNN
	1    5875 950 
	0    -1   -1   0   
$EndComp
$Comp
L Device:Ferrite_Bead_Small FB3
U 1 1 6056AF7A
P 2050 1200
F 0 "FB3" V 2195 1200 50  0000 C CNN
F 1 "Ferrite_Bead_Small" H 2150 1155 50  0001 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 1980 1200 50  0001 C CNN
F 3 "~" H 2050 1200 50  0001 C CNN
	1    2050 1200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2150 1200 2300 1200
Wire Wire Line
	1900 1200 1900 1250
$Comp
L Device:C C2
U 1 1 605A39D1
P 1400 1400
F 0 "C2" H 1515 1446 50  0000 L CNN
F 1 "100n" H 1515 1355 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 1438 1250 50  0001 C CNN
F 3 "~" H 1400 1400 50  0001 C CNN
	1    1400 1400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1400 1250 1400 1200
Wire Wire Line
	1400 1200 1900 1200
Wire Wire Line
	1400 1950 1400 1550
Wire Wire Line
	1900 1850 1900 1950
Wire Wire Line
	1900 1950 1550 1950
Wire Wire Line
	1600 1450 1550 1450
Wire Wire Line
	1550 1450 1550 1950
Connection ~ 1550 1950
Wire Wire Line
	1550 1950 1400 1950
Text Label 850  1650 2    50   ~ 0
TX
Wire Wire Line
	1300 1650 1600 1650
$Comp
L Connector:Raspberry_Pi_2_3 J4
U 1 1 609F8248
P 9050 2375
F 0 "J4" H 9050 3856 50  0000 C CNN
F 1 "Raspberry_Pi_2_3" H 9050 3765 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Vertical" H 9050 2375 50  0001 C CNN
F 3 "https://www.raspberrypi.org/documentation/hardware/raspberrypi/schematics/rpi_SCH_3bplus_1p0_reduced.pdf" H 9050 2375 50  0001 C CNN
	1    9050 2375
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR03
U 1 1 60A11477
P 8700 950
F 0 "#PWR03" H 8700 800 50  0001 C CNN
F 1 "+5V" H 8715 1123 50  0000 C CNN
F 2 "" H 8700 950 50  0001 C CNN
F 3 "" H 8700 950 50  0001 C CNN
	1    8700 950 
	1    0    0    -1  
$EndComp
Text Label 8175 2575 2    50   ~ 0
GPIO22
Text Label 8175 3075 2    50   ~ 0
GPIO27
Text Label 8175 2975 2    50   ~ 0
GPIO26
Text Label 8175 2875 2    50   ~ 0
GPIO25
Text Label 8175 2775 2    50   ~ 0
GPIO24
Text Label 8175 2675 2    50   ~ 0
GPIO23
Text Label 8175 2375 2    50   ~ 0
DIN_WM
Text Label 8175 2275 2    50   ~ 0
DOUT_WM
Text Label 8175 2175 2    50   ~ 0
LRCLK
Text Label 8175 1975 2    50   ~ 0
BCLK
Text Label 8175 1875 2    50   ~ 0
GPIO17
Text Label 8175 1775 2    50   ~ 0
GPIO16
Text Label 8175 1575 2    50   ~ 0
GPIO15
Text Label 8175 1475 2    50   ~ 0
GPIO14
$Comp
L power:GNDREF #PWR021
U 1 1 60A9B8EE
P 9425 3800
F 0 "#PWR021" H 9425 3550 50  0001 C CNN
F 1 "GNDREF" H 9430 3627 50  0001 C CNN
F 2 "" H 9425 3800 50  0001 C CNN
F 3 "" H 9425 3800 50  0001 C CNN
	1    9425 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 950  8700 1075
Wire Wire Line
	8700 1075 8850 1075
Connection ~ 8850 1075
Wire Wire Line
	8850 1075 8950 1075
Text Label 9925 1475 0    50   ~ 0
GPIO0
Wire Wire Line
	8175 1475 8250 1475
Wire Wire Line
	8175 1575 8250 1575
Wire Wire Line
	8175 1775 8250 1775
Wire Wire Line
	8175 1875 8250 1875
Wire Wire Line
	8175 1975 8250 1975
Wire Wire Line
	8175 2175 8250 2175
Wire Wire Line
	8175 2275 8250 2275
Wire Wire Line
	8175 2375 8250 2375
Wire Wire Line
	8175 2575 8250 2575
Wire Wire Line
	8175 2675 8250 2675
Wire Wire Line
	8175 2775 8250 2775
Wire Wire Line
	8175 2875 8250 2875
Wire Wire Line
	8175 2975 8250 2975
Wire Wire Line
	8175 3075 8250 3075
Wire Wire Line
	9850 1475 9925 1475
Wire Wire Line
	9850 1575 9925 1575
Wire Wire Line
	9850 1775 9925 1775
Wire Wire Line
	9850 1875 9925 1875
Wire Wire Line
	9850 2075 9925 2075
Wire Wire Line
	9850 2175 9925 2175
Wire Wire Line
	9850 2275 9925 2275
Wire Wire Line
	9850 2475 9925 2475
Wire Wire Line
	9850 2575 9925 2575
Wire Wire Line
	9850 2675 9925 2675
Wire Wire Line
	9850 2775 9925 2775
Wire Wire Line
	9850 2875 9925 2875
Wire Wire Line
	9850 3075 9925 3075
Wire Wire Line
	9850 3175 9925 3175
Text Label 9925 1575 0    50   ~ 0
GPIO1
Text Label 9925 1775 0    50   ~ 0
GPIO2
Text Label 9925 1875 0    50   ~ 0
GPIO3
Text Label 9925 2075 0    50   ~ 0
GPIO4
Text Label 9925 2175 0    50   ~ 0
GPIO5
Text Label 9925 2275 0    50   ~ 0
GPIO6
Text Label 9925 2475 0    50   ~ 0
GPIO7
Text Label 9925 2575 0    50   ~ 0
GPIO8
Text Label 9925 2675 0    50   ~ 0
GPIO9
Text Label 9925 2775 0    50   ~ 0
GPIO10
Text Label 9925 2875 0    50   ~ 0
GPIO11
Text Label 9925 3075 0    50   ~ 0
GPIO12
Text Label 9925 3175 0    50   ~ 0
GPIO13
Connection ~ 9525 4350
Wire Wire Line
	9050 4350 9525 4350
Connection ~ 9050 4350
Wire Wire Line
	8700 4350 9050 4350
Wire Wire Line
	8700 4550 8700 4350
Wire Wire Line
	8425 4550 8700 4550
Wire Wire Line
	9050 4650 8425 4650
Connection ~ 9050 4650
Wire Wire Line
	9525 4650 9050 4650
Wire Wire Line
	8500 4750 8425 4750
Wire Wire Line
	8425 4450 8500 4450
Text Label 8500 4450 0    50   ~ 0
RX
Wire Wire Line
	8425 5800 8425 5350
Connection ~ 8425 5800
Wire Wire Line
	7975 5800 8425 5800
Wire Wire Line
	7225 5800 7225 5350
Connection ~ 7225 5800
Wire Wire Line
	7225 5800 7675 5800
Connection ~ 7825 6125
Wire Wire Line
	8075 6125 7825 6125
Wire Wire Line
	8425 6125 8425 5800
Wire Wire Line
	8375 6125 8425 6125
Wire Wire Line
	7225 6125 7225 5800
Wire Wire Line
	7275 6125 7225 6125
Wire Wire Line
	6350 5375 6350 5875
Wire Wire Line
	6650 5375 6650 5875
Wire Wire Line
	6650 5150 7225 5150
Wire Wire Line
	6350 5050 7225 5050
Wire Wire Line
	6175 4450 6175 5375
Wire Wire Line
	6975 4850 7225 4850
Wire Wire Line
	6175 4450 7225 4450
Wire Wire Line
	8875 4850 9100 4850
Wire Wire Line
	8875 5050 9100 5050
Wire Wire Line
	8875 5150 9100 5150
Wire Wire Line
	8875 5250 9100 5250
Wire Wire Line
	6975 4550 7225 4550
$Comp
L WM8804:WM8804 U7
U 1 1 60618FD7
P 7575 4200
F 0 "U7" H 7825 4214 50  0000 C CNN
F 1 "WM8804" H 7825 4123 50  0000 C CNN
F 2 "Package_SO:SSOP-20_5.3x7.2mm_P0.65mm" H 7825 4200 50  0001 C CNN
F 3 "" H 7825 4200 50  0001 C CNN
	1    7575 4200
	1    0    0    -1  
$EndComp
Connection ~ 6350 5050
$Comp
L Device:C C14
U 1 1 5DEFD7B9
P 6500 5875
F 0 "C14" V 6752 5875 50  0000 C CNN
F 1 "100n" V 6661 5875 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 6538 5725 50  0001 C CNN
F 3 "~" H 6500 5875 50  0001 C CNN
	1    6500 5875
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3VA #PWR032
U 1 1 5DB58609
P 6350 5050
F 0 "#PWR032" H 6350 4900 50  0001 C CNN
F 1 "+3.3VA" H 6350 5200 50  0000 C CNN
F 2 "" H 6350 5050 50  0001 C CNN
F 3 "" H 6350 5050 50  0001 C CNN
	1    6350 5050
	1    0    0    -1  
$EndComp
Text Label 8500 4750 0    50   ~ 0
TX
$Comp
L Device:C C16
U 1 1 5D9CE635
P 8225 6125
F 0 "C16" V 8477 6125 50  0000 C CNN
F 1 "22p" V 8386 6125 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 8263 5975 50  0001 C CNN
F 3 "~" H 8225 6125 50  0001 C CNN
	1    8225 6125
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDREF #PWR039
U 1 1 5D9DFE51
P 7825 6125
F 0 "#PWR039" H 7825 5875 50  0001 C CNN
F 1 "GNDREF" H 7830 5952 50  0001 C CNN
F 2 "" H 7825 6125 50  0001 C CNN
F 3 "" H 7825 6125 50  0001 C CNN
	1    7825 6125
	1    0    0    -1  
$EndComp
Text Label 7075 4950 0    50   ~ 0
RST
Wire Wire Line
	7075 4950 7225 4950
$Comp
L Device:C C12
U 1 1 5E0567BD
P 9525 4500
F 0 "C12" V 9777 4500 50  0000 C CNN
F 1 "1u" V 9686 4500 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 9563 4350 50  0001 C CNN
F 3 "~" H 9525 4500 50  0001 C CNN
	1    9525 4500
	-1   0    0    1   
$EndComp
$Comp
L Device:C C11
U 1 1 5E0567C3
P 9050 4500
F 0 "C11" V 9302 4500 50  0000 C CNN
F 1 "100n" V 9211 4500 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 9088 4350 50  0001 C CNN
F 3 "~" H 9050 4500 50  0001 C CNN
	1    9050 4500
	-1   0    0    1   
$EndComp
$Comp
L Device:C C13
U 1 1 5DEF5315
P 6500 5375
F 0 "C13" V 6752 5375 50  0000 C CNN
F 1 "1u" V 6661 5375 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 6538 5225 50  0001 C CNN
F 3 "~" H 6500 5375 50  0001 C CNN
	1    6500 5375
	0    -1   -1   0   
$EndComp
Connection ~ 6650 5375
Wire Wire Line
	6650 5375 6650 5150
Connection ~ 6350 5375
$Comp
L Device:C C15
U 1 1 5D9C6394
P 7425 6125
F 0 "C15" V 7677 6125 50  0000 C CNN
F 1 "22p" V 7586 6125 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 7463 5975 50  0001 C CNN
F 3 "~" H 7425 6125 50  0001 C CNN
	1    7425 6125
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDREF #PWR037
U 1 1 5E15EC5A
P 6650 5950
F 0 "#PWR037" H 6650 5700 50  0001 C CNN
F 1 "GNDREF" H 6655 5777 50  0001 C CNN
F 2 "" H 6650 5950 50  0001 C CNN
F 3 "" H 6650 5950 50  0001 C CNN
	1    6650 5950
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR025
U 1 1 5E169229
P 9525 4350
F 0 "#PWR025" H 9525 4200 50  0001 C CNN
F 1 "+3V3" H 9540 4523 50  0000 C CNN
F 2 "" H 9525 4350 50  0001 C CNN
F 3 "" H 9525 4350 50  0001 C CNN
	1    9525 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R20
U 1 1 5DED3682
P 6825 4850
F 0 "R20" V 6725 4850 50  0000 C CNN
F 1 "10K" V 6825 4850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 6755 4850 50  0001 C CNN
F 3 "~" H 6825 4850 50  0001 C CNN
	1    6825 4850
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R17
U 1 1 5E1A3484
P 6825 4550
F 0 "R17" V 6875 4725 50  0000 C CNN
F 1 "10K" V 6825 4550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 6755 4550 50  0001 C CNN
F 3 "~" H 6825 4550 50  0001 C CNN
	1    6825 4550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6350 5050 6350 5375
$Comp
L Device:R R21
U 1 1 5E8C7B9F
P 8725 4850
F 0 "R21" V 8932 4850 50  0001 C CNN
F 1 "33" V 8725 4850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 8655 4850 50  0001 C CNN
F 3 "~" H 8725 4850 50  0001 C CNN
	1    8725 4850
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R22
U 1 1 5E8D7035
P 8725 4950
F 0 "R22" V 8932 4950 50  0001 C CNN
F 1 "33" V 8725 4950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 8655 4950 50  0001 C CNN
F 3 "~" H 8725 4950 50  0001 C CNN
	1    8725 4950
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R23
U 1 1 5E8E669E
P 8725 5050
F 0 "R23" V 8932 5050 50  0001 C CNN
F 1 "33" V 8725 5050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 8655 5050 50  0001 C CNN
F 3 "~" H 8725 5050 50  0001 C CNN
	1    8725 5050
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R26
U 1 1 5E8F5B9C
P 8725 5150
F 0 "R26" V 8932 5150 50  0001 C CNN
F 1 "33" V 8725 5150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 8655 5150 50  0001 C CNN
F 3 "~" H 8725 5150 50  0001 C CNN
	1    8725 5150
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R27
U 1 1 5E905043
P 8725 5250
F 0 "R27" V 8932 5250 50  0001 C CNN
F 1 "33" V 8725 5250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 8655 5250 50  0001 C CNN
F 3 "~" H 8725 5250 50  0001 C CNN
	1    8725 5250
	0    1    1    0   
$EndComp
Wire Wire Line
	8425 4850 8575 4850
Wire Wire Line
	8425 5050 8575 5050
Wire Wire Line
	8425 5150 8575 5150
Wire Wire Line
	8425 5250 8575 5250
$Comp
L dk_Transistors-FETs-MOSFETs-Single:BSS138-7-F Q1
U 1 1 608B229E
P 2375 3875
F 0 "Q1" V 2536 3875 60  0000 C CNN
F 1 "BSS138" V 2642 3875 60  0000 C CNN
F 2 "digikey-footprints:SOT-23-3" H 2575 4075 60  0001 L CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds30144.pdf" H 2575 4175 60  0001 L CNN
F 4 "BSS138-FDICT-ND" H 2575 4275 60  0001 L CNN "Digi-Key_PN"
F 5 "BSS138-7-F" H 2575 4375 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 2575 4475 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 2575 4575 60  0001 L CNN "Family"
F 8 "https://www.diodes.com/assets/Datasheets/ds30144.pdf" H 2575 4675 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/diodes-incorporated/BSS138-7-F/BSS138-FDICT-ND/717843" H 2575 4775 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET N-CH 50V 200MA SOT23-3" H 2575 4875 60  0001 L CNN "Description"
F 11 "Diodes Incorporated" H 2575 4975 60  0001 L CNN "Manufacturer"
F 12 "Active" H 2575 5075 60  0001 L CNN "Status"
	1    2375 3875
	0    1    1    0   
$EndComp
Wire Wire Line
	1600 5900 1900 5900
Connection ~ 1925 3875
Wire Wire Line
	1600 3875 1925 3875
Connection ~ 1900 4875
Wire Wire Line
	1600 4875 1900 4875
Connection ~ 1900 5900
Text Label 1600 5900 0    50   ~ 0
GPIO17
Text Label 1600 4875 0    50   ~ 0
GPIO27
Text Label 1600 3875 0    50   ~ 0
GPIO22
Connection ~ 1900 5500
$Comp
L power:+3.3VP #PWR034
U 1 1 609F6E4E
P 1900 5500
F 0 "#PWR034" H 2050 5450 50  0001 C CNN
F 1 "+3.3VP" H 1920 5643 50  0000 C CNN
F 2 "" H 1900 5500 50  0001 C CNN
F 3 "" H 1900 5500 50  0001 C CNN
	1    1900 5500
	1    0    0    -1  
$EndComp
Connection ~ 1900 4475
$Comp
L power:+3.3VP #PWR026
U 1 1 609F67AA
P 1900 4475
F 0 "#PWR026" H 2050 4425 50  0001 C CNN
F 1 "+3.3VP" H 1920 4618 50  0000 C CNN
F 2 "" H 1900 4475 50  0001 C CNN
F 3 "" H 1900 4475 50  0001 C CNN
	1    1900 4475
	1    0    0    -1  
$EndComp
Connection ~ 1925 3475
$Comp
L power:+3.3VP #PWR019
U 1 1 609EA2D7
P 1925 3475
F 0 "#PWR019" H 2075 3425 50  0001 C CNN
F 1 "+3.3VP" H 1945 3618 50  0000 C CNN
F 2 "" H 1925 3475 50  0001 C CNN
F 3 "" H 1925 3475 50  0001 C CNN
	1    1925 3475
	1    0    0    -1  
$EndComp
Wire Wire Line
	2925 4775 3200 4775
Wire Wire Line
	2625 3875 2925 3875
Wire Wire Line
	2600 4875 3200 4875
Wire Wire Line
	2925 3875 2925 4775
Wire Wire Line
	2925 5900 2925 4975
Connection ~ 2625 3875
Connection ~ 2600 4875
Connection ~ 2600 5900
Wire Wire Line
	2925 4975 3200 4975
Wire Wire Line
	2600 5900 2925 5900
Wire Wire Line
	1900 5900 2150 5900
Wire Wire Line
	2250 5500 2250 5600
Wire Wire Line
	1900 5500 2250 5500
Wire Wire Line
	2600 5900 2550 5900
Wire Wire Line
	2600 5800 2600 5900
$Comp
L Device:R R29
U 1 1 60947918
P 2600 5650
F 0 "R29" V 2700 5650 50  0000 C CNN
F 1 "10K" V 2600 5650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 2530 5650 50  0001 C CNN
F 3 "~" H 2600 5650 50  0001 C CNN
	1    2600 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 5800 1900 5900
$Comp
L Device:R R28
U 1 1 6094790B
P 1900 5650
F 0 "R28" V 2000 5650 50  0000 C CNN
F 1 "10K" V 1900 5650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 1830 5650 50  0001 C CNN
F 3 "~" H 1900 5650 50  0001 C CNN
	1    1900 5650
	1    0    0    -1  
$EndComp
$Comp
L dk_Transistors-FETs-MOSFETs-Single:BSS138-7-F Q5
U 1 1 60947905
P 2350 5900
F 0 "Q5" V 2511 5900 60  0000 C CNN
F 1 "BSS138" V 2617 5900 60  0000 C CNN
F 2 "digikey-footprints:SOT-23-3" H 2550 6100 60  0001 L CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds30144.pdf" H 2550 6200 60  0001 L CNN
F 4 "BSS138-FDICT-ND" H 2550 6300 60  0001 L CNN "Digi-Key_PN"
F 5 "BSS138-7-F" H 2550 6400 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 2550 6500 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 2550 6600 60  0001 L CNN "Family"
F 8 "https://www.diodes.com/assets/Datasheets/ds30144.pdf" H 2550 6700 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/diodes-incorporated/BSS138-7-F/BSS138-FDICT-ND/717843" H 2550 6800 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET N-CH 50V 200MA SOT23-3" H 2550 6900 60  0001 L CNN "Description"
F 11 "Diodes Incorporated" H 2550 7000 60  0001 L CNN "Manufacturer"
F 12 "Active" H 2550 7100 60  0001 L CNN "Status"
	1    2350 5900
	0    1    1    0   
$EndComp
Wire Wire Line
	1900 4875 2150 4875
Wire Wire Line
	2250 4475 2250 4575
Wire Wire Line
	1900 4475 2250 4475
Wire Wire Line
	2600 4875 2550 4875
Wire Wire Line
	2600 4775 2600 4875
$Comp
L Device:R R19
U 1 1 6093C3D0
P 2600 4625
F 0 "R19" V 2700 4625 50  0000 C CNN
F 1 "10K" V 2600 4625 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 2530 4625 50  0001 C CNN
F 3 "~" H 2600 4625 50  0001 C CNN
	1    2600 4625
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 4775 1900 4875
$Comp
L Device:R R18
U 1 1 6093C3C3
P 1900 4625
F 0 "R18" V 2000 4625 50  0000 C CNN
F 1 "10K" V 1900 4625 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 1830 4625 50  0001 C CNN
F 3 "~" H 1900 4625 50  0001 C CNN
	1    1900 4625
	1    0    0    -1  
$EndComp
$Comp
L dk_Transistors-FETs-MOSFETs-Single:BSS138-7-F Q3
U 1 1 6093C3BD
P 2350 4875
F 0 "Q3" V 2511 4875 60  0000 C CNN
F 1 "BSS138" V 2617 4875 60  0000 C CNN
F 2 "digikey-footprints:SOT-23-3" H 2550 5075 60  0001 L CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds30144.pdf" H 2550 5175 60  0001 L CNN
F 4 "BSS138-FDICT-ND" H 2550 5275 60  0001 L CNN "Digi-Key_PN"
F 5 "BSS138-7-F" H 2550 5375 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 2550 5475 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 2550 5575 60  0001 L CNN "Family"
F 8 "https://www.diodes.com/assets/Datasheets/ds30144.pdf" H 2550 5675 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/diodes-incorporated/BSS138-7-F/BSS138-FDICT-ND/717843" H 2550 5775 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET N-CH 50V 200MA SOT23-3" H 2550 5875 60  0001 L CNN "Description"
F 11 "Diodes Incorporated" H 2550 5975 60  0001 L CNN "Manufacturer"
F 12 "Active" H 2550 6075 60  0001 L CNN "Status"
	1    2350 4875
	0    1    1    0   
$EndComp
Wire Wire Line
	1925 3875 2175 3875
Wire Wire Line
	2275 3475 2275 3575
Wire Wire Line
	1925 3475 2275 3475
Wire Wire Line
	2625 3875 2575 3875
Wire Wire Line
	2625 3775 2625 3875
$Comp
L Device:R R14
U 1 1 608B22B3
P 2625 3625
F 0 "R14" V 2725 3625 50  0000 C CNN
F 1 "10K" V 2625 3625 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 2555 3625 50  0001 C CNN
F 3 "~" H 2625 3625 50  0001 C CNN
	1    2625 3625
	1    0    0    -1  
$EndComp
Wire Wire Line
	1925 3775 1925 3875
$Comp
L Device:R R13
U 1 1 608B22A4
P 1925 3625
F 0 "R13" V 2025 3625 50  0000 C CNN
F 1 "10K" V 1925 3625 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 1855 3625 50  0001 C CNN
F 3 "~" H 1925 3625 50  0001 C CNN
	1    1925 3625
	1    0    0    -1  
$EndComp
Connection ~ 5250 4650
Wire Wire Line
	5250 4650 7225 4650
Wire Wire Line
	4625 4650 4625 5275
Wire Wire Line
	3025 5075 3200 5075
Text Label 4400 5275 0    50   ~ 0
SDA
Text Label 4400 5375 0    50   ~ 0
SCL
Wire Wire Line
	5925 5375 6175 5375
Connection ~ 5925 5375
Wire Wire Line
	5250 4650 5150 4650
$Comp
L Device:R R32
U 1 1 5E7C3479
P 4525 6375
F 0 "R32" V 4600 6375 50  0000 C CNN
F 1 "110" V 4525 6375 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 4455 6375 50  0001 C CNN
F 3 "~" H 4525 6375 50  0001 C CNN
	1    4525 6375
	0    -1   -1   0   
$EndComp
Connection ~ 5250 4250
Wire Wire Line
	5050 4250 5250 4250
Wire Wire Line
	5050 4350 5050 4250
Wire Wire Line
	5750 4975 5750 5075
Connection ~ 5925 4975
Wire Wire Line
	5750 4975 5925 4975
$Comp
L power:+3V3 #PWR030
U 1 1 5E6A4028
P 5925 4975
F 0 "#PWR030" H 5925 4825 50  0001 C CNN
F 1 "+3V3" H 5940 5148 50  0000 C CNN
F 2 "" H 5925 4975 50  0001 C CNN
F 3 "" H 5925 4975 50  0001 C CNN
	1    5925 4975
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR024
U 1 1 5E695CF0
P 5250 4250
F 0 "#PWR024" H 5250 4100 50  0001 C CNN
F 1 "+3V3" H 5265 4423 50  0000 C CNN
F 2 "" H 5250 4250 50  0001 C CNN
F 3 "" H 5250 4250 50  0001 C CNN
	1    5250 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5925 5275 5925 5375
$Comp
L Device:R R24
U 1 1 5E66BB1A
P 5925 5125
F 0 "R24" V 6025 5125 50  0000 C CNN
F 1 "10K" V 5925 5125 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 5855 5125 50  0001 C CNN
F 3 "~" H 5925 5125 50  0001 C CNN
	1    5925 5125
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 4550 5250 4650
$Comp
L Device:R R16
U 1 1 5E65D82D
P 5250 4400
F 0 "R16" V 5350 4400 50  0000 C CNN
F 1 "10K" V 5250 4400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 5180 4400 50  0001 C CNN
F 3 "~" H 5250 4400 50  0001 C CNN
	1    5250 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 5300 5300 5375
Wire Wire Line
	4200 5275 4625 5275
Wire Wire Line
	5850 5375 5925 5375
Connection ~ 4625 4650
Wire Wire Line
	4625 4550 4625 4650
Wire Wire Line
	4625 4650 4750 4650
$Comp
L Device:R R15
U 1 1 5E53B833
P 4625 4400
F 0 "R15" V 4725 4400 50  0000 C CNN
F 1 "10K" V 4625 4400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 4555 4400 50  0001 C CNN
F 3 "~" H 4625 4400 50  0001 C CNN
	1    4625 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R25
U 1 1 5E5213EE
P 5300 5150
F 0 "R25" V 5400 5150 50  0000 C CNN
F 1 "10K" V 5300 5150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 5230 5150 50  0001 C CNN
F 3 "~" H 5300 5150 50  0001 C CNN
	1    5300 5150
	1    0    0    -1  
$EndComp
$Comp
L dk_Transistors-FETs-MOSFETs-Single:BSS138-7-F Q4
U 1 1 5E4C2EA4
P 5650 5375
F 0 "Q4" V 5811 5375 60  0000 C CNN
F 1 "BSS138" V 5917 5375 60  0000 C CNN
F 2 "digikey-footprints:SOT-23-3" H 5850 5575 60  0001 L CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds30144.pdf" H 5850 5675 60  0001 L CNN
F 4 "BSS138-FDICT-ND" H 5850 5775 60  0001 L CNN "Digi-Key_PN"
F 5 "BSS138-7-F" H 5850 5875 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 5850 5975 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 5850 6075 60  0001 L CNN "Family"
F 8 "https://www.diodes.com/assets/Datasheets/ds30144.pdf" H 5850 6175 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/diodes-incorporated/BSS138-7-F/BSS138-FDICT-ND/717843" H 5850 6275 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET N-CH 50V 200MA SOT23-3" H 5850 6375 60  0001 L CNN "Description"
F 11 "Diodes Incorporated" H 5850 6475 60  0001 L CNN "Manufacturer"
F 12 "Active" H 5850 6575 60  0001 L CNN "Status"
	1    5650 5375
	0    -1   1    0   
$EndComp
$Comp
L dk_Transistors-FETs-MOSFETs-Single:BSS138-7-F Q2
U 1 1 5E489567
P 4950 4650
F 0 "Q2" V 5111 4650 60  0000 C CNN
F 1 "BSS138" V 5217 4650 60  0000 C CNN
F 2 "digikey-footprints:SOT-23-3" H 5150 4850 60  0001 L CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds30144.pdf" H 5150 4950 60  0001 L CNN
F 4 "BSS138-FDICT-ND" H 5150 5050 60  0001 L CNN "Digi-Key_PN"
F 5 "BSS138-7-F" H 5150 5150 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 5150 5250 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 5150 5350 60  0001 L CNN "Family"
F 8 "https://www.diodes.com/assets/Datasheets/ds30144.pdf" H 5150 5450 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/diodes-incorporated/BSS138-7-F/BSS138-FDICT-ND/717843" H 5150 5550 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET N-CH 50V 200MA SOT23-3" H 5150 5650 60  0001 L CNN "Description"
F 11 "Diodes Incorporated" H 5150 5750 60  0001 L CNN "Manufacturer"
F 12 "Active" H 5150 5850 60  0001 L CNN "Status"
	1    4950 4650
	0    -1   1    0   
$EndComp
$Comp
L power:+5V #PWR022
U 1 1 5DE831C3
P 4950 3875
F 0 "#PWR022" H 4950 3725 50  0001 C CNN
F 1 "+5V" H 4965 4048 50  0000 C CNN
F 2 "" H 4950 3875 50  0001 C CNN
F 3 "" H 4950 3875 50  0001 C CNN
	1    4950 3875
	1    0    0    -1  
$EndComp
NoConn ~ 3800 3875
Wire Wire Line
	3800 5875 3700 5875
$Comp
L power:GNDREF #PWR036
U 1 1 5DE6AFC9
P 3800 5925
F 0 "#PWR036" H 3800 5675 50  0001 C CNN
F 1 "GNDREF" H 3805 5752 50  0001 C CNN
F 2 "" H 3800 5925 50  0001 C CNN
F 3 "" H 3800 5925 50  0001 C CNN
	1    3800 5925
	1    0    0    -1  
$EndComp
NoConn ~ 4200 4275
NoConn ~ 4200 4675
NoConn ~ 4200 5575
NoConn ~ 4200 5475
NoConn ~ 4200 4375
NoConn ~ 3600 3875
$Comp
L MCU_Module:Arduino_Nano_v3.x A1
U 1 1 5D8EB110
P 3700 4875
F 0 "A1" H 3700 4900 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 3475 5975 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 3850 3925 50  0001 L CNN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 3700 3875 50  0001 C CNN
	1    3700 4875
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR09
U 1 1 60F48F4F
P 1400 1950
F 0 "#PWR09" H 1400 1700 50  0001 C CNN
F 1 "GNDREF" H 1405 1777 50  0001 C CNN
F 2 "" H 1400 1950 50  0001 C CNN
F 3 "" H 1400 1950 50  0001 C CNN
	1    1400 1950
	1    0    0    -1  
$EndComp
Connection ~ 1400 1950
$Comp
L Mechanical:MountingHole H1
U 1 1 60F937A6
P 6000 7625
F 0 "H1" H 6100 7625 50  0000 L CNN
F 1 "MountingHole" H 6100 7580 50  0001 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_Pad" H 6000 7625 50  0001 C CNN
F 3 "~" H 6000 7625 50  0001 C CNN
	1    6000 7625
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 60F93EE1
P 6000 7850
F 0 "H2" H 6100 7850 50  0000 L CNN
F 1 "MountingHole" H 6100 7805 50  0001 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_Pad" H 6000 7850 50  0001 C CNN
F 3 "~" H 6000 7850 50  0001 C CNN
	1    6000 7850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 5375 5300 5375
NoConn ~ 4200 4875
NoConn ~ 4200 4975
NoConn ~ 4200 5075
NoConn ~ 4200 5175
NoConn ~ 3200 5575
NoConn ~ 3200 5475
NoConn ~ 3200 5375
NoConn ~ 3200 5275
NoConn ~ 3200 5175
NoConn ~ 3200 4675
NoConn ~ 3200 4575
NoConn ~ 3200 4475
NoConn ~ 3200 4375
NoConn ~ 3200 4275
Wire Wire Line
	9250 1075 9250 900 
Text Label 9150 825  0    50   ~ 0
3V31
Wire Wire Line
	9150 825  9150 1075
Text Label 9250 900  0    50   ~ 0
3V32
Wire Wire Line
	8875 4950 9000 4950
$Comp
L Device:R R33
U 1 1 6078A22E
P 6175 6375
F 0 "R33" V 6275 6375 50  0000 C CNN
F 1 "110" V 6175 6375 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 6105 6375 50  0001 C CNN
F 3 "~" H 6175 6375 50  0001 C CNN
	1    6175 6375
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDREF #PWR028
U 1 1 607740EF
P 9525 4650
F 0 "#PWR028" H 9525 4400 50  0001 C CNN
F 1 "GNDREF" H 9530 4477 50  0001 C CNN
F 2 "" H 9525 4650 50  0001 C CNN
F 3 "" H 9525 4650 50  0001 C CNN
	1    9525 4650
	1    0    0    -1  
$EndComp
Connection ~ 9525 4650
$Comp
L Connector:TestPoint TP2
U 1 1 60F15669
P 9100 4850
F 0 "TP2" H 9158 4968 50  0001 L CNN
F 1 "TestPoint" H 9158 4877 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 9300 4850 50  0001 C CNN
F 3 "~" H 9300 4850 50  0001 C CNN
	1    9100 4850
	0    1    1    0   
$EndComp
Text Label 9100 4950 0    50   ~ 0
LRCLK
Text Label 9100 5050 0    50   ~ 0
BCLK
Text Label 9100 5150 0    50   ~ 0
DIN_WM
Text Label 9100 5250 0    50   ~ 0
DOUT_WM
$Comp
L power:+3V3 #PWR05
U 1 1 60F1D902
P 2300 1200
F 0 "#PWR05" H 2300 1050 50  0001 C CNN
F 1 "+3V3" H 2315 1373 50  0000 C CNN
F 2 "" H 2300 1200 50  0001 C CNN
F 3 "" H 2300 1200 50  0001 C CNN
	1    2300 1200
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR01
U 1 1 60F1EADD
P 6125 950
F 0 "#PWR01" H 6125 800 50  0001 C CNN
F 1 "+3V3" H 6140 1123 50  0000 C CNN
F 2 "" H 6125 950 50  0001 C CNN
F 3 "" H 6125 950 50  0001 C CNN
	1    6125 950 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR042
U 1 1 60FBBD65
P 1625 6800
F 0 "#PWR042" H 1625 6650 50  0001 C CNN
F 1 "+5V" H 1640 6973 50  0000 C CNN
F 2 "" H 1625 6800 50  0001 C CNN
F 3 "" H 1625 6800 50  0001 C CNN
	1    1625 6800
	1    0    0    -1  
$EndComp
Connection ~ 1625 6800
$Comp
L power:+5V #PWR047
U 1 1 60FCDCAD
P 2700 7525
F 0 "#PWR047" H 2700 7375 50  0001 C CNN
F 1 "+5V" H 2715 7698 50  0000 C CNN
F 2 "" H 2700 7525 50  0001 C CNN
F 3 "" H 2700 7525 50  0001 C CNN
	1    2700 7525
	1    0    0    -1  
$EndComp
Connection ~ 2700 7525
$Comp
L power:+5V #PWR045
U 1 1 60FCE4D4
P 1075 7525
F 0 "#PWR045" H 1075 7375 50  0001 C CNN
F 1 "+5V" H 1090 7698 50  0000 C CNN
F 2 "" H 1075 7525 50  0001 C CNN
F 3 "" H 1075 7525 50  0001 C CNN
	1    1075 7525
	1    0    0    -1  
$EndComp
Connection ~ 1075 7525
Wire Wire Line
	5775 950  5725 950 
Connection ~ 5725 950 
Wire Wire Line
	1950 1200 1900 1200
Connection ~ 1900 1200
Wire Wire Line
	2250 1550 2100 1550
Wire Wire Line
	3200 1300 3200 1200
Wire Wire Line
	3200 1600 3200 1650
Connection ~ 3200 1650
Connection ~ 3850 1700
Wire Wire Line
	3850 1400 3850 1700
Wire Wire Line
	3850 1700 4725 1700
Wire Wire Line
	4725 1650 4725 1700
Wire Wire Line
	4650 1300 4725 1300
Wire Wire Line
	4725 1300 4725 1350
$Comp
L Device:C C6
U 1 1 61271FCB
P 1975 2300
F 0 "C6" V 2025 2375 50  0000 L CNN
F 1 "100n" V 2025 2050 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 2013 2150 50  0001 C CNN
F 3 "~" H 1975 2300 50  0001 C CNN
	1    1975 2300
	0    -1   1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 612811F4
P 1150 2300
F 0 "R7" V 1250 2300 50  0000 C CNN
F 1 "210" V 1150 2300 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 1080 2300 50  0001 C CNN
F 3 "~" H 1150 2300 50  0001 C CNN
	1    1150 2300
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 61281895
P 1475 2450
F 0 "R8" V 1575 2450 50  0000 C CNN
F 1 "110" V 1475 2450 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 1405 2450 50  0001 C CNN
F 3 "~" H 1475 2450 50  0001 C CNN
	1    1475 2450
	1    0    0    -1  
$EndComp
Connection ~ 5300 5375
Wire Wire Line
	5300 5375 5450 5375
$Comp
L power:GNDREF #PWR015
U 1 1 612AC47A
P 1475 2600
F 0 "#PWR015" H 1475 2350 50  0001 C CNN
F 1 "GNDREF" H 1480 2427 50  0001 C CNN
F 2 "" H 1475 2600 50  0001 C CNN
F 3 "" H 1475 2600 50  0001 C CNN
	1    1475 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 2300 1475 2300
Connection ~ 1475 2300
Wire Wire Line
	850  1650 925  1650
Wire Wire Line
	1000 1650 925  1650
Connection ~ 925  1650
$Comp
L Connector:Conn_Coaxial J3
U 1 1 613688A7
P 2575 2300
F 0 "J3" H 2675 2275 50  0000 L CNN
F 1 "TX_RCA" H 2675 2184 50  0000 L CNN
F 2 "Mouser:CUI_RCJ-04X" H 2575 2300 50  0001 C CNN
F 3 " ~" H 2575 2300 50  0001 C CNN
	1    2575 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR013
U 1 1 613688AD
P 2575 2500
F 0 "#PWR013" H 2575 2250 50  0001 C CNN
F 1 "GNDREF" H 2580 2327 50  0001 C CNN
F 2 "" H 2575 2500 50  0001 C CNN
F 3 "" H 2575 2500 50  0001 C CNN
	1    2575 2500
	1    0    0    -1  
$EndComp
Connection ~ 4725 1300
Wire Wire Line
	1900 1950 2250 1950
Connection ~ 1900 1950
Connection ~ 2250 1950
Wire Wire Line
	925  2300 1000 2300
Wire Wire Line
	925  1650 925  2300
$Comp
L Device:L L1
U 1 1 6144679C
P 4300 1050
F 0 "L1" V 4375 1000 50  0000 L CNN
F 1 "47uH" V 4225 950 50  0000 L CNN
F 2 "Inductor_SMD:L_Taiyo-Yuden_NR-24xx_HandSoldering" H 4300 1050 50  0001 C CNN
F 3 "~" H 4300 1050 50  0001 C CNN
F 4 "963-CB2518T470K" H 4300 1050 50  0001 C CNN "Mouser Part Number"
	1    4300 1050
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3VP #PWR04
U 1 1 614467A2
P 4025 1050
F 0 "#PWR04" H 4175 1000 50  0001 C CNN
F 1 "+3.3VP" H 4045 1193 50  0000 C CNN
F 2 "" H 4025 1050 50  0001 C CNN
F 3 "" H 4025 1050 50  0001 C CNN
	1    4025 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 1050 4025 1050
Wire Wire Line
	4450 1050 4725 1050
Wire Wire Line
	4725 1050 4725 1300
Wire Wire Line
	5250 1250 5250 950 
Wire Wire Line
	5250 1550 5250 1700
Wire Wire Line
	4650 1400 5425 1400
Wire Wire Line
	4725 1700 5100 1700
Connection ~ 4725 1700
$Comp
L NC7SZ157P6X:NC7SZ157P6X U2
U 1 1 615BEB12
P 6450 1300
F 0 "U2" H 7175 1300 60  0000 C CNN
F 1 "NC7SZ157P6X" H 6925 800 47  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 7250 1540 60  0001 C CNN
F 3 "" H 6450 1300 60  0000 C CNN
	1    6450 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 1450 6650 1450
Wire Wire Line
	5925 1300 5975 1300
Wire Wire Line
	6600 950  6750 950 
$Comp
L Device:Ferrite_Bead_Small FB2
U 1 1 616380BC
P 6850 950
F 0 "FB2" V 6995 950 50  0000 C CNN
F 1 "Ferrite_Bead_Small" H 6950 905 50  0001 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 6780 950 50  0001 C CNN
F 3 "~" H 6850 950 50  0001 C CNN
	1    6850 950 
	0    1    -1   0   
$EndComp
$Comp
L power:+3V3 #PWR02
U 1 1 616380C2
P 6600 950
F 0 "#PWR02" H 6600 800 50  0001 C CNN
F 1 "+3V3" H 6615 1123 50  0000 C CNN
F 2 "" H 6600 950 50  0001 C CNN
F 3 "" H 6600 950 50  0001 C CNN
	1    6600 950 
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6950 950  6950 1150
$Comp
L Device:C C1
U 1 1 616914D8
P 6400 1300
F 0 "C1" H 6250 1400 50  0000 L CNN
F 1 "100n" H 6200 1225 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 6438 1150 50  0001 C CNN
F 3 "~" H 6400 1300 50  0001 C CNN
	1    6400 1300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6400 1150 6950 1150
Connection ~ 6950 1150
Wire Wire Line
	6400 1750 6950 1750
$Comp
L power:GNDREF #PWR08
U 1 1 616C17B9
P 6400 1750
F 0 "#PWR08" H 6400 1500 50  0001 C CNN
F 1 "GNDREF" H 6405 1577 50  0001 C CNN
F 2 "" H 6400 1750 50  0001 C CNN
F 3 "" H 6400 1750 50  0001 C CNN
	1    6400 1750
	1    0    0    -1  
$EndComp
Connection ~ 6400 1750
Wire Wire Line
	6400 1450 6400 1750
Wire Wire Line
	7300 1450 7200 1450
$Comp
L Device:L L3
U 1 1 60414E25
P 4525 2575
F 0 "L3" H 4400 2525 50  0000 L CNN
F 1 "47uH" H 4300 2625 50  0000 L CNN
F 2 "Inductor_SMD:L_Taiyo-Yuden_NR-24xx_HandSoldering" H 4525 2575 50  0001 C CNN
F 3 "~" H 4525 2575 50  0001 C CNN
F 4 "963-CB2518T470K" H 4525 2575 50  0001 C CNN "Mouser Part Number"
	1    4525 2575
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3VP #PWR014
U 1 1 604623E5
P 4250 2575
F 0 "#PWR014" H 4400 2525 50  0001 C CNN
F 1 "+3.3VP" H 4270 2718 50  0000 C CNN
F 2 "" H 4250 2575 50  0001 C CNN
F 3 "" H 4250 2575 50  0001 C CNN
	1    4250 2575
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 6139A868
P 4250 2800
F 0 "C7" V 4125 2750 50  0000 L CNN
F 1 "100n" V 4375 2700 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 4288 2650 50  0001 C CNN
F 3 "~" H 4250 2800 50  0001 C CNN
	1    4250 2800
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR016
U 1 1 6139A881
P 3825 3000
F 0 "#PWR016" H 3825 2750 50  0001 C CNN
F 1 "GNDREF" H 3830 2827 50  0001 C CNN
F 2 "" H 3825 3000 50  0001 C CNN
F 3 "" H 3825 3000 50  0001 C CNN
	1    3825 3000
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_Coaxial J5
U 1 1 6139A87B
P 3825 2800
F 0 "J5" H 3975 2825 50  0000 C CNN
F 1 "RX_RCA" H 4075 2725 50  0000 C CNN
F 2 "Mouser:CUI_RCJ-04X" H 3825 2800 50  0001 C CNN
F 3 " ~" H 3825 2800 50  0001 C CNN
	1    3825 2800
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 613C5D8F
P 4025 3100
F 0 "R12" V 4125 3100 50  0000 C CNN
F 1 "75" V 4025 3100 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 3955 3100 50  0001 C CNN
F 3 "~" H 4025 3100 50  0001 C CNN
	1    4025 3100
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR018
U 1 1 613C5D95
P 4025 3250
F 0 "#PWR018" H 4025 3000 50  0001 C CNN
F 1 "GNDREF" H 4030 3077 50  0001 C CNN
F 2 "" H 4025 3250 50  0001 C CNN
F 3 "" H 4025 3250 50  0001 C CNN
	1    4025 3250
	1    0    0    -1  
$EndComp
$Comp
L 74xGxx:NC7SVU04P5X U5
U 1 1 60F69963
P 5025 2800
F 0 "U5" H 5100 2950 50  0000 L CNN
F 1 "74LVC1GU04DBV" H 4775 2375 50  0000 L CNN
F 2 "digikey-footprints:SOT-753" H 5025 2550 50  0001 C CNN
F 3 "https://www.onsemi.com/pub/Collateral/NC7SZU04-D.pdf" H 5025 2800 50  0001 C CNN
	1    5025 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 60F7F528
P 4875 2450
F 0 "R9" V 4975 2450 50  0000 C CNN
F 1 "10K" V 4875 2450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 4805 2450 50  0001 C CNN
F 3 "~" H 4875 2450 50  0001 C CNN
	1    4875 2450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5375 2800 5375 2450
Wire Wire Line
	5325 2800 5375 2800
$Comp
L Device:C C8
U 1 1 60FC92B3
P 4675 2800
F 0 "C8" H 4525 2900 50  0000 L CNN
F 1 "100n" H 4475 2700 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 4713 2650 50  0001 C CNN
F 3 "~" H 4675 2800 50  0001 C CNN
	1    4675 2800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5025 2600 5025 2575
Wire Wire Line
	4675 2575 4675 2650
Connection ~ 4675 2575
Wire Wire Line
	4675 2575 5025 2575
Wire Wire Line
	4525 2800 4825 2800
Wire Wire Line
	4375 2575 4250 2575
$Comp
L Device:R R11
U 1 1 610BDDA9
P 5375 2950
F 0 "R11" V 5475 2950 50  0000 C CNN
F 1 "10K" V 5375 2950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 5305 2950 50  0001 C CNN
F 3 "~" H 5375 2950 50  0001 C CNN
	1    5375 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5375 3100 5375 3150
Wire Wire Line
	4675 2950 4675 3150
Wire Wire Line
	5025 3000 5025 3150
Connection ~ 5025 3150
Wire Wire Line
	5025 3150 4675 3150
Wire Wire Line
	4525 2450 4525 2800
$Comp
L power:GNDREF #PWR017
U 1 1 611CAEE0
P 4675 3150
F 0 "#PWR017" H 4675 2900 50  0001 C CNN
F 1 "GNDREF" H 4680 2977 50  0001 C CNN
F 2 "" H 4675 3150 50  0001 C CNN
F 3 "" H 4675 3150 50  0001 C CNN
	1    4675 3150
	1    0    0    -1  
$EndComp
Connection ~ 4675 3150
$Comp
L Device:C C10
U 1 1 611FFAE7
P 7200 3000
F 0 "C10" H 7315 3046 50  0000 L CNN
F 1 "100n" H 7315 2955 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 7238 2850 50  0001 C CNN
F 3 "~" H 7200 3000 50  0001 C CNN
	1    7200 3000
	1    0    0    -1  
$EndComp
NoConn ~ 7000 2750
Wire Wire Line
	6950 3000 6950 3150
Wire Wire Line
	6575 2375 6950 2375
Wire Wire Line
	6950 2375 6950 2400
Wire Wire Line
	4400 2800 4525 2800
Connection ~ 4525 2800
$Comp
L Device:Ferrite_Bead_Small FB4
U 1 1 613FFE03
P 6475 2375
F 0 "FB4" V 6620 2375 50  0000 C CNN
F 1 "Ferrite_Bead_Small" H 6575 2330 50  0001 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 6405 2375 50  0001 C CNN
F 3 "~" H 6475 2375 50  0001 C CNN
	1    6475 2375
	0    1    -1   0   
$EndComp
$Comp
L power:+3V3 #PWR012
U 1 1 613FFE09
P 6300 2375
F 0 "#PWR012" H 6300 2225 50  0001 C CNN
F 1 "+3V3" H 6315 2548 50  0000 C CNN
F 2 "" H 6300 2375 50  0001 C CNN
F 3 "" H 6300 2375 50  0001 C CNN
	1    6300 2375
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7250 2700 7150 2700
$Comp
L 74xGxx:NC7SVU04P5X U6
U 1 1 61738AE8
P 5975 2800
F 0 "U6" H 6050 2950 50  0000 L CNN
F 1 "74LV1T04DBV" H 5675 2375 50  0000 L CNN
F 2 "digikey-footprints:SOT-753" H 5975 2550 50  0001 C CNN
F 3 "https://www.onsemi.com/pub/Collateral/NC7SZ04-D.pdf" H 5975 2800 50  0001 C CNN
	1    5975 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5025 2575 5650 2575
Wire Wire Line
	5975 2575 5975 2600
Connection ~ 5025 2575
Wire Wire Line
	5975 3000 5975 3150
Connection ~ 5975 3150
Wire Wire Line
	4100 2800 4025 2800
Wire Wire Line
	4025 2800 4025 2950
$Comp
L Switch:SW_DPDT_x2 SW1
U 2 1 6186A112
P 5725 2100
F 0 "SW1" H 5600 2200 50  0000 C CNN
F 1 "GW12RCP" H 5575 1975 50  0000 C CNN
F 2 "Button_Switch_THT:SW_NKK_G1xJP" H 5725 2100 50  0001 C CNN
F 3 "~" H 5725 2100 50  0001 C CNN
	2    5725 2100
	-1   0    0    -1  
$EndComp
$Comp
L Switch:SW_DPDT_x2 SW1
U 1 1 6186D8D5
P 4325 2075
F 0 "SW1" H 4200 2175 50  0000 C CNN
F 1 "GW12RCP" H 4175 1950 50  0000 C CNN
F 2 "Button_Switch_THT:SW_NKK_G1xJP" H 4325 2075 50  0001 C CNN
F 3 "~" H 4325 2075 50  0001 C CNN
	1    4325 2075
	1    0    0    -1  
$EndComp
NoConn ~ 4525 1975
NoConn ~ 4525 2175
NoConn ~ 4125 2075
$Comp
L Device:R R4
U 1 1 619171DC
P 5300 2000
F 0 "R4" V 5400 2000 50  0000 C CNN
F 1 "10K" V 5300 2000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 5230 2000 50  0001 C CNN
F 3 "~" H 5300 2000 50  0001 C CNN
	1    5300 2000
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R6
U 1 1 61917B2C
P 5300 2200
F 0 "R6" V 5400 2200 50  0000 C CNN
F 1 "10K" V 5300 2200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 5230 2200 50  0001 C CNN
F 3 "~" H 5300 2200 50  0001 C CNN
	1    5300 2200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5450 2000 5525 2000
Wire Wire Line
	5525 2200 5450 2200
$Comp
L power:+3V3 #PWR010
U 1 1 6194DD2E
P 5150 2000
F 0 "#PWR010" H 5150 1850 50  0001 C CNN
F 1 "+3V3" V 5150 2225 50  0000 C CNN
F 2 "" H 5150 2000 50  0001 C CNN
F 3 "" H 5150 2000 50  0001 C CNN
	1    5150 2000
	0    -1   1    0   
$EndComp
$Comp
L power:GNDREF #PWR011
U 1 1 6195084D
P 5100 2200
F 0 "#PWR011" H 5100 1950 50  0001 C CNN
F 1 "GNDREF" H 5105 2027 50  0001 C CNN
F 2 "" H 5100 2200 50  0001 C CNN
F 3 "" H 5100 2200 50  0001 C CNN
	1    5100 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 2200 5100 2200
Wire Wire Line
	6200 2100 6200 1600
Wire Wire Line
	6200 1600 6650 1600
Wire Wire Line
	6550 1450 6550 2125
Wire Wire Line
	6550 2125 6725 2125
Wire Wire Line
	7250 2125 7250 2700
Wire Wire Line
	6300 2375 6375 2375
Wire Wire Line
	4725 2450 4525 2450
Wire Wire Line
	5025 2450 5375 2450
Wire Wire Line
	6200 2100 5925 2100
Connection ~ 5100 1700
Wire Wire Line
	5100 1700 5250 1700
Connection ~ 5250 1700
Wire Wire Line
	5250 1700 5725 1700
Wire Wire Line
	5250 950  5725 950 
Wire Wire Line
	5100 1200 5100 1700
Wire Wire Line
	5100 1200 5425 1200
Wire Wire Line
	5975 3150 6625 3150
Wire Wire Line
	6950 2375 7200 2375
Wire Wire Line
	7200 2375 7200 2850
Connection ~ 6950 2375
Wire Wire Line
	7200 3150 6950 3150
Connection ~ 6950 3150
$Comp
L Device:R R10
U 1 1 61C6530E
P 6425 2800
F 0 "R10" V 6525 2800 50  0000 C CNN
F 1 "33" V 6425 2800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 6355 2800 50  0001 C CNN
F 3 "~" H 6425 2800 50  0001 C CNN
	1    6425 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	6575 2800 6650 2800
Wire Wire Line
	6650 2600 6625 2600
Wire Wire Line
	6625 2600 6625 3150
Connection ~ 6625 3150
Wire Wire Line
	6625 3150 6950 3150
Connection ~ 5375 2800
Connection ~ 5375 3150
Wire Wire Line
	5375 3150 5025 3150
Wire Wire Line
	5375 3150 5650 3150
Wire Wire Line
	5375 2800 5775 2800
$Comp
L Device:C C9
U 1 1 61D9F788
P 5650 2800
F 0 "C9" H 5500 2900 50  0000 L CNN
F 1 "100n" H 5450 2700 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 5688 2650 50  0001 C CNN
F 3 "~" H 5650 2800 50  0001 C CNN
	1    5650 2800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5650 2650 5650 2575
Connection ~ 5650 2575
Wire Wire Line
	5650 2575 5975 2575
Wire Wire Line
	5650 2950 5650 3150
Connection ~ 5650 3150
Wire Wire Line
	5650 3150 5975 3150
NoConn ~ 9250 1075
NoConn ~ 9150 1075
Wire Wire Line
	6650 5950 6650 5875
Connection ~ 6650 5875
NoConn ~ 8250 1775
NoConn ~ 8250 1475
NoConn ~ 8250 1575
NoConn ~ 8250 2675
NoConn ~ 8250 2775
NoConn ~ 8250 2875
NoConn ~ 8250 2975
NoConn ~ 9850 1475
NoConn ~ 9850 1575
NoConn ~ 9850 1775
NoConn ~ 9850 1875
NoConn ~ 9850 2075
NoConn ~ 9850 2175
NoConn ~ 9850 2275
NoConn ~ 9850 2475
NoConn ~ 9850 2575
NoConn ~ 9850 2675
NoConn ~ 9850 2775
NoConn ~ 9850 2875
NoConn ~ 9850 3075
NoConn ~ 9850 3175
Wire Wire Line
	3800 5925 3800 5875
Connection ~ 3800 5875
$Comp
L power:PWR_FLAG #FLG02
U 1 1 6209094A
P 9425 3800
F 0 "#FLG02" H 9425 3875 50  0001 C CNN
F 1 "PWR_FLAG" H 9425 3973 50  0001 C CNN
F 2 "" H 9425 3800 50  0001 C CNN
F 3 "~" H 9425 3800 50  0001 C CNN
	1    9425 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 3675 9350 3800
Connection ~ 9350 3800
Wire Wire Line
	9350 3800 9250 3800
Wire Wire Line
	9250 3675 9250 3800
Connection ~ 9250 3800
Wire Wire Line
	8650 3675 8650 3800
Wire Wire Line
	8650 3800 8750 3800
Wire Wire Line
	9150 3675 9150 3800
Connection ~ 9150 3800
Wire Wire Line
	9150 3800 9250 3800
Wire Wire Line
	9050 3675 9050 3800
Connection ~ 9050 3800
Wire Wire Line
	9050 3800 9150 3800
Wire Wire Line
	8950 3675 8950 3800
Connection ~ 8950 3800
Wire Wire Line
	8950 3800 9050 3800
Wire Wire Line
	8850 3675 8850 3800
Connection ~ 8850 3800
Wire Wire Line
	8850 3800 8950 3800
Wire Wire Line
	8750 3675 8750 3800
Connection ~ 8750 3800
Wire Wire Line
	8750 3800 8850 3800
Wire Wire Line
	3525 7525 3825 7525
Wire Wire Line
	2850 6800 3150 6800
Wire Wire Line
	1900 7525 2200 7525
$Comp
L SS1P3L:SS1P3L-M3_84A D1
U 1 1 621FC97A
P 4600 3875
F 0 "D1" H 4800 4116 50  0000 C CNN
F 1 "SS1P3L-M3/84A" H 4800 4025 50  0000 C CNN
F 2 "SS1P3L:SS1P3L-M3&slash_84A" H 4800 3515 60  0001 C CNN
F 3 "" H 4600 3875 60  0000 C CNN
	1    4600 3875
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4600 3875 4950 3875
$Comp
L power:PWR_FLAG #FLG01
U 1 1 622C97BB
P 8625 1075
F 0 "#FLG01" H 8625 1150 50  0001 C CNN
F 1 "PWR_FLAG" H 8625 1248 50  0001 C CNN
F 2 "" H 8625 1075 50  0001 C CNN
F 3 "~" H 8625 1075 50  0001 C CNN
	1    8625 1075
	1    0    0    -1  
$EndComp
Connection ~ 8700 1075
Wire Wire Line
	8625 1075 8700 1075
Connection ~ 9425 3800
Wire Wire Line
	9425 3800 9350 3800
$Comp
L Device:C C18
U 1 1 5E7869BA
P 5750 6375
F 0 "C18" H 5650 6475 50  0000 C CNN
F 1 "100n" H 5625 6275 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 5788 6225 50  0001 C CNN
F 3 "~" H 5750 6375 50  0001 C CNN
	1    5750 6375
	1    0    0    -1  
$EndComp
$Comp
L Logic_LevelTranslator:SN74LV1T34DBV U8
U 1 1 6234BEC7
P 5300 6375
F 0 "U8" H 5550 6525 50  0000 L CNN
F 1 "SN74LV1T34DBV" H 5525 6225 50  0000 L CNN
F 2 "digikey-footprints:SOT-753" H 5950 6125 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/symlink/sn74lv1t34.pdf" H 4900 6175 50  0001 C CNN
	1    5300 6375
	-1   0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR041
U 1 1 5E74BFFA
P 5300 6675
F 0 "#PWR041" H 5300 6425 50  0001 C CNN
F 1 "GNDREF" H 5305 6502 50  0001 C CNN
F 2 "" H 5300 6675 50  0001 C CNN
F 3 "" H 5300 6675 50  0001 C CNN
	1    5300 6675
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 6375 6025 6375
Wire Wire Line
	5750 6525 5750 6675
Wire Wire Line
	5750 6675 5300 6675
Connection ~ 5300 6675
Wire Wire Line
	5750 6225 5750 6075
Wire Wire Line
	5750 6075 5300 6075
Wire Wire Line
	4675 6375 5000 6375
Wire Wire Line
	3025 6375 4375 6375
Wire Wire Line
	3025 5075 3025 6375
$Comp
L Device:R R1
U 1 1 6257309D
P 6125 1300
F 0 "R1" V 6225 1300 50  0000 C CNN
F 1 "33" V 6125 1300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 6055 1300 50  0001 C CNN
F 3 "~" H 6125 1300 50  0001 C CNN
	1    6125 1300
	0    1    1    0   
$EndComp
Wire Wire Line
	6275 1300 6650 1300
$Comp
L Device:R R5
U 1 1 62573816
P 6875 2125
F 0 "R5" V 6975 2125 50  0000 C CNN
F 1 "33" V 6875 2125 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 6805 2125 50  0001 C CNN
F 3 "~" H 6875 2125 50  0001 C CNN
	1    6875 2125
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7025 2125 7250 2125
Connection ~ 4025 2800
Wire Wire Line
	2125 2300 2375 2300
Wire Wire Line
	1475 2300 1825 2300
$Comp
L Connector:TestPoint TP4
U 1 1 612461C5
P 5475 7700
F 0 "TP4" H 5533 7772 50  0000 L CNN
F 1 "TestPoint" H 5533 7727 50  0001 L CNN
F 2 "Mouser:TestPoint_NoSilk_D2.50mm_Drill1.0mm" H 5675 7700 50  0001 C CNN
F 3 "~" H 5675 7700 50  0001 C CNN
	1    5475 7700
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP5
U 1 1 61248D8D
P 5700 7700
F 0 "TP5" H 5758 7772 50  0000 L CNN
F 1 "TestPoint" H 5758 7727 50  0001 L CNN
F 2 "Mouser:TestPoint_NoSilk_D2.50mm_Drill1.0mm" H 5900 7700 50  0001 C CNN
F 3 "~" H 5900 7700 50  0001 C CNN
	1    5700 7700
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP6
U 1 1 61262CE7
P 5475 7900
F 0 "TP6" H 5533 7972 50  0000 L CNN
F 1 "TestPoint" H 5533 7927 50  0001 L CNN
F 2 "Mouser:TestPoint_NoSilk_D2.50mm_Drill1.0mm" H 5675 7900 50  0001 C CNN
F 3 "~" H 5675 7900 50  0001 C CNN
	1    5475 7900
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP7
U 1 1 61262CED
P 5700 7900
F 0 "TP7" H 5758 7972 50  0000 L CNN
F 1 "TestPoint" H 5758 7927 50  0001 L CNN
F 2 "Mouser:TestPoint_NoSilk_D2.50mm_Drill1.0mm" H 5900 7900 50  0001 C CNN
F 3 "~" H 5900 7900 50  0001 C CNN
	1    5700 7900
	1    0    0    -1  
$EndComp
NoConn ~ 5475 7700
NoConn ~ 5700 7700
NoConn ~ 5700 7900
NoConn ~ 5475 7900
$Comp
L power:+5VL #PWR0101
U 1 1 61709F6E
P 3900 3875
F 0 "#PWR0101" H 3900 3725 50  0001 C CNN
F 1 "+5VL" H 3915 4048 50  0000 C CNN
F 2 "" H 3900 3875 50  0001 C CNN
F 3 "" H 3900 3875 50  0001 C CNN
	1    3900 3875
	1    0    0    -1  
$EndComp
Connection ~ 3900 3875
Wire Wire Line
	3900 3875 4200 3875
$Comp
L power:+5VL #PWR0102
U 1 1 61741DFB
P 4625 4250
F 0 "#PWR0102" H 4625 4100 50  0001 C CNN
F 1 "+5VL" H 4640 4423 50  0000 C CNN
F 2 "" H 4625 4250 50  0001 C CNN
F 3 "" H 4625 4250 50  0001 C CNN
	1    4625 4250
	1    0    0    -1  
$EndComp
$Comp
L power:+5VL #PWR0103
U 1 1 6175BA66
P 5300 5000
F 0 "#PWR0103" H 5300 4850 50  0001 C CNN
F 1 "+5VL" H 5315 5173 50  0000 C CNN
F 2 "" H 5300 5000 50  0001 C CNN
F 3 "" H 5300 5000 50  0001 C CNN
	1    5300 5000
	1    0    0    -1  
$EndComp
$Comp
L power:+5VL #PWR0104
U 1 1 6175C410
P 2625 3475
F 0 "#PWR0104" H 2625 3325 50  0001 C CNN
F 1 "+5VL" H 2640 3648 50  0000 C CNN
F 2 "" H 2625 3475 50  0001 C CNN
F 3 "" H 2625 3475 50  0001 C CNN
	1    2625 3475
	1    0    0    -1  
$EndComp
$Comp
L power:+5VL #PWR0105
U 1 1 6175CCE2
P 2600 4475
F 0 "#PWR0105" H 2600 4325 50  0001 C CNN
F 1 "+5VL" H 2615 4648 50  0000 C CNN
F 2 "" H 2600 4475 50  0001 C CNN
F 3 "" H 2600 4475 50  0001 C CNN
	1    2600 4475
	1    0    0    -1  
$EndComp
$Comp
L power:+5VL #PWR0106
U 1 1 6175D34B
P 2600 5500
F 0 "#PWR0106" H 2600 5350 50  0001 C CNN
F 1 "+5VL" H 2615 5673 50  0000 C CNN
F 2 "" H 2600 5500 50  0001 C CNN
F 3 "" H 2600 5500 50  0001 C CNN
	1    2600 5500
	1    0    0    -1  
$EndComp
$Comp
L power:+5VL #PWR0107
U 1 1 617A64C0
P 5300 6075
F 0 "#PWR0107" H 5300 5925 50  0001 C CNN
F 1 "+5VL" H 5315 6248 50  0000 C CNN
F 2 "" H 5300 6075 50  0001 C CNN
F 3 "" H 5300 6075 50  0001 C CNN
	1    5300 6075
	1    0    0    -1  
$EndComp
Connection ~ 5300 6075
Wire Wire Line
	8425 4950 8575 4950
Wire Wire Line
	9000 6375 9000 4950
Wire Wire Line
	6325 6375 9000 6375
Connection ~ 9000 4950
Wire Wire Line
	9000 4950 9100 4950
$Comp
L Connector:TestPoint TP8
U 1 1 619870E0
P 7225 5250
F 0 "TP8" V 7225 5500 50  0000 C CNN
F 1 "TestPoint" H 7283 5277 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 7425 5250 50  0001 C CNN
F 3 "~" H 7425 5250 50  0001 C CNN
	1    7225 5250
	0    -1   1    0   
$EndComp
$Comp
L Device:Crystal_GND24 Y1
U 1 1 60F2B880
P 7825 5800
F 0 "Y1" H 7950 5700 50  0000 L CNN
F 1 "ABMM-12.000MHZ" H 7475 6050 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_7050-4Pin_7.0x5.0mm" H 7825 5800 50  0001 C CNN
F 3 "~" H 7825 5800 50  0001 C CNN
	1    7825 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7825 6000 7825 6125
$Comp
L power:GNDREF #PWR027
U 1 1 60FA9635
P 8050 5650
F 0 "#PWR027" H 8050 5400 50  0001 C CNN
F 1 "GNDREF" H 8055 5477 50  0001 C CNN
F 2 "" H 8050 5650 50  0001 C CNN
F 3 "" H 8050 5650 50  0001 C CNN
	1    8050 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7825 5600 8050 5600
Wire Wire Line
	8050 5600 8050 5650
Wire Wire Line
	7575 6125 7825 6125
$Comp
L power:+3V3 #PWR023
U 1 1 60F51ACC
P 6575 4750
F 0 "#PWR023" H 6575 4600 50  0001 C CNN
F 1 "+3V3" V 6575 4975 50  0000 C CNN
F 2 "" H 6575 4750 50  0001 C CNN
F 3 "" H 6575 4750 50  0001 C CNN
	1    6575 4750
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R31
U 1 1 60FB21FC
P 7075 4750
F 0 "R31" V 7125 4950 50  0000 C CNN
F 1 "10K" V 7075 4750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 7005 4750 50  0001 C CNN
F 3 "~" H 7075 4750 50  0001 C CNN
	1    7075 4750
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDREF #PWR0108
U 1 1 6116488D
P 6625 4875
F 0 "#PWR0108" H 6625 4625 50  0001 C CNN
F 1 "GNDREF" H 6630 4702 50  0001 C CNN
F 2 "" H 6625 4875 50  0001 C CNN
F 3 "" H 6625 4875 50  0001 C CNN
	1    6625 4875
	1    0    0    -1  
$EndComp
Wire Wire Line
	6575 4750 6925 4750
Wire Wire Line
	6675 4850 6625 4850
Wire Wire Line
	6625 4850 6625 4875
Wire Wire Line
	6625 4850 6625 4550
Connection ~ 6625 4850
Wire Wire Line
	6625 4550 6675 4550
$Comp
L dk_Logic-Buffers-Drivers-Receivers-Transceivers:NC7SZ125M5X U4
U 1 1 611FFAF6
P 6950 2700
F 0 "U4" H 6775 2475 60  0000 C TNN
F 1 "74LVC1G125DBV" H 6900 3050 47  0000 C BNN
F 2 "digikey-footprints:SOT-753" H 7150 2900 60  0001 L CNN
F 3 "https://www.onsemi.com/pub/Collateral/NC7SZ125-D.PDF" H 7150 3000 60  0001 L CNN
F 4 "NC7SZ125M5XCT-ND" H 7150 3100 60  0001 L CNN "Digi-Key_PN"
F 5 "NC7SZ125M5X" H 7150 3200 60  0001 L CNN "MPN"
F 6 "Integrated Circuits (ICs)" H 7150 3300 60  0001 L CNN "Category"
F 7 "Logic - Buffers, Drivers, Receivers, Transceivers" H 7150 3400 60  0001 L CNN "Family"
F 8 "https://www.onsemi.com/pub/Collateral/NC7SZ125-D.PDF" H 7150 3500 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/NC7SZ125M5X/NC7SZ125M5XCT-ND/673392" H 7150 3600 60  0001 L CNN "DK_Detail_Page"
F 10 "IC BUF NON-INVERT 5.5V SOT23-5" H 7150 3700 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 7150 3800 60  0001 L CNN "Manufacturer"
F 12 "Active" H 7150 3900 60  0001 L CNN "Status"
	1    6950 2700
	1    0    0    -1  
$EndComp
$EndSCHEMATC
