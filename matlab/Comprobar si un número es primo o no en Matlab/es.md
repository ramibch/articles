# Comprobar si un número es primo o no en Matlab

Crea un archivo (_script.m_) en tu carpeta de trabajo de Matlab con el siguiente código:

```matlab

% Limpiamos la consola
clc;

% Borramos todas la variables en el entorno de trabajo
clear all;

% Preguntamos al usuario que introduzca un número
num = input('Introduce un número entero positivo: ');

% Empezamos suponiendo que es primo
es_primo=1; 

% Inicializamos el iterador para hacer comprobaciones
i = 2;

% Iteramos mientras el número se asuma que es primo y mientras hacemos
% la comprobación de que es divisible entre números pequeños (entre 2 y su mitad) 
while (i<round(num/2) && es_primo)
  if (mod(num,i) == 0)
    % Si es divisible ya no es primo. En este caso finaliza el bucle
    es_primo = 0;
  else
    i=i+1;
  end
end

% Informamos al usuario si lo es o no
if es_primo
  disp(['El número ', num2str(num),' es primo']);
else
  disp(['El número ', num2str(num),' no es primo']);
end



```
