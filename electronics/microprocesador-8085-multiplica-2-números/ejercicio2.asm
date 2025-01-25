; Ejercicio 2 (Práctica 1)
; Autor: Rami Boutassghount


ORG 1000H
MVI A,04H
STA 1200h 
MVI A,08H 
STA 1201H

LDA 1200H
MOV B,A 
LDA 1201H	
MOV C,A 
MOV D,C
MVI A,00H 
STA 1202H 	
STA 1203H 
	
SUMA:
MOV A,L
ADD B	

JNC NOACARREO
	
INR H	
	
NOACARREO:	

MOV L,A
DCR D	

JNZ  SUMA

MOV A,L
STA 1202H	
MOV A,H	
STA 1203H	

HLT		
END 		
