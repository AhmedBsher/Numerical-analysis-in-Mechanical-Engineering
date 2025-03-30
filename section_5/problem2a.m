%% Problem 2a: y' = ty + y, y(0)=1, t∈[0,0.5] 
clc; clear; close all;

% Define ODE function
ode_fun = @(t,y) t*y + y;

% Initial conditions and time span
y0 = 1;
tspan = [0 0.5];

% Solve using different solvers
[t_ode45, y_ode45] = ode45(ode_fun, tspan, y0);
[t_ode23, y_ode23] = ode23(ode_fun, tspan, y0);
[t_ode113, y_ode113] = ode113(ode_fun, tspan, y0);

% Plot results
figure;
plot(t_ode45, y_ode45, 'b-', 'LineWidth', 2); hold on;
plot(t_ode23, y_ode23, 'r--', 'LineWidth', 2);
plot(t_ode113, y_ode113, 'g:', 'LineWidth', 2);
title('Solution to y'' = ty + y using different solvers');
xlabel('t'); ylabel('y');
legend('ode45', 'ode23', 'ode113');
grid on;

% Create Simulink model programmatically (requires Simulink)
if exist('simulink') == 2
    model = 'problem2a_model';
    new_system(model);
    open_system(model);
    
    % Add blocks
    add_block('simulink/Continuous/Integrator', [model '/Integrator']);
    add_block('simulink/Math Operations/Product', [model '/Product']);
    add_block('simulink/Sources/Clock', [model '/Clock']);
    add_block('simulink/Sinks/Scope', [model '/Scope']);
    
    % Connect blocks
    add_line(model, 'Clock/1', 'Product/1');
    add_line(model, 'Integrator/1', 'Product/2');
    add_line(model, 'Product/1', 'Integrator/1');
    add_line(model, 'Integrator/1', 'Scope/1');
    
    % Set parameters
    set_param([model '/Integrator'], 'InitialCondition', '1');
    save_system(model);
    close_system(model);
    disp('Simulink model created. Run it manually.');
end