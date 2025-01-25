# Script de Matlab que calcula los 4 primeros números perfectos

Crea un archivo (_script.m_) en tu carpeta de trabajo de Matlab con el siguiente código:

```matlab

% Programa que calcula los 4 primeros números perfectos (cant=4)

perf = 1;
cont = 1;
num = 2;
cant = 4;

while length(perf)<cant
  d = 1:num/2;
  div = d(mod(num,d)==0);

  if num == sum(div)
    perf(cont) = num;
    cont = cont + 1;
  end
  num = num + 1;
end

disp(['Los ',num2str(cant),' primeros números perfectos son: ',num2str(perf)])


```
