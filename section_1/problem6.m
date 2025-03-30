clc; clear;
x_deg = 45;
x_rad = deg2rad(x_deg);

%% Part a
LHS_a = tan(3 * x_rad);
RHS_a = (3*tan(x_rad) - tan(x_rad)^3) / (1 - 3*tan(x_rad)^2);
disp(['LHS_a: ', num2str(LHS_a), ', RHS_a: ', num2str(RHS_a)]);  % Both approach infinity (tan(135°))

%% Part b
LHS_b = cos(4 * x_rad);  % Output: -1 (cos(180°))
RHS_b = 8 * (cos(x_rad)^4 - cos(x_rad)^2) + 1;  % Output: -1
disp(['LHS_b: ', num2str(LHS_b), ', RHS_b: ', num2str(RHS_b)]);