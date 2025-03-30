%% Part i
clc; clear;
a = 1; b = 2; c = 1.8;
x = log10(c) / log(a + b + c) + 2 * sinh(a) - 3 * tan(b);

%% Part ii
clc; clear;
x = 5 * pi / 6;
b = (tan(x) + sin(2*x)) / cos(x) + log(x^5 - x^2) + cosh(x) - 2 * tanh(x);

%% Part iii
clc; clear;
x = 5 + 8i; y = -6 + 7i;
z = exp(x);
r = sqrt(y);
s = x * y^2;