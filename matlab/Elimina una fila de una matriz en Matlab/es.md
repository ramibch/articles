# Elimina una fila de una matriz en Matlab

Crea un archivo (_elimina_fila.m_) en tu carpeta de trabajo de Matlab con el siguiente código:

```matlab

function m_salida = elimina_fila(m_entrada, fila)
  % Función que elimina una fila de una matriz y devuelve la matriz modificada
  % Entradas:
  %   - m_entrada: Matriz de entrada
  %   - fila: Número de fila a eliminar
  % Salidas
  %   - m_salida: Matriz de salida sin la fila
  
  % Calculamos el número de filas de la matriz de entrada
  [nfilas, _] = size(m_entrada);
  
  % Comprobamos que el número de fila a eliminar es válido
  if fila > nfilas
    disp('El número de fila indicado es mayor que el número de filas de matriz de entrada');
    return
  endif

  % Hasta la fila - 1, la matriz es la misma
  for i = 1:(fila-1) 
    m_salida(i,:) = m_entrada(i,:);
  end

  % A partir de fila, desplazamos una fila hacia arriba
  for i = fila:(nfilas-1) 
    m_salida(i,:) = m_entrada(i+1,:);
  end


  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%   Cómo usar la función %%%%%%%%%%%%%%

% Para obtener llamar a la función hacemos lo siguiente:

%  >> m = [1 3; 3 4; 4 5]
%  m =
%    1   3
%    3   4
%    4   5

% >> elimina_fila(m, 2)
% ans =
%    1   3
%    4   5

```
