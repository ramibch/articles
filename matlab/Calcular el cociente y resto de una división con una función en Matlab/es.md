# Calcular el cociente y resto de una división con una función en Matlab

Crea un archivo (_calcula_division.m_) en tu carpeta de trabajo de Matlab con el siguiente código:

```matlab

function [cociente, resto] = calcula_division(dividendo,divisor)
  % Función que calcula una división de dos números enteros
  % Entradas:
  %   - dividendo: número entero a dividir
  %   - divisor: número entero por el cual se va a dividir
  % Salidas
  %   - cociente: resultado la división (número entero)
  %   - resto: el resto de la división (número entero también)

  % Inicializamos el valor del cociente a cero
  cociente=0;
  
  % Comprobamos si el dividendo es mayor que el divisor
  if dividendo > divisor
      % Mientras el dividendo sea mayor, hacemos ciertas operaciones 
      while(dividendo>divisor)
          % Operaciones:
          % Actualizamos el dividendo restándole el divisor
          dividendo = dividendo - divisor;
          % Aumentamos en una unidad el valor del cociente
          cociente = cociente + 1;
      end
  % En caso de que el dividendo no sea mayor que el divisor, informamos al usuario
  else disp('El dividendo debe ser mayor');
  end
  
  % El resto será lo que sobra en el valor de la variable "dividendo"
  resto = dividendo;



% >> [cociente, resto] = calcula_division(5, 2)
% cociente = 2
% resto = 1

% En caso de no introducir los corchetes [], la función sólo
% devolverá el primer parámetro de salida (el cociente):

% >> calcula_division(5, 2)
% ans = 2


```
