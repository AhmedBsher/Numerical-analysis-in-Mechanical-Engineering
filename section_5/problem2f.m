%% Problem 2f: my'' + y'e^y - y^2 = 5, y(0)=3, y'(0)=-1
clc; clear; close all;

% Let's assume m = 1 for this problem
% Convert to system of first-order ODEs
ode_fun = @(t,y) [y(2); 
                 (5 + y(1)^2 - y(2)*exp(y(1)))]; % m=1

% Initial conditions and time span
y0 = [3; -1];
tspan = [0 10];

% Solve using stiff solver
[t_ode15s, y_ode15s] = ode15s(ode_fun, tspan, y0);

% Plot results
figure;
plot(t_ode15s, y_ode15s(:,1), 'b-', 'LineWidth', 2);
title('Solution to nonlinear second-order ODE');
xlabel('t'); ylabel('y(t)');
grid on;