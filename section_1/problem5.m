clc; clear;
%% Part a
do = 100; dt = 40;
area = pi/4 * (do^2 - dt^2)  % Output: 6597.3446 mm²

%% Part b
sigma_x = 100; sigma_y = 80; tau_xy = 52;
stress = (sigma_x + sigma_y)/2 + sqrt(((sigma_x - sigma_y)/2)^2 + tau_xy^2)  % Output: 144.2215 MPa