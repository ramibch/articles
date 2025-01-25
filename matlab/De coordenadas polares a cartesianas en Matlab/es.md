# De coordenadas polares a cartesianas en Matlab

Crea un archivo (_script.m_) en tu carpeta de trabajo de Matlab con el siguiente código:

```matlab

% Dadas las coordenadas polares de un punto calcula sus coordenadas cartesianas

r = input('Introduce radio: ');
thetta = input('Introduce ángulo: ');

fprintf('La coordenada "x" es %f. Y la "y" es %f\n', r*cos(thetta), r*sin(thetta));

```
