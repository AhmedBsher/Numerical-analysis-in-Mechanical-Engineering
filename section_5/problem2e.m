%% Problem 2e: x'' + (x^2-1)x' + x = 0, x(0)=0, x'(0)=0.25
clc; clear; close all;

% Convert to system of first-order ODEs
ode_fun = @(t,y) [y(2); 
                 (1-y(1)^2)*y(2) - y(1)];

% Initial conditions and time span
y0 = [0; 0.25];
tspan = [0 20];

% Solve using different solvers
[t_ode45, y_ode45] = ode45(ode_fun, tspan, y0);
[t_ode23, y_ode23] = ode23(ode_fun, tspan, y0);

% Plot results
figure;
plot(t_ode45, y_ode45(:,1), 'b-', 'LineWidth', 2);
title('Solution to Van der Pol-like equation');
xlabel('t'); ylabel('x(t)');
grid on;