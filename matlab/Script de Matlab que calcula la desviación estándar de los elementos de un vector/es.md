# Script de Matlab que calcula la desviación estándar de los elementos de un vector

Crea un archivo (_script.m_) en tu carpeta de trabajo de Matlab con el siguiente código:

```matlab

% Programa que calcula la desviación estándar de los elementos de un vector

v = input('introduzca el vector: ');
n = length(v);
var = 0;

for i=1:n
  var=var+(v(i)-mean(v))^2;
end

desv=sqrt(var/(n-1));

if desv==std(v)
  disp('¡Comprobado con la función std!')
end

fprintf('La desviación estándar es %f\n', desv);


```
