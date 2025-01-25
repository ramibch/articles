# Doble de la suma entre 2 números en lenguaje ensamblador del microprocesador 8085

_**Ejercicio:**_ Escribir un programa utilizando el lenguaje ensamblador del microprocesador 8085 que calcule el doble de la suma de los números comprendidos entre _n0_ y _n1_ (ambos inclusive), siendo _n0_ (1200H) y _n1_ = (1201H) del sistema de desarrollo uP-2000. El programa ha de depositar los bytes bajo y alto del resultado en las posiciones 1202H (LB) y 1203H (HB), respectivamente. Nota: _n1 > n0_.


_**Solución:**_



```
ORG 1000H 
MVI A,04H 	
STA 1200H 	
MVI A,08H 	
STA 1201H 	


SUB B	
MOV D,A
INR D
LDA 1200H

MVI L,00H
MVI H,00H
LDA 1201H

MOV E,A

BUCLE:

MOV A,L
ADD E
MOV L,A
JNC NOACARREO
	INR H
NOACARREO:
DCR E
DCR D
MOV A,D
CPI 00H
JNZ BUCLE 

MOV A,H
ADD H
MOV H,A
MOV A,L
ADD L
MOV L,A
JNC NOACAR
INR H
NOACAR:

SHLD 1202H

HLT 
END

```