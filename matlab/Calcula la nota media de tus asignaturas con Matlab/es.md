# Calcula la nota media de tus asignaturas con Matlab

Crea un archivo (_script.m_) en tu carpeta de trabajo de Matlab con el siguiente código:

```matlab

% Limpiamos la consola
clc;

% Borramos todas la variables en el entorno de trabajo
clear all;

% Preguntamos al usuario el número de asignaturas que tiene
n = input('Introduce el numero de asignaturas: ');

% Inicializamos la variable de la suma de notas a cero
suma_notas = 0;

% Con un bucle 'for' preguntamos al usuario de nuevo por cada nota
for i=1:n
    nota=input(['Dime la nota de la asignatura  número ',num2str(i),': ']);
    while((nota<0) || (nota>10))
        % Si la nota tiene un valor no válido, informamos al usuario
        disp('La nota introducida no es válida.');
        nota=input(['Introduce la nota correcta de nuevo de la asignatura ',num2str(i),': ']);
    end
    % Acumulamos la nota en la variable "suma de notas"
    suma_notas = suma_notas + nota;
end

% Calculamos media 
media = suma_notas/n;

% Mostramos la media al usuario
disp(['La media es de ',num2str(media)]);

```
