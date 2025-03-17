%%preb worksheet%%
clc;clear;close all

%%relations and variabels%%
t = 0:0.02:10 ; % Time from 0 to 10 seconds with step 0.02
x = 10 * exp(-0.5*t) .* sin(3*t+2);
y = 7 * exp(-0.4*t) .* cos(5*t-3);

%%plotting%%
plot(t , x , '-r') % Plot x(t) in red solid line
hold on
plot(t , y , '--b') % Plot y(t) in blue dashed line

% Add labels, legend, and title
xlabel('Time (t)');
ylabel('Amplitude , x(t) and y(t)');
legend('x = 10e^{-0.5t}sin(3t+2)' , ...
    'y = 7e^{-0.4t}cos(5t-3)');
title('Oscillations in Electric Circuits and Vibrations of Machines _ problem(3)')
grid on