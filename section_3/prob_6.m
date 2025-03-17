%%preb worksheet%%
clc;clear;close all

%%relations and variabels%%
a = 2;
theta = 0:0.01:4*pi ;
r = a .* theta;

%%plotting%%
polar(theta,r)

% Add labels, legend, and title
title('The spiral of Archimedes _ problem 6')
