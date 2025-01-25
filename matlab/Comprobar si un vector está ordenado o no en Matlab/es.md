# Comprobar si un vector está ordenado o no en Matlab

Crea un archivo (_vector_ordenado.m_) en tu carpeta de trabajo de Matlab con el siguiente código:

```matlab

function ordenado=vector_ordenado(vector)
  % Función que comprueba si un vector está ordenado o no
  % Entradas:
  %   - vector: array de números
  % Salidas
  %   - ordenado: Si el resultado es 1 significa que el vector está ordenado
  
  % Asumimos que el vector está ordenado incializando la variable ordenado a "true"
  ordenado = true;
  
  % Calculamos el tamaño del vector
  tam = length(vector);
  
  % Inicializamos el iterator i a la unidad
  i = 1;
  
  % Mientras el iterador sea menor que el tamaño del vector 
  % y la variable "ordenado" sea verdadero seguimos en el bucle "while"
  while (i<tam && ordenado==true)
      % En cuento un elemento del vector sea mayor que el siguiente, 
      % el vector ya no es está ordenado. Por tanto, finaliza la ejecución.
      if (vector(i)>vector(i+1))
          ordenado=false;
      end
      % Vamos incrementado en valor del iterador para poder acceder
      % al siguiente elemento del vector
      i=i+1;
  end
 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%   Cómo usar la función %%%%%%%%%%%%%%

% Para obtener llamar a la función hacemos lo siguiente:

% >> vector_ordenado([1 2 3 4 5])
% ans = 1

% >> vector_ordenado([4 5 1])
% ans = 0


```
