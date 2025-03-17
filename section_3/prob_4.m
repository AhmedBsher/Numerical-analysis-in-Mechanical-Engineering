%%preb worksheet%%
clc;clear;close all

%%relations and variabels%%
x = -2:0.01:4; %a range for x
y = x.^3 - 3*x.^2 + 5*x .* sin((pi*x)/4 - (5*pi)/4) + 3; %the function

%%plotting%%
plot(x, y, 'b-', 'LineWidth', 1.5) % Plot the function in red solid line
hold on
plot(x, zeros(size(x)), 'k--'); % Plot y = 0 for reference

% Add labels, legend, and title
xlabel('x');
ylabel('f(x)');
title('Plot of f(x) = x^3 - 3x^2 + 5xsin(\pix/4 - 5\pi/4) + 3 _ problem(4)');
grid on;
legend('the function' , ...
    'y = 0 for reference');
