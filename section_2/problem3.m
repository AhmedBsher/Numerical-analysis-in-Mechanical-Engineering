%% Problem 3: Matrix Creation with Vector Notation
clc; clear; close all;

% First row: decreasing by 20 from 130 to 10
row1 = 130:-20:10;

% Second row: linear spacing from 1 to 12 with 7 points
row2 = linspace(1, 12, 7);

% Third row: increasing by 10 from 12 to 72
row3 = 12:10:72;

A = [row1; row2; row3];
disp('Matrix A:'); disp(A);