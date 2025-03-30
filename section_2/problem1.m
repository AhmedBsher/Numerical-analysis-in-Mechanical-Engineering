%% Problem 1: Matrix Operations Predictions
clc; clear; close all;

%% Part a
clc; clear;
x = [3 1; 4 5];
y = [4 3];
% z = x*y^  % Error: Incomplete operation (missing exponent)
disp('Part a: Error - incomplete matrix operation');

%% Part b
clc; clear;
x = [3 1; 4 5];
y = [4 3];
z = y*x  % Valid multiplication: [4 3]*[3 1;4 5] = [24 19]
disp('Part b: z = [24 19]');

%% Part c
clc; clear;
x = [3 1; 4 5];
y = [4 3];
% z = y/x  % Requires square matrix and compatible dimensions
disp('Part c: Error - matrix dimensions must agree');

%% Part d
clc; clear x y;
x(3,3) = 3;  % Creates 3x3 matrix with x(3,3)=3, others=0
x = [1 4; 5 -3];  % Overwrites x with 2x2 matrix
% Z = x^  % Error: Incomplete operation
disp('Part d: Error - incomplete matrix operation');

%% Part e
clc; clear x y;
x = [1 4; 5 -3];
x(3,3) = 3;  % Makes x 3x3, new row/col filled with zeros
z = x(3,2)  % Returns 0 (element at 3rd row, 2nd column)
y = x(:,3)  % Returns 3rd column [0; 0; 3]
disp('Part e: z=0, y=[0;0;3]');

%% Part f
clc; clear x y;
x = [1 4; 5 -3];
x(3,3) = 1;  % Makes x 3x3, new elements=0 except x(3,3)=1
y = x(1,2:3)  % Returns [4 0] (1st row, columns 2-3)
% z = (x;[13] y)  % Error: invalid syntax
disp('Part f: y=[4 0], Error in z operation');