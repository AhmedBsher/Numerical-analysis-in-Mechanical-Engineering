clc; clear;
beta_deg = input('Enter angle of wrap in degrees: ');
mu = input('Enter friction coefficient: ');
F2 = input('Enter F2 force in N: ');

beta_rad = deg2rad(beta_deg);
F1 = F2 * exp(mu * beta_rad);

fprintf('The force F1 is: %.2f N\n', F1);

% Test case (uncomment to run automatically):
% beta_deg = 130; mu = 0.3; F2 = 100;
% beta_rad = deg2rad(beta_deg);
% F1 = F2 * exp(mu * beta_rad)  % Output: 172.37 N