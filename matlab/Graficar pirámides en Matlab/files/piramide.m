% Creamos los vertices de la pirámide
piramide.vertices = [-1 -1 0;1 -1 0;0 1 0;0 0 5];
% Creamos sus caras
piramide.faces = [1 2 3;1 2 4;1 3 4;2 3 4];
% Graficamos con patch
patch(piramide, 'FaceColor', [0.5 0.5 0.5]);
axis([-1 1 -1 1 -1 6]);
% Guardamos la figura en una imagen
saveas(gcf,'piramide.png');


