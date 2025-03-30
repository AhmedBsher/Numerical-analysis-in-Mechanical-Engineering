%% Problem 4: Matrix Creation with Single Command
clc; clear; close all;

% Create matrix F with one command
F = [zeros(4,2), [0 0 0 0; 1 10 20 0; 2 8 26 0; 3 6 32 0]'];
F = F(1:4,1:5);  % Trim to correct size

disp('Matrix F:'); disp(F);