clc; clear;
E = 200e9;  % Pa
F = 14e3;   % N
L = 1;      % m
d = 20e-3;  % m

I = pi/64 * d^4;
deflection = F * L^3 / (3 * E * I)  % Output: 0.0371 m (37.1 mm)

M = F * L;
stress = M * d / (2 * I)  % Output: 445.63 MPa