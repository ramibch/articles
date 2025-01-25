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