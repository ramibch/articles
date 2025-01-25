# Calcular la media de varios números de forma dinámica en Matlab

Crea un archivo (_script.m_) en tu carpeta de trabajo de Matlab con el siguiente código:

```matlab

% Limpiamos la consola
clc;

% Borramos todas la variables en el entorno de trabajo
clear all;

% Cantidad de números a obtener la media
veces = input('Introduce el número de datos a calcular la media: ');

% Guardamos la suma y la iniciamos a cero
suma = 0;

% Vamos preguntando al usuario el número tantas veces como ha indicado
for i=1:veces
    m(i)=input(['Introduce el ',num2str(i),'° número: ']);
    % Guardamos el número introducido en "suma"
    suma=suma+m(i);
end

% La media será la suma entre la cantidad de números
disp(['La media es ',num2str(suma/veces)])


% Ejecutamos el script:
% >> script
% Introduce el número de datos a calcular la media: 3
% Introduce el 1° número: 4
% Introduce el 2° número: 5
% Introduce el 3° número: 7
% La media es 5.3333

```
