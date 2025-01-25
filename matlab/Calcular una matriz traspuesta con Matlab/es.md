# Calcular una matriz traspuesta con Matlab

Crea un archivo (_traspuesta.m_) en tu carpeta de trabajo de Matlab con el siguiente código:

```matlab

function matriz_traspuesta=traspuesta(matriz)
  % Función que calcula la matriz traspuesta de una matriz
  % Entradas:
  %   - matriz: Matriz cuadrada. Ejemplo: [1 2; 3 4]
  % Salidas
  %   - matriz_traspuesta: Matriz traspuesta obtenida
  
  [n_filas, n_columnas] = size(matriz);
  
  % Comprobamos que el número de filas y columas sean iguales
  if n_filas != n_columnas
    disp("No es posible calcular la matriz traspuesta de una matriz no cuadrada.")
    % Paramos la ejeución del programa
    return
  endif
  
  % Iteramos
  for i=1:n_filas
      for j=1:n_filas
          % Intercambiamos los iteradores para componer la matriz traspuesta
          matriz_traspuesta(j, i) = matriz(i, j);
      end
  end
 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%   Cómo usar la función %%%%%%%%%%%%%%

% Para obtener llamar a la función hacemos lo siguiente:
% >> m = [1 0; 3 5]
% >> traspuesta(m)
% ans =
%   1   3
%   0   5

```
