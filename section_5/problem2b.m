%% Problem 2b: dy/dx = xy^2 + y, y(0)=1, x∈[0,0.5]
clc; clear; close all;

% Define ODE function
ode_fun = @(x,y) x*y^2 + y;

% Initial conditions and time span
y0 = 1;
xspan = [0 0.5];

% Solve using different solvers
[x_ode45, y_ode45] = ode45(ode_fun, xspan, y0);
[x_ode23, y_ode23] = ode23(ode_fun, xspan, y0);
[x_ode15s, y_ode15s] = ode15s(ode_fun, xspan, y0);

% Plot results
figure;
plot(x_ode45, y_ode45, 'b-', 'LineWidth', 2); hold on;
plot(x_ode23, y_ode23, 'r--', 'LineWidth', 2);
plot(x_ode15s, y_ode15s, 'g:', 'LineWidth', 2);
title('Solution to dy/dx = xy^2 + y using different solvers');
xlabel('x'); ylabel('y');
legend('ode45', 'ode23', 'ode15s');
grid on;