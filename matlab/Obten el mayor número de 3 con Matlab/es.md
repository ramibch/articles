# Obten el mayor número de 3 con Matlab

Crea un archivo (_script.m_) en tu carpeta de trabajo de Matlab con el siguiente código:

```matlab

% Limpiamos la consola
clc;

% Borramos todas la variables en el entorno de trabajo
clear all;

% Pedimos al usuario que introduzca los números
a = input('Introduce un número: ');
b = input('Introduce un segundo número: ');
c = input('Introduce un tercer número: ');

% Guardamos los números en un vector
v =  [a b c];

% Mostramos los resultados
disp(['El mayor los tres es el ',num2str(max(v))])

% >> script
% Introduce un número: 3
% Introduce un segundo número: 4
% Introduce un tercer número: 5
% El mayor los tres es el 5

```
