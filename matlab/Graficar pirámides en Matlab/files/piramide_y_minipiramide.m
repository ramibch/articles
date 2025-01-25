
% Definimos los vértices y caras de una pirámide
piramide.vertices=[-1 -1 0; 1 -1 0;0 1 0; 0 0 5];
piramide.faces=[1 2 3;1 2 4; 1 3 4; 2 3 4];
patch(piramide,'FaceColor',[0.5 0.5 0.5])
axis([-2 4 -2 2 -1 6])

% Definimos los vértices y caras de una mini pirámide
minipiramide.vertices=piramide.vertices.*1/3;
minipiramide.vertices(:,1)=minipiramide.vertices(:,1)+2;
minipiramide.faces=piramide.faces;
hold on; % Combinamos ambos tetraedros en una misma figura
patch(minipiramide,'FaceColor',[0.5 0.5 0.5])
% Guardamos la figura en una imagen
saveas(gcf,'piramide_y_minipiramide.png');