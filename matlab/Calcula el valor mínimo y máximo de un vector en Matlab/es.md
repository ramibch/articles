# Calcula el valor mínimo y máximo de un vector en Matlab

Crea un archivo (_min_y_max_de_un_vector.m_) en tu carpeta de trabajo de Matlab con el siguiente código:

```matlab

function [v_min, v_max] = min_y_max_de_un_vector(vector)
  % Función que calcula el valor mínimo y máximo de un vector
  % Entradas:
  %   - vector: Vector de entrada
  % Salidas
  %   - v_min: valor mínimo del vector
  %   - v_max: valor máximo del vector

  % Asumimos tanto el mínimo como el máximo es el primer elemento
  v_min=vector(1);
  v_max=vector(1);

  % Iteramos
  for cont=2:length(vector)
      % Si el valor actual del iterador es mayor que el valor máximo asumido,
      % éste pasa a ser el nuevo valor máximos
      if (vector(cont)>v_max)
          v_max=vector(cont);
      end
      % De forma análoga con el mínimo
      if (vector(cont)<v_min)
          v_min=vector(cont);
      end
  end

  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%   Cómo usar la función %%%%%%%%%%%%%%

% Para obtener llamar a la función hacemos lo siguiente:

% >> [vmin, vmax] = min_y_max_de_un_vector([6 45 45 4 98 2 32])
% vmin = 2
% vmax = 98

```
