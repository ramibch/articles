# Obtener número de caracteres en un archivo con Matlab

Crea un archivo (_script.m_) en tu carpeta de trabajo de Matlab con el siguiente código:

```matlab

% Limpiamos la consola y borramos variables en el entorno de trabajo
clc; clear all;

% Definimos un nombre de archivo
% Éste debe encontrarse en el mismo directorio que este script.
nombre_archivo = 'ejemplo.txt';

% Abrimos el archivo y guardamos su id en la variable id_archivo
id_archivo = fopen(nombre_archivo, 'r');

% Comprobamos que se ha abierto correctamente.
if(id_archivo~=-1)
    % Creamos un vector del 1 al 255 que corresponden a los códigos ASCII de carácteres
    frecuencias = zeros(1,255);
    
    % Iteramos mientras el cursor no se encuentre al final del archivo
    while(~feof(id_archivo))
        % Leemos un carácter
        caracter = fscanf(id_archivo, '%c', 1);
        % Incrementamos su valor en el vector de frecuencias
        frecuencias(caracter) = frecuencias(caracter) + 1;
    end
    
    % Cerramos el archivo
    fclose(id_archivo);
    
    % Obtenemos la frecuencia máxima de los códigos ASCCI
    frecuencia_max = max(frecuencias);
    % Vemos dónde se encuentra ese máximo (o máximos) en el vector
    posicion_max = find(frecuencias==frecuencia_max);
    % Hacemos uso de la función char para obtener su presentación en carácter
    caracter_max = char(posicion_max);
    
    % Reportamos al usuario los resultados
    disp(['El carácter que más se repite es el "',caracter_max, ...
    '" con una frecuencia de aparición ', num2str(frecuencia_max)]);
    
else
    % Si el archivo no se ha abierto correctamente, informamos al usuario
    disp('Error en la apertura del archivo.');
end


% Uso del script:

% Supongamos que tenemos un archivo llamado "ejemplo.txt" con el siguiente contenido:
% Holaaaa Qué taaal?

% Ejecutamos el script y obtenemos el resultado:
% >> script
% El carácter que más se repite es el "a" con una frecuencia de aparición 7



```
