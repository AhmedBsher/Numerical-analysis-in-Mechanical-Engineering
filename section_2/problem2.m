%% Problem 2: Special Matrices Creation
clc; clear; close all;

% Random sizes between given ranges
M = randi([3 6]);
N = randi([4 7]);

D = ones(M, N);  % M×N filled with ones
E = 3 * ones(M, M);  % M×M filled with threes
F = 5 * eye(N);  % N×N with fives on diagonal
G = zeros(N, M);  % N×M filled with zeros

disp(['M = ', num2str(M), ', N = ', num2str(N)]);
disp('D:'); disp(D);
disp('E:'); disp(E);
disp('F:'); disp(F);
disp('G:'); disp(G);