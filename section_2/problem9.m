%% Problem 9: Roots and Derivatives
clc; clear; close all;

%% Part a
syms y;
eqn_a = y^3 + 32*y^2 + y - 127 == 0;
roots_a = solve(eqn_a, y);
deriv_a = diff(y^3 + 32*y^2 + y - 127);
disp('Roots of part a:'); disp(double(roots_a));
disp('Derivative of part a:'); disp(deriv_a);

%% Part b
syms d;
eqn_b = 3*d^4 + 2*d^3 + d^2 - 65 == 0;
roots_b = solve(eqn_b, d);
deriv_b = diff(3*d^4 + 2*d^3 + d^2 - 65);
disp('Roots of part b:'); disp(double(roots_b));
disp('Derivative of part b:'); disp(deriv_b);