%% Problem 7: Cable Tension Optimization
clc; clear; close all;

% Constants
W = 400; Lb = 3; Lc = 5;

% a. Find D that minimizes T
D = linspace(0.1, Lb-0.1, 1000);  % Avoid division by zero
T = (Lb * Lc * W) ./ (D .* sqrt(Lb^2 - D.^2));
[min_T, idx] = min(T);
opt_D = D(idx);
disp(['Optimal D: ', num2str(opt_D), ' m']);
disp(['Minimum T: ', num2str(min_T), ' N']);

% b. Sensitivity analysis
figure;
plot(D, T);
xlabel('D (m)'); ylabel('Tension T (N)');
title('Tension vs Cable Attachment Point');
grid on;

% Find D range where T < 1.1*min_T
valid_D = D(T < 1.1*min_T);
D_range = [min(valid_D), max(valid_D)];
disp(['D can vary between ', num2str(D_range(1)), ' and ', ...
    num2str(D_range(2)), ' m before T increases 10%']);