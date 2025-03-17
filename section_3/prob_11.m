%%preb worksheet%%
clc;clear;close all

%%relations and variabels%%
x = -1 : 0.1 : 1 ;
y = -1 : 0.1 : 1 ;
Vx = (-0.5 * y) ./ (x.^2 + y.^2);
Vy = (0.5 * x) ./ (x.^2 + y.^2); 

%%plotting%%
quiver(x, y, Vx, Vy); % Plot velocity vectors

% Add labels, legend, and title
xlabel('x');
ylabel('y');
title('Velocity Vector Field of a Free Vortex Plane Potential Flow');
axis equal;
grid on;