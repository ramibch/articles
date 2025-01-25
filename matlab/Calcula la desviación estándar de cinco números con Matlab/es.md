# Calcula la desviación estándar de cinco números con Matlab

Crea un archivo (_script.m_) en tu carpeta de trabajo de Matlab con el siguiente código:

```matlab

% Programa que calcule la desviación estándar de cinco números

% Bucle para preguntar al usuario
for i=1:5
    x(i)=input(['Introcuce el número ',num2str(i),': ']);
end

% Bucle para realizar la sumatoria
suma=0;
for i=1:5
   suma=suma+(x(i)-mean(x))^2;
end

% Mostramos la desviación estándar
fprintf('La desviación estándar es %f\n', sqrt(1/4*suma))


```
