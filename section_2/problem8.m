%% Problem 8: Linear System Solution
clc; clear; close all;

% Coefficient matrix
A = [4.5 6.8 6 2;
     2 3 9.1 10;
     1 1 4 5.1;
     3 1 1 5];
 
% Right-hand side
b = [51; 5; 5.9; 7.5];

% Solve system
x = A\b;
disp('Solution:'); disp(x);