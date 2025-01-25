# Emular el funcionamiento de un sistema de climatización con Arduino UNO

Queremos  emular el funcionamiento de un sistema de climatización sencillo con un microprocesador Arduino UNO en el que cuando la temperatura medida en un termistor o sensor de temperatura (entre 0 y 1024) supera un valor establecido como máximo, se activa el sistema de refrigeración.

Por otro lado, si la temperatura medida está por debajo de un valor establecido como mínimo, se activa el sistema de calefacción. Si el valor de la temperatura se encuentra entre el valor máximo y mínimo establecidos, se considerará una temperatura de confort, permaneciendo ambos sistemas
desactivados.

Solamente en el caso de que ambos sistemas (calefacción y aire acond.) permanezcan desactivados, se activará un sistema de ventilación. Además, se establecerá una comunicación serie (Arduino-PC), para visualizar en el Monitor Serie (consola del ordenador) el valor convertido de la entrada analógica (entre 0 y 1024), así como el valor equivalente en voltaje en dicha entrada analógica (entre 0 y 5 V).


Nota: Dos diodos LED representarán la activación encendido y apagado desactivado, de los sistemas de calefacción y aire acondicionado. Mientras que un motor eléctrico emulara el sistema de ventilación.


**_Solución:_**

El código sería el siguiente:

```cpp

  float   Vmin = 0.5; // Tensión por debajo de la cual se activa la calefacción
  float   Vmax = 4.5; // Tensión por encima de la cual se activa el aire acondicionado

void setup() {
  
  pinMode(9, OUTPUT);  // Pin 9 salida calefacción 
  pinMode(10, OUTPUT);  // Pin 10 salida ventilación
  pinMode(11, OUTPUT);  // Pin 11 salida aire acondicionado
  pinMode(A0, INPUT);  // Pin A0 entrada sensor temperatura
  
Serial.begin(9600);  // Comenzamos la comunicaci�n serie a9600 bps
  
}

void loop() {
    
long ent = analogRead(A0);   // Inicializamos A0 como valor de 16bits
  Serial.print("La lectura de la entrada analógica es ");
  Serial.println(ent);    // Mostramos el valor por pantalla

float tension = ent*5/1023 ;  // escalamos la entrada analogica a 0-5 V
  Serial.print("La lectura en valor de Tensión es ");
  Serial.print(tension);
  Serial.println("V");

//Casos
 
  if(tension < Vmin){
    digitalWrite(9, HIGH);  // Endendemos la calefacción
    digitalWrite(10, LOW);
    digitalWrite(11, LOW);
  }
  
    if(tension > Vmin && tension < Vmax){
    digitalWrite(9, LOW);  
    digitalWrite(10, HIGH);  // Endendemos la ventilación
    digitalWrite(11, LOW);
  }
  
  if(tension > Vmax){
    digitalWrite(9, LOW);  
    digitalWrite(10, LOW);  
    digitalWrite(11, HIGH); // Endendemos el aire acondicionado
  }
  
delay (500);  // retraso de x milisegundos
  
}
```