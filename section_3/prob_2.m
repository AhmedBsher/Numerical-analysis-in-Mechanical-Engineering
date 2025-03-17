%%preb worksheet%%
clc;clear;close all

%%relations and variabels%%
t = 0:0.01:8 ; % points between 0 and 8 for t
v = -8:0.01:8 ; % points between -8 and 8 for v
z = exp(-0.5 .* t) .* cos(20*t-6);
u = 6 * log10(v.^2 + 20);

%%plotting%%
%plot 1%
subplot(211)
plot(t , z , '-r') % Plot z(t) in red solid line
% Add labels, legend, and title
xlabel('Time (t)');
ylabel('z(t)');
legend('e^{-0.5t}cos(20t-6)')
title('relation between t and z : e^{-0.5t}cos(20t-6)')
grid on

%plot 2%
subplot(212)
plot(v , u , '--b') % Plot u(v) in blue dashed line
% Add labels, legend, and title
xlabel('v');
ylabel('u(v)');
legend('6log_{10}(v^2+20)')
title('relation between v and u : 6log_{10}(v^2+20)')
grid on