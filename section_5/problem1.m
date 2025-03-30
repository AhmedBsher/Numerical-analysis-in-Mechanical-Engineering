%% Problem 1: Solving ODEs with dsolve
clc; clear; close all;

%% Part a: y' = xy, y(1) = 1
syms y(x)
ode_a = diff(y,x) == x*y;
cond_a = y(1) == 1;
sol_a = dsolve(ode_a, cond_a);
disp('Solution to part a:'); 
pretty(sol_a)

% Plot solution
figure;
fplot(sol_a, [0 2]);
title('Solution to y'' = xy, y(1) = 1');
xlabel('x'); ylabel('y');
grid on;

%% Part b: y'' + 8y' + 2y = cos(x), y(0)=0, y'(0)=1
syms y(x)
ode_b = diff(y,x,2) + 8*diff(y,x) + 2*y == cos(x);
cond_b = [y(0) == 0, diff(y,x)(0) == 1];
sol_b = dsolve(ode_b, cond_b);
disp('Solution to part b:'); 
pretty(sol_b)

% Plot solution
figure;
fplot(sol_b, [0 10]);
title('Solution to y'''' + 8y'' + 2y = cos(x)');
xlabel('x'); ylabel('y');
grid on;