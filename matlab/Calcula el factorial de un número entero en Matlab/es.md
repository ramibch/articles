# Calcula el factorial de un número entero en Matlab

Crea un archivo (_nfactorial.m_) en tu carpeta de trabajo de Matlab con el siguiente código:

```matlab

function fact = nfactorial(n)
    % Función que 
  % Entradas:
  %   - n: número entero de entrada
  % Salidas
  %   - fact: resultado (factorial de "n")
  
  
  % Inicializamos fact a la unidad
  fact = 1;
  
  % Iteramos de la unidad hasta el número "n" en sí
  for i=1:n
      % Hacemos la multiplicación
      fact=fact*i;
  end
  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%   Cómo usar la función %%%%%%%%%%%%%%

% Para obtener llamar a la función hacemos lo siguiente:
% >> nfactorial(3)
% ans = 6
% >> nfactorial(4)
% ans = 24

```
