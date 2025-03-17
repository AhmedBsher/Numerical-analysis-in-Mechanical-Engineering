%%prebaring workplace%%
clc; clear; close all

%%parameters and relations%%
A=30 ;
v_o=40 ;
g = 9.8 ;
t_hit = 2*(v_o/g)*sind(A) ;
t = linspace(0,t_hit,100) ;
h = v_o .* t .* sind(A) - 0.5 .* g .* t.^2 ;
v = sqrt(v_o.^2 - 2 .* v_o .* g .* t .* sind(A) + g.^2 * t.^2) ;
times_above_15 = t(h >= 15);

%%Display the times%%
disp('Times when height is no less than 15 meters:');
disp(times_above_15);