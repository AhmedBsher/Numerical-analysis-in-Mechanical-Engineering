%% Problem 2c: System of ODEs
clc; clear; close all;

% Define system of ODEs
ode_system = @(t,y) [y(2)*y(3); 
                    -y(1)*y(3); 
                    -0.51*y(1)*y(2)];

% Initial conditions and time span
y0 = [0; 1; 1];
tspan = [0 10];

% Solve using different solvers
[t_ode45, y_ode45] = ode45(ode_system, tspan, y0);
[t_ode23, y_ode23] = ode23(ode_system, tspan, y0);
[t_ode15s, y_ode15s] = ode15s(ode_system, tspan, y0);

% Plot results
figure;
subplot(3,1,1);
plot(t_ode45, y_ode45(:,1), title('y_1(t)');
subplot(3,1,2);
plot(t_ode45, y_ode45(:,2), title('y_2(t)');
subplot(3,1,3);
plot(t_ode45, y_ode45(:,3), title('y_3(t)');
sgtitle('Solution to system of ODEs using ode45');