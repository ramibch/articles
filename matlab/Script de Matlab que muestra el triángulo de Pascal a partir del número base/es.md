# Script de Matlab que muestra el triángulo de Pascal a partir del número base

Crea un archivo (_script.m_) en tu carpeta de trabajo de Matlab con el siguiente código:

```matlab

% Programa que calcula el triángulo de Pascal a partir del número base

% https://es.wikipedia.org/wiki/Tri%C3%A1ngulo_de_Pascal

n = input('Introduzca valor deseado para hallar el triángulo de Pascal: ');

m = zeros(n,2*n+1);
m(1,n+1)=1;

for i=2:n
  for j=2:2*n
    m(i,j)=m(i-1,j-1)+m(i-1,j+1);
  end
end

m = m(:,2:end-1);
fprintf('El triángulo de Pascal correspondiente a %d es:\n',n);
disp(m);


```
