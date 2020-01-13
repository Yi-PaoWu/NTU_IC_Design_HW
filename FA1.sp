*********************************************
.inc '90nm_bulk.l'
.SUBCKT FA DVDD GND InA InB Cin Sum Cout
*.PININFO DVDD:I GND:I In:I Out:O
*MM1 Out In GND GND NMOS l=0.1u w=0.25u m=1
*MM2 Out In DVDD DVDD PMOS l=0.1u w=0.5u m=1
MM1 1 InA DVDD DVDD PMOS l=0.1u w=0.5u m=1
MM2 1 InA GND GND NMOS l=0.1u w=0.25u m=1
MM3 InB 1 2 DVDD PMOS l=0.1u w=0.5u m=1
MM4 InB InA 2 GND NMOS l=0.1u w=0.25u m=1
MM5 2 InB 1 DVDD PMOS l=0.1u w=0.5u m=1
MM6 2 InB InA GND NMOS l=0.1u w=0.25u m=1
MM7 2 Cin 3 DVDD PMOS l=0.1u w=0.5u m=1
MM8 2 4 3 GND NMOS l=0.1u w=0.25u m=1 
MM9 3 2 Cin DVDD PMOS l=0.1u w=0.5u m=1
MM10 3 2 4 GND NMOS l=0.1u w=0.25u m=1
MM11 Sum 3 DVDD DVDD PMOS l=0.1u w=0.5u m=1
MM12 Sum 3 GND GND NMOS l=0.1u w=0.25u m=1
MM13 4 Cin DVDD DVDD PMOS l=0.1u w=0.5u m=1
MM14 4 Cin GND GND NMOS l=0.1u w=0.25u m=1
MM15 5 InA DVDD DVDD PMOS l=0.1u w=0.5u m=1
MM16 5 InB DVDD DVDD PMOS l=0.1u w=0.5u m=1
MM17 6 Cin 5 DVDD PMOS l=0.1u w=0.5u m=1
MM18 6 Cin 7 GND NMOS l=0.1u w=0.25u m=1
MM19 7 InA GND GND NMOS l=0.1u w=0.25u m=1
MM20 7 InB GND GND NMOS l=0.1u w=0.25u m=1
MM21 8 InB DVDD DVDD PMOS l=0.1u w=0.5u m=1
MM22 6 InA 8 DVDD PMOS l=0.1u w=0.5u m=1
MM23 6 InA 9 GND NMOS l=0.1u w=0.25u m=1
MM24 9 InB GND GND NMOS l=0.1u w=0.25u m=1
MM25 Cout 6 DVDD DVDD PMOS l=0.1u w=0.5u m=1
MM26 Cout 6 GND GND NMOS l=0.1u w=0.5u m=1
.ENDS
*********************************************


Vdd DVDD    0   1
Vss GND     0   0

Vin1 InA      0   pulse (0 1.8 0 10n 10n 0.49u 1u)
Vin2 InB      0   pulse (0 1.8 0 10n 10n 0.99u 2u)
Vin3 Cin      0   pulse (0 1.8 0 10n 10n 1.99u 4u)


x1 DVDD     GND InA InB Cin  Sum Cout FA

.tran 10n 16u
.op
.option post
.end
