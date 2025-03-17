%%preb worksheet%%
clc;clear;close all

%%relations and variabels%%
t = 0:0.01:20;
r=25+30*(1-exp(sin(0.07*t)));
theta=2*pi*(1-exp(-0.2*t));

%%plotting%%
polar(theta,r)

% Add labels, legend, and title
title('Squirrel Trajectory (m)')
