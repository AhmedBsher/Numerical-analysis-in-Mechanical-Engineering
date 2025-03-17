%%preb worksheet%%
clc;clear;close all

%%relations and variabels%%
t = 0:0.001:0.2 ;
x = (0.5 + 5*t) .* sin(2*pi/3 * t) .* cos(4*pi*t);
y = (0.5 + 5*t) .* sin(2*pi/3 * t) .* sin(4*pi*t) ;
z = (0.5 + 5*t) .* cos(2*pi/3 * t);

%%plotting%%
plot3(x, y, z, 'r', 'LineWidth', 1.5) % Plot the path in red solid line

% Add labels, legend, and title
xlabel('x (m)');
ylabel('y (m)');
zlabel('z (m)');
title('3D Path of the Robot Hand _ problem(9)');
grid on
