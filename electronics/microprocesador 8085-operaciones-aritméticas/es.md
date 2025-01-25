# Operaciones aritméticas en lenguaje ensamblador del microprocesador 8085

Una de las partes fundamentales de un microprocesador es su UAL (Unidad Aritmético Lógica), el componente que se encarga de realizar todas las operaciones aritméticas y lógicas, generando un resultado y alterando los bits del registro de estado. Dependiendo del microprocesador se contemplarán operaciones más o menos complejas y con operandos de diferentes tamaños. En el caso del 8085 las dos únicas operaciones aritméticas para las que existen instrucciones son la suma y la resta, con operandos de 8 bits y, en el caso concreto de la suma, también con operandos de 16 bits.

Mediante estas dos operaciones básicas, no obstante, es posible realizar otras más complejas como el producto y la división.

Veamos un ejercicio práctico sobre ello.

_**Ejercicio:**_ Tomar dos datos alojados en las direcciones de memoria 1100H y 1101H, ambos de 8 bits, efectuar la suma y almacenar el resultado en la dirección
1102H, poniendo en 1103H un 1 si se ha producido acarreo o un 0 en caso contrario.

_**Solución:**_


Los datos a sumar no son conocidos de antemano sino que es necesario recuperarlos previamente de la memoria. Además se pide como resultado de la ejecución no solamente la suma de los operandos, sino también una indicación de si se ha producido o no acarreo en la misma.

Para completar este ejercicio habrá que reproducir los pasos siguientes:
1. Recuperar de la memoria los dos operandos de 8 bits que van a sumarse, almacenando uno de ellos en el acumulador y el segundo en otro registro.
2. Sumar al acumulador el contenido del otro registro.
3. Almacenar el resultado de la suma en la posición de memoria indicada.
4. Comprobar si está activo el bit de acarreo del registro de estado y almacenar en la siguiente posición de memoria el valor 1 si lo está o el valor 0 en caso contrario. Es un condicional simple que puede implementarse con un salto.


El código quedaría de la siguiente manera:


```
CPU "8085.TBL"
HOF "INT8"

    ORG 1000H

    LDA 1100H   ; Recuperar un operando
    MOV B, A    ; Llevarlo a B
    LDA 1101H   ; Recuperar el otro operando
    
    ADD B       ; Se suma el operando de B al de A
    
    STA 1102H   ; Y se guarda el resultado
    
    MVI A, 00H  ; Poner un 0 en A
    JNC FIN     ; y saltar si no ha habido acarreo

    MVI A, 01H  ; Si ha habido acarreo poner un 1

FIN:
    STA 1103H   ; Guardar el indicador de acarreo
    
    RST 1
END

```
