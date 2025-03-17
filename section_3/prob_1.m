%%preb worksheet%%
clc;clear;close all

%%relations and variabels%%
x = linspace(0, 2, 1000);
y_1 = cosh(x) ;
y_2 = .5 .* exp(x);

%%plotting%%
plot(x , y_1 , '-r') % Plot y = cosh(x) in red solid line
hold on
plot(x , y_2 , '--b') % Plot y = cosh(x) in blue dashed line

% Add labels, legend, and title
xlabel('x');
ylabel('y');
legend('y = cosh(x)' , 'y = 0.5e^x')
title('Plot of y = cosh(x) and y = 0.5e^x _ problem 1')
grid on
