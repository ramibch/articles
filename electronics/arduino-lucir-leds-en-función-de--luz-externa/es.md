# Lucir tres leds más o menos en función de la luz externa con Arduino UNO


Queremos implementar en un Arduino un dispositivo que haga lucir tres LEDs más o menos en función de la luz externa.

Para ello conectaremos una LDR a la entrada analógica y los LEDs a los pines de salida PWM. El valor de la entrada analógica está comprendido entre 0 y 1024, y el valor de la luminosidad de los LEDs entre 0 y 255. Los LEDs deben lucir entre 0 y 255 en función del valor de la entrada analógica, siendo su valor inversamente proporcional al valor de la entrada analógica (de 0 a 1024), o sea a más luz menor intensidad luminosa de los LEDs. 

Además, se establecerá una comunicación serie (Arduino-PC), para visualizar en el Monitor Serie (consola del ordenador) el valor convertido de la entrada analógica, el valor equivalente en voltaje en dicha entrada analógica (entre 0 y 5 V), así como, el valor entregado por la salidas PWM.


Con lo descrito, el código quedaría de la siguiente manera:


```cpp

void setup() {
  
  pinMode(9, OUTPUT);  // Pin 9,10 y 11 leds
  pinMode(10,OUTPUT);
  pinMode(11,OUTPUT);
  pinMode(A0, INPUT);  // Pin A0 entrada sensor luminosidad
  Serial.begin(9600);  // Comenzamos la comunicaci�n serie
  
}

void loop() {
    
  long ent = analogRead(A0);   // inicializamos A0 como valor de 16 bits (leido)
  
  int inv = (1023 - ent)/4; 
 
  Serial.print("El valor de lectura del sensor es de ");
  Serial.println(ent);    // Mostramos por pantalla 
  Serial.print("El valor de salida para los leds es de");
  Serial.println(inv);
  
    analogWrite(9, inv);  // Encendemos los LEDs en función de la luminosidad 
	delay(1000);  
    analogWrite(10, inv);
	delay(1000);
    analogWrite(11, inv);
	delay(1000);
}
```