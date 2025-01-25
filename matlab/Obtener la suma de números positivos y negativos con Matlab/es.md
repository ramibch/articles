# Obtener la suma de números positivos y negativos con Matlab

Crea un archivo (_script.m_) en tu carpeta de trabajo de Matlab con el siguiente código:

```matlab

% Limpiamos la consola
clc;

% Borramos todas la variables en el entorno de trabajo
clear all;

% Pedimos al usuario que introduzca un número
num = input('Introduce numero (0 para finalizar): ');

% Inializamos variables de suma
suma_positivos=0;
suma_negativos=0;

% Paramos el programa cuando el usuario introduzca un cero
while num~=0
    % Acumulamos la suma dependiendo si el número es negativo o positivo
    if(num>0)
        suma_positivos = suma_positivos + num;
    else
        suma_negativos = suma_negativos + num;
    end
    num = input('Introduce  numero (0 para finalizar): ');
end

disp(['La suma de los numeros positivos introducidos es de ',num2str(suma_positivos)]);
disp(['La suma de los numeros negativos introducidos es de ',num2str(suma_negativos)]);

% Al Ejecutar el script tenemos:
% >> script 
% Introduce numero (0 para finalizar): 3
% Introduce  numero (0 para finalizar): -5
% Introduce  numero (0 para finalizar): 4
% Introduce  numero (0 para finalizar): -5
% Introduce  numero (0 para finalizar): 0
% La suma de los numeros positivos introducidos es de 7
% La suma de los numeros negativos introducidos es de -10

```
