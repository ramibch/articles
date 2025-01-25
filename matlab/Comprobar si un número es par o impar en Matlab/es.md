# Comprobar si un número es par o impar en Matlab

Crea un archivo (_script.m_) en tu carpeta de trabajo de Matlab con el siguiente código:

```matlab

% Limpiamos la consola
clc;

% Borramos todas la variables en el entorno de trabajo
clear all;

% Pedimos al usuario que introduzca un número
num = input('Introduce un número entero: ');

% La función fix de Matlab coge la parte entera de un número
% Si el número al dividirlo entre 2 es lo mismo que la parte entera
% de hacer la misma división, será un número par
if num/2 == fix(num/2)
    disp(['El número ',num2str(num),' es par']);
  else
    disp(['El número ',num2str(num),' es impar']);
end


% Al Ejecutar el script tenemos:

% >> script 
% Introduce un número entero: 3
% El número 3 es impar

% >> script 
% Introduce un número entero: 10
% El número 10 es par

```
