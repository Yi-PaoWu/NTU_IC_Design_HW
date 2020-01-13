*********************************************
.inc '90nm_bulk.l'
*.SUBCKT Inv DVDD GND In Out

*.PININFO DVDD:I GND:I In:I Out:O
*MM1 Out In GND GND NMOS l=0.1u w=0.25u m=1
*MM2 Out In DVDD DVDD PMOS l=0.1u w=0.5u m=1
.SUBCKT EO3 DVDD GND InA InB InC Out
***** D G S B type L W m ****
MM1 1 InC DVDD DVDD PMOS l=0.1u w=0.5u m=1
MM2 1 InC GND GND NMOS l=0.1u w=0.25u m=1
MM3 2 3 InC InC PMOS l=0.1u w=0.5u m=1
MM4 2 3 1 1 NMOS l=0.1u w=0.25u m=1
MM5 3 InC 2 2 PMOS l=0.1u w=0.5u m=1
MM6 3 1 2 2 NMOS l=0.1u w=0.25u m=1
MM7 Out 2 DVDD  DVDD PMOS  l=0.1u w=0.5u m=1
MM8 Out 2 GND GND NMOS  l=0.1u w=0.25u m=1
MM9 5 InA DVDD DVDD PMOS l=0.1u w=0.5u m=1
MM10 5 InA GND GND NMOS l=0.1u w=0.25u m=1
MM11 3 InB 5 5 PMOS l=0.1u w=0.5u m=1
MM12 3 InB InA InA NMOS l=0.1u w=0.25u m=1
MM13 3 5 InB InB PMOS l=0.1u w=0.5u m=1
MM14 3 InA InB InB NMOS l=0.1u w=0.25u m=1 
.ENDS
*********************************************


Vdd DVDD    0   1.0
Vss GND     0   0

Vin1  InA      0   pulse (0 1.8 0 50n 50n 0.45u 1u)
Vin2  InB      0   pulse (0 1.8 0 50n 50n 0.95u 2u)
Vin3  InC      0   pulse (0 1.8 0 50n 50n 1.95u 4u)


x1 DVDD GND InA InB InC Out     EO3

*DVDD DVDD  GND  1.8V
.tran 10n 5u
.op
.option post
.end
