# Entendiendo AWL con Tia Portal

El lenguaje en AWL es uno de los que Tia Portal de Siemens ofrece para que programador de PLCs realice sus instrucciones. Normalmente, se usa para hacer que la ejecución del programa sea rápido.

AWL (**A**n**w**eisungs**l**iste en alemán) signfica literalmente _Lista de instrucciones_.

Para entender AWL se requiere una serie de conceptos como el RLO.

## RLO

El RLO (resultado lógico) es el estado resultande de las operaciones que hay desde la primera condición hasta la ocndición deseada.

Aunque existe, sólo se muestra de manera direta en AWL. En KOP de manera indirecta iluminando el contacto.

Supongamos que tenemos la siguiente instrucción en la que `a` y `b` son `0` (su valor en el arranque del programa):

```
                RLO     Valor
    U   a       0       0       // RLO = a = 0
    U   b       0       0       // RLO = a * b = 0
    =   r       0       0       // RLO = r = 0
```

El RLO en cada línea será obviamente cero.

Si ahora ahcemos que `a=1`, tenemos que el RLO sólo vale `1` en la primera línea:

```
    L   1                       // Cargamos un 1
    T   a                       // Lo transferimos a la variable a

                RLO     Valor
    U   a       1       1       // RLO = a = 1
    U   b       0       0       // RLO = a * b = 0
    =   r       0       0       // RLO = r = 0
```

Haciendo lo mismo pero con `b` (`b=1`), el RLO de todas las líneas es de nuevo `0`.

```
    L   1                       // Cargamos un 1
    T   b                       // Lo transferimos a la variable b
                RLO     Valor
    U   a       0       0       // RLO = a = 0
    U   b       0       1       // RLO = a * b = 0
    =   r       0       0       // RLO = r = 0
```

En el caso de que ambas variables sean `1`, tenemos que el RLO será también `1` en todas las líneas de esta instrucción:

```
    L   1                       // Cargamos un 1
    T   a                       // Lo transferimos a la variable a
    T   b                       // Lo transferimos a la variable b también

                RLO     Valor
    U   a       1       1       // RLO = a = 1
    U   b       1       1       // RLO = a * b = 1
    =   r       1       1       // RLO = r = 1
```

## Saltos

Los saltos son similares a una instrucción _if/else_. Bajo una condición, podemos programar para que la ejecucción del programa se dirija a un bloque u otro.

Las instrucciones de Saltos empiezan por `SP` (**Sp**rung, salto en alemán).

Estos son algunos tipos de saltos que pueden ser útiles para tu programa en AWL:

- SPB: salta si RLO vale 1
- SPBN: salta si RLO vale 0
- SPA: salto absoluto (salta incondicionalmente). Útil para organizar tus instrucciones.


```
    // Código
    SPB NombreDelSalto      // Se realizará el salto si el RLO es 1

NombreDelSalto: NOP 0       // indica instrución nulla
    // Más código
```


## Bucles

Un bucle es una secuencia repetiva de operaciones iguales. Si introducimos un salto al final de una secuencia de instrucciones para que se ejecute el principio de un código dada una condición tenemos un bucle.

La mejor manera de ver esto es con un ejemplo. Supon que queremos incrementar el valor de una variable `numero` por su valor actual más una serie de veces (10). La forma de implementar en AWL sería:

```
    // Asignamos 0 a las variables indice y numero que son de tipo Int
    L   0
    T   indice
    T   numero

BUCLE: NOP 0

    // Sumamos en cada iteración numero = numero + 1
    L       numero
    L       1
    +I
    T       numero

    // Actualizamos el índice
    L       indice
    L       1
    +I
    T       indice

    // Verificamos índice
    L       indice
    L       10
    >=I             // indice >= 10 ?
    SPBN    BUCLE   // La ejecución salta a la etiqueta BUCLE si RLO=0

```

## Instrucción AUF

Aufmachen. Auf. . Aufmachen significa abrir en alemán. Se suele usar auf para referir que algo está abierto haciendo función de adjetivo: "heute Abend ist Lidl nur 18Uhr auf" (hoy el supermercado Lidl está hasta las 18:00 abierto). Sin embargo, aquí en AWL es una acción, abrir.

Como debes intuir, la instrucción AUF permite abrir algo. Como estamos en AWL, qué es posible que podamos abrir? Exacto! Un DB (**D**aten**B**austein) y hacer operaciones en él, como asignar
cambiar cualquier variable del mismo.

Ejemplo:

```
    AUF     "DB_Datos"          // Accediendo al DB_Datos
    L       %DBW48		        // Cargamos el valor de la posición (offset) 48 del DB
    T 	"DB_Datos".Variable1	// Transferimos ese dato a valor Value1 del DB Data2
```

Es posible abrir un DB de forma dinámica usando `AUF DB [ #Num]` donde `Num` es una variable de tipo `Int`. Esto es útil en búcles o en instrucciones donde no sabemos de manera fija el DB a cambiar sino que depende de un bloque de código anterior.


## Acumuladores

Los PLCs de Siemens disponen de 2 acumuladores (_ACU1_ y _ACU2_). 

```
    L   2                       // Cargamos un 2 en un acumulador
    L   4                       // Cargamos un 4 en un acumulador
    +I                          // Hacemos la suma de ambos
    T   "DB_Datos".Variable1    // Transferimos el resultado en una variable del programa
```

Supongamos que queremos sumar 3 valores, como en el ejemplo siguiente, pues pasará lo comentado en el código:


```
                                RLO     Valor 
    L   2                       1       2       // 2 se carga en ACU1
    L   4                       1       4       // 4 se carga en ACU1 y 2 se pasa el ACU2
    L   3                       1       3       // 3 se carga en ACU1 y 4 se pasa el ACU2
    +I                          1       7       // Se realiza la suma de los Acumuladores 
    T   "DB_Datos".Variable1    1       7       // Se transfiere el resultado a una variable
```

Vemos el primer valor de la instrucción `L  2` se ignora ya que se pierde durante la ejecucción. Para resolver este problema podemos hacer lo siguiente:


```
                                RLO     Valor 
    L   2                       1       2
    L   4                       1       4
    +I                          1       6
    L   3                       1       3
    + I                         1       9
    T   "DB_Datos".Variable1    1       9       
```




## Fin

Hasta aquí el artículo. Lo iré actualizando en el futuro mientras vaya aprendiendo y aplicando más instrucciones en AWL.