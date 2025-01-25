# Calcular unidad de millar, centenas, decenas y unidades de un número de 4 cifras en Matlab

Crea un archivo (_script.m_) en tu carpeta de trabajo de Matlab con el siguiente código:

```matlab

% Limpiamos la consola
clc;

% Borramos todas la variables en El entorno de trabajo
clear all;

% Pedimos al usuario que introduzca el número
num = input('Introduce un número de cuatro cifras: ');

while ((num>9999)||(num<1000))
  num = input('ERROR! El número debe ser de cuatro cifras: ');
end

% Calculamos la unidad de millar
millares = fix(num/1000);

if (millares==1)
    disp('El número tiene 1 unidad de millar');
else 
    disp(['El número tiene ',num2str(millares), ' unidades de millar']);
end

% Calculamos las centenas
centenas_decenas_unidades = num - (millares*1000);
centenas = fix(centenas_decenas_unidades/100);

if (centenas == 1)
    disp('El número tiene 1 centena');
else
    disp(['El número tiene ',num2str(centenas), ' centenas']);
end

% Calculamos las decenas
decenas_unidades = num -(centenas * 100 + millares * 1000);
decenas = fix(decenas_unidades/10);

if (decenas == 1)
    disp('El número tiene 1 decena');
else
    disp(['El número tiene ',num2str(decenas), ' decenas']);
end

% Calculamos las unidades
unidades = num - (centenas * 100 + millares * 1000 + 10 * decenas);

if (unidades == 1)
    disp('El número tiene 1 unidad');
else
  disp(['El número tiene ',num2str(unidades), ' unidades']);
end


% Evaluamos El script:
% >> script
% introduce un número de cuatro cifras: 1234
% El número tiene 1 unidad de millar
% El número tiene 2 centenas
% El número tiene 3 decenas
% El número tiene 4 unidades


```
