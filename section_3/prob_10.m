%%preb worksheet%%
clc;clear;close all

%%relations and variabels%%
[x, y] = meshgrid(0:0.1:1, 0:0.01:1); % Grid from 0 to 2 with 0.01 spacing
T = 80 * exp(-(x - 1).^2) .* exp(-3 * (y - 1).^2);

%%plotting%%
subplot(211)
surf(x, y, T); % Create a surface plot
% Add labels, legend, and title
xlabel('x');
ylabel('y');
zlabel('Temperature (T)');
title('Surface Plot of Temperature Distribution');

%%countour plot%%
subplot(212)
contour (x , y , T ); %Creates a contour plot%
% Add labels, legend, and title
xlabel('x');
ylabel('y');
title('Contour Plot of Temperature Distribution');
grid on

% Temperature at the corner x = y = 0
T (1,1)