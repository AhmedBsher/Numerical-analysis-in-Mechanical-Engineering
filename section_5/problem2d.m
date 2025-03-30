%% Problem 2d: y' = -ty/sqrt(2-y^2), y(0)=1, t∈[0,0.5]
clc; clear; close all;

% Define ODE function
ode_fun = @(t,y) -t*y/sqrt(2-y^2);

% Initial conditions and time span
y0 = 1;
tspan = [0 0.5];

% Solve using different solvers
[t_ode45, y_ode45] = ode45(ode_fun, tspan, y0);
[t_ode23, y_ode23] = ode23(ode_fun, tspan, y0);

% Plot results
figure;
plot(t_ode45, y_ode45, 'b-', 'LineWidth', 2); hold on;
plot(t_ode23, y_ode23, 'r--', 'LineWidth', 2);
title('Solution to y'' = -ty/\surd(2-y^2)');
xlabel('t'); ylabel('y');
legend('ode45', 'ode23');
grid on;