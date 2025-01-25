# Calcula la media un vector con una función en Matlab

Crea un archivo (_calcula_media.m_) en tu carpeta de trabajo de Matlab con el siguiente código:

```matlab

function media=calcula_media(vector)
  % Función que calcula una división de dos números enteros
  % Entradas:
  %   - vector: array de números
  % Salidas
  %   - media: resultado de la media

  acumulador=0;
  tam=length(vector);
  for i=1:tam
      acumulador=vector(i)+acumulador;
  end
  media=acumulador/tam;
 
  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%   Cómo usar la función %%%%%%%%%%%%%%

% Creamos un vector
% >> a = [3 4 5.4];

% Llamamos a la función pasando el parámetro 
% >> calcula_media(a)
% ans = 4.1333

% Usa la función de Matlab para comprobar que está bien:
% >> mean(a)
% ans = 4.1333

% También lo puedes comprobar así:
% >> sum(a)/length(a)
% ans = 4.1333

```
