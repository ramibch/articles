# Reusa los valores de variables de tu script de Matlab en archivo .mat

Supongamos que queremos guardar datos de un script de Matlab y usarlos en otra sesión al día siguiente o más tarde. Una solución podría ser guardarlos en un archivo _.mat_ y poder cargarlos más tarde.


Vamos a suponer que tenemos un mini script solicite el nombre, la edad y el sexo de una persona y almacena esa información en un archivo _datos.mat_. Lo importante es  aprender el proceso y da igual el ejemplo. Por tanto escribimos lo siguiente:


```matlab
% script1.m

nombre = input('Introduzca su nombre: ','s');
edad = input('Induzca su edad: ');
sexo = input('Introduzca su sexo (M o F): ','c');
save('datos.mat','nombre', 'edad', 'sexo')
```

La función de Matlab _save_ guarda en el archivo _datos.mat_ las variables que le indicamos entre comillas. En este caso: _'nombre', 'edad', 'sexo'_. 

Si ejecutamos el script e introducimos los datos que éste nos pide, Matlab generará el archivo _datos.mat_ con este contenido:

```
# name: nombre
# type: string
# elements: 1
# length: 4
Rami
# name: edad
# type: scalar
32
# name: sexo
# type: string
# elements: 1
# length: 1
M
```

Para cargar los datos podemos hacer uso la función _load_. Écha un vistado al siguiente código:


```matlab
% script2.m

load('datos.mat');
fprintf("Nombre: %s \nEdad: %d \nSexo: %c \n", nombre, edad, sexo)

```

El _script2.m_ lee un archivo .MAT y muestra por pantalla su contenido. En este caso se muestra por pantalla pero las aplicaciones podrían ser cualquiera: usarlos para hacer cálculos númericos, hacer una visualización usando _plot_ o cualquier cosa que se pueda hacer con Matlab ya que las variables _'nombre', 'edad', 'sexo'_ se encuentran de nuevo en el entorno de trabajo.
