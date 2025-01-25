# Programa en lenguaje ensamblador del microprocesador 8085 que multiplica 2 números

_**Ejercicio:**_ Escribir un programa utilizando el lenguaje ensamblador del microprocesador 8085 que multiplique los números contenidos en las posiciones 1200H y 1201 H del sistema de desarrollo uP-2000. El programa ha de depositar los bytes bajo y alto del resultado en las posiciones 1202H (LB) y 1203H (HB), respectivamente.


_**Solución:**_

El 8085 no cuenta con instrucciones que permitan calcular el producto de dos números, algo que sí pueden hacer microprocesadores más modernos. Multiplicar un número cualquiera por 5, no obstante, es un proceso muy simple. Planteándolo de forma manual podría decirse que:

```
N x 5 = N + N + N + N + N
```

Un producto puede descomponerse como una sucesión de sumas y ésta es la forma de plantear la solución al ejercicio que se propone,

El código quedaría, por tanto, así:


```
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
```