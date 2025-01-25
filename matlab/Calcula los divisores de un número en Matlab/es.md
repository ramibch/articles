# Calcula los divisores de un número en Matlab

Crea un archivo (_divisores.m_) en tu carpeta de trabajo de Matlab con el siguiente código:

```matlab

function div = divisores(num)
  % Función que calcula los divisores de un número
  % Entradas:
  %   - num: Número del cual se va obtener los divisores
  % Salidas
  %   - div: vector de divisores del número "num"

  % Creamos un vector "div" vacío
  div = [];
  
  % Iteramos para comprobar que "num" es divisible entre números más pequeños
  for i=1:round(num/2)
      % La función mod calcula el resto de dividir un número entre otro
      % Si el resto de la división mod(a,b) es cero, significa "b" es un divisor de "a" 
      if (mod(num,i)==0) 
          % "i" es divisor de "num". Por tanto guardamos el valor de "i" en "div"
          div(length(div) + 1) = i;
      end
  end
  

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%   Cómo usar la función %%%%%%%%%%%%%%

% Para obtener llamar a la función hacemos lo siguiente:
% >> divisores(128)
% ans =
%    1    2    4    8   16   32   64

```
