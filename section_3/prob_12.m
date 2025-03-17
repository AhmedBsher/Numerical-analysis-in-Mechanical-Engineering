%%preb worksheet%%
clc;clear;close all

%%relations and variabels%%
t = 0:1:10; 
T = [72.5 78.1 86.4 92.3 110.6 111.5 109.3 110.2 110.5 109.9 110.2];

%%plotting%%
plot(t , T , '+--r', 'linewidth',1.5)
% Add labels, legend, and title
xlabel('Time (t) [sec]');
ylabel('Temperature (T) [°F]');
title('Temperature vs Time');
legend('Data points')
grid on

%%data fitting%%
b = polyfit(t,T,8);
ti = 0:0.01:5 ;
Ti = polyval(b,ti) ;
hold on
plot(ti,Ti,'r','linewidth',1.5)
legend('Data points','Fitted polynomial')

% b) Estimate temperature at specific times
t_estimate = [0.6, 2.5, 4.7, 8.9]; % Times to estimate
T_estimate = polyval(b, t_estimate); % Evaluate the polynomial at t_estimate

% Display the estimated temperatures
disp('Estimated Temperatures:');
disp([t_estimate; T_estimate]');

% Highlight the estimated points on the plot
plot(t_estimate, T_estimate, 'kx', 'MarkerSize', 10, 'LineWidth',...
    2, 'DisplayName', 'Estimated Points');

