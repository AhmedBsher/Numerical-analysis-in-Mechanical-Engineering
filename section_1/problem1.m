%% Part a
clc; clear;
x = 3;
Y = x^2 + 3*x + 7  % Output: Y = 25

%% Part b
% Incorrect due to case sensitivity (Clc, Clear) and undefined variable 'x'
% Corrected version:
clc; clear;
X = 3;
Y = X^2 + 3*X + 7  % Output: Y = 25

%% Part c
clc; clear;
x = 3;
Y = x^2 + 3*x + 7;  % No output due to semicolon

%% Part d
clc; clear;
x = 3;
clear x;  % Clears x, causing error in next line
% Y = x^2 + 3*x + 7;  % Error: x undefined
% Z = 2*Y;  % Error: Y undefined

%% Part e
clc; clear;
X = 3;  % X is defined but not used
x = 3;
Y = x^2 + 3*x + 7  % Output: Y = 25
% Z = 2*Y^2  % Error: Missing operator (should be 2*Y^2)

%% Part f
clc; clear;
x = 3  % Output: x = 3
Y = x^2 + 3*x + 7;  % No output
Z = 2*Y  % Output: Z = 50