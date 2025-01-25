# Reemplazar cadena de caracteres en un archivo de texto con Matlab

En este artículo quiero explicar cómo podemos implementar la funcionalidad de buscar y remplazar una cadena de caracteres en archivos con un script de Matlab.

En el script debemos definir las variables como los nombres de archivos (el original y el modificado) y los strings antiguo y nuevo que se reemplazarán.

Seguidamente, se abrirán ambos archivos en la ejecución y se comprobará que no haya problema al abrirlos. Ten en cuenta que el archivo asociado a la variable _archivo_modificado_ se abrirá en modo apertura ("w").

Tras abrirse los archivos con éxito, el script lee línea a línea el archivo original con la función _fgetl_ de Matlab y se hace uso de la función de buscar y reemplazar _strrep_ para cambiar el valor de _string_antiguo_ por el valor de _string_nuevo_. El resultado se guarda en el archivo a modificar con _fprintf_.


Al final se cierran ambos archivos. 


```matlab
% script.m 

% Definimos variables necesarias
archivo_original = 'original.txt';
archivo_modificado = 'modificado.txt'; % No es necesario que exista
string_antiguo = 'casa';
string_nuevo = 'puerta';

% Abrimos los archivos
[idOri m] = fopen(archivo_original);
[idMod m1] = fopen(archivo_modificado,'w'); 

% Comprobamos que no hay error al abrir los archivos
if (idOri|idMod) ==-1
  disp('Ha habido un con alguno de los archivos');
else
	while ~feof(idOri)
  % Leemos línea a línea el archivo original con la función fgetl de Matlab
  % Y usamos la función de buscar y reemplazar strrep 
  s = strrep(fgetl(idOri), string_antiguo, string_nuevo);
  % Escribimos la línea generada en el archivo a modificar
  fprintf(idMod, '%s\n' , s);
  end
end

% Cerramos ambos archivos
fclose(idOri);
fclose(idMod);
```

Creamos un archivo con el nombre _original.txt_ con el siguiente contenido (ejemplo):


```
la casa
de la vecina
es más bonita
que mi casa
```

Al ejecutar el _script.m_ se creará el archivo _modificado.txt_ y veremos que se ha realizado el remplazo de las cadenas de caracteres que hemos definido en el script de Matlab (_script.m_). Es decir se ha cambiado la palabra "casa" por "puerta":



```
la puerta
de la vecina
es más bonita
que mi puerta
```

