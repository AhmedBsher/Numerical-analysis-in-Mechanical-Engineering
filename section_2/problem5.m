%% Problem 5: Matrix Operations
clc; clear; close all;

A = [3 7 -4 12; -5 9 10 2; 6 13 8 11; 15 5 4 1];

% a. Sort each column
B = sort(A, 1);
disp('Sorted columns (B):'); disp(B);

% b. Sort each row
C = sort(A, 2);
disp('Sorted rows (C):'); disp(C);

% c. Sum of each column
D = sum(A, 1);
disp('Column sums (D):'); disp(D);

% d. Sum of each row
E = sum(A, 2);
disp('Row sums (E):'); disp(E);

% e. Max and min values
col_max = max(A);
col_min = min(A);
row_max = max(A, [], 2);
row_min = min(A, [], 2);
disp('Column maxima:'); disp(col_max);
disp('Column minima:'); disp(col_min);
disp('Row maxima:'); disp(row_max);
disp('Row minima:'); disp(row_min);

% f. Element-wise operations
first_row_A = A(1,:);
first_three_B3 = B(1:3,3);
element_div = first_row_A(1:3) ./ first_three_B3';
element_mult = first_row_A(1:3) .* first_three_B3';
sum_result = sum(element_div) + sum(element_mult);
disp('Element-wise operations result:'); disp(sum_result);