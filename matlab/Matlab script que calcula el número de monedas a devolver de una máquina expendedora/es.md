# Matlab script que calcula el número de monedas a devolver de una máquina expendedora

Crea un archivo (_script.m_) en tu carpeta de trabajo de Matlab con el siguiente código:

```matlab

% Programa que devuelve el menor número de monedas en una máquina expendedora
% Sólo se aceptan múltiplos de 5 (moneda mínima 0,05€ = 5 cents)

introducido = -1;
valor = 0;

while introducido < valor
  
  introducido = input('Importe introducido (cents): ');

	while rem(introducido,5)~=0
	    introducido = input('Importe no válido. Importe introducido (cents): ');
	end
  
	valor = input('Introduzca el precio del producto (cents): ');
	
  if introducido < valor
	  disp('¡El valor introducido debe ser mayor o igual al precio del producto!')
	end
  
end

resto = introducido - valor;

monedas = [0 0 0 0 0 0];
cant = [200 100 50 20 10 5];
cont = 1;

while resto > 0
  monedas(cont) = floor(resto/cant(cont));
  resto = rem(resto, cant(cont));
  cont = cont + 1;
end

fprintf('Monedas a devolver:  \n %d de 2€, \n %d de 1€, \n %d de 50cent, \n %d de 20cent, \n %d de 10cent, \n y %d de 5cent.\n', monedas(1), monedas(2), monedas(3), monedas(4), monedas(5),monedas(6))

```
