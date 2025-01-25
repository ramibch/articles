# El juego de 3 en raya con un script de Matlab

Crea un archivo (_script.m_) en tu carpeta de trabajo de Matlab con el siguiente código:

```matlab

jug='x';
parada=0;
A=repmat(' ',3,3);
contador=0;
jugando=0;

while parada==0
	if jug=='x'
	jug='o';
	else;
	jug='x';
	end
	fprintf ('Turno del jugador %s \n', jug);
	fila=input ('Introduzca la fila donde desea colocar la ficha: ');
	columna=input ('Introduzca la comumna donde desea colocar la ficha: ');

	if A(fila,columna)==' '
	A(fila,columna)=jug;
	contador=contador+1;
 
	fprintf('\n Tablero:\n')
	for i=1:3
	fprintf('%s %s %s\n',A(i,1),A(i,2),A(i,3))
	end
    	fprintf('\n')

	for i=1:3
		if sum(A(i,:)==jug)==3
		  parada=jug;
		end
		if sum(A(:,i)==jug)==3
		  parada=jug;
		end
		if sum(diag(A)=='o')==3
		  parada=jug;
		end
		if sum(diag(fliplr(A))=='o')==3
		  parada=jug;
		end
	end

	if contador==9 && parada==0
	parada=3;
	end
	else
	fprintf ('Esa casilla estaba ocupada, pierdes el turno \n')
	end
	if parada=='x'
	jugando=0;
	fprintf ('Gana el jugador "x" \n')
	end
	if parada=='o'
	jugando=0;
	fprintf ('Gana el jugador "o" \n')
	end
	if parada==3 
	jugando=0;
	fprintf ('Ninguno ha ganado \n')
	end
end


```
