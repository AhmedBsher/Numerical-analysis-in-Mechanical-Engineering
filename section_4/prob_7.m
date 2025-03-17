%%prebaring workplace%%
clc; clear; close all

%%parameters and relations%%
theta = linspace(0, 2*pi, 100);

%%loop%%
for i = 1:100
    if theta(i) >= 0 && theta(i) <= pi/2
        y(i) = 6 * (2 * theta(i) - 0.5 * sin(theta(i))) / pi;
    elseif theta(i) > pi/2 && theta(i) <= 2*pi/3
        y(i) = 6;
    elseif theta(i) > 2*pi/3 && theta(i) <= 4*pi/3
        y(i) = 6 - 3 * (1 - 0.5 * cos(3 * (theta(i) - 2*pi/3)));
    elseif theta(i) > 4*pi/3 && theta(i) <= 3*pi/2
        y(i) = 3;
    elseif theta(i) > 3*pi/2 && theta(i) <= 7*pi/4
        y(i) = 3 - 1.5 * ((theta(i) - 3*pi/2) / (pi/4))^2;
    elseif theta(i) > 7*pi/4 && theta(i) <= 2*pi
        y(i) = 0.75 - 0.75 * (1 - (theta(i) - 7*pi/4) / (pi/4))^2;
    end
end

%%Plotting%%
plot(theta, y, 'r-', 'LineWidth', 1.5);
xlabel('Angle of Rotation \theta (radians)');
ylabel('Displacement y (cm)');
title('Cam Displacement Profile');
grid on;