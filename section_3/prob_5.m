%%preb worksheet%%
clc;clear;close all

%%relations and variabels%%
R = 286.7; % Gas constant in N·m/(kg·K)
T = 293; % Temperature in Kelvin
V = 20:0.01:100; %range for volume in m^3
%masses
m1 = 1 ;
m2 = 3 ;
m3 = 7 ;
%pressures for each mass
p1 = (m1 * R * T) ./ V;
p2 = (m2 * R * T) ./ V;
p3 = (m3 * R * T) ./ V;

%%plotting%%
plot(V, p1, '-r', 'linewidth', 1.5 ) % Plot for m=1 in red solid line
hold on
plot(V, p2, '--b', 'linewidth', 1.5) % Plot for m=3 in blue dashed line
hold on
plot(V, p3, '-.y', 'linewidth', 1.5 ) % Plot for m=7 in dash-dotted line

% Add labels, legend, and title
xlabel('Volume (V) [m^3]');
ylabel('Pressure (p) [N/m^2]');
title('Pressure vs Volume for Different Masses _ problem(5)');
legend('m=1', 'm=3', 'm=7');
grid on;

