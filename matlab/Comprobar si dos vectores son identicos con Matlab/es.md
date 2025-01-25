# Comprobar si dos vectores son identicos con Matlab

Crea un archivo (_vectores_identicos.m_) en tu carpeta de trabajo de Matlab con el siguiente código:

```matlab

function identicos = vectores_identicos(vect1,vect2)
  % Función que comprueba si dos vector son identicos
  % Entradas:
  %   - vect1: Vector 1
  %   - vect2: Vector 2
  % Salidas
  %   - identicos: Resultado. 1 si son identicos, 0 si no lo son
  
  % Asumimos que lo son 
  identicos = true;
  
  % Inicializamos un iterador
  i=1;
  
  % Comprobamos si tienen el mismo número de elementos
  if (length(vect1)==length(vect2))
      % Iteramos desde 1 hasta el último elemento del vector 1 y 
      % mientras la variable "identicos" sea "true"
      while ((i <= length(vect1)) && identicos)
        % Si el elemento "i" del vector 1 es distinto del segundo, no serán identicos
        if vect1(i) != vect2(i)
              identicos = false;
        end
        % Incrementamos el iterador
        i = i + 1;
      end
  else
      % Si no tienen el mismo número de elementos, no son identicos
      identicos = false;
  end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%   Cómo usar la función %%%%%%%%%%%%%%

% Para obtener llamar a la función hacemos lo siguiente:
% >> vectores_identicos([2 3 5], [2 2 5])
% ans = 0
% >> vectores_identicos([2 3 5], [2 3 5])
% ans = 1

```
