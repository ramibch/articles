# Programa en lenguaje ensamblador del microprocesador 8085 que efectúa una división


_**Ejercicio:**_ Escribir un programa utilizando el lenguaje ensamblador del microprocesador 8085 que divida el contenido de la posición 1200H (dividendo) entre el de la 1201 H (divisor) del sistema de desarrollo uP-2000. El programa ha de depositar el resultado en la posición 1202H. Nota: el contenido de 1201 H es no nulo.


_**Solución:**_

Como ocurre con el producto, el 8085 tampoco cuenta con instrucciones específicas para llevar a cabo la operación de división. La resolución de este ejercicio, por tanto, parte del planteamiento de algún algoritmo que permita realizar dicha operación repitiendo otras más
básicas.

Una división puede verse como una sucesión de restas. Concretamente se resta al dividendo el divisor tantas veces como sea posible, obteniéndose el cociente como el número de restas que han podido efectuarse. Para dividir el número 20 entre 4, por ejemplo, se procedería de la siguiente forma:

```
20  -   4 = 16      ->  1
16  -   4 = 12      ->  2
12  -   4 = 8       ->  3
8   -   4 = 4       ->  4
4   -   4 = 0       ->  5
```

El algoritmo se detiene en el momento en que el resto parcial obtenido tras la sustracción es inferior al divisor. El cociente en este caso sería 5. El resto final es 0, por lo que la división es entera. De haberse obtenido cualquier otro valor en la última resta, ése sería el resto de la división.

El código quedaría, por tanto, así:

```
ORG 1000H
MVI A,06H
STA 1200H
MOV B,A
MVI A,14H
MOV D,A
MVI A,00H
MOV D,A
LDA 1201H
MOV D,A

BUCLE:
MOV A,E
SUB B
MOV E,A
CMP B
JNC BUCLE
MOV A,E
STA 1202H
HLT 
END
```