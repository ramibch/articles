% Definimos los vértices y caras de una pirámide
piramide.vertices=[-1 -1 0; 1 -1 0;0 1 0; 0 0 5];
piramide.faces=[1 2 3;1 2 4; 1 3 4; 2 3 4];
patch(piramide,'FaceColor',[0.5 0.5 0.5])
axis([-3 3 -3 3 -1 6])
xlabel('x')
ylabel('y')
zlabel('z')

% Número de minipiramides
n = 12;

% Distancia radial entre minipiramide y piramide
r = 2;

ang = linspace(0,2*pi*(1-1/n),n);

% Creamos mini piramides alrededor de la piramide
for i=1:n
  
  minipiramide.vertices=piramide.vertices.*1/3;
  minipiramide.faces=piramide.faces;
  minipiramide.vertices(:,1)=(minipiramide.vertices(:,1)+r*cos(ang(i)));
  minipiramide.vertices(:,2)=(minipiramide.vertices(:,2)+r*sin(ang(i)));
  
  hold on;
  patch(minipiramide,'FaceColor',[0.5 0.5 0.5])
end

% Guardamos la figura en una imagen
saveas(gcf,'piramide_y_minipiramides.png');