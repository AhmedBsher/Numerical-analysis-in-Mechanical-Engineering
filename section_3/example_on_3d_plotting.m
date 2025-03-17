%%prep worksheet%%
clc;clear;close all

%%plotting the relation between x , y and z in a 3d_plotting%%
xa = -2 : 0.2 : 2 ;
ya = -2 : 0.2 : 2 ;
[x,y] = meshgrid(xa,ya);
z = x .* exp(-x.^2 - y.^2);

subplot(321)
mesh(x,y,z) %Creates a 3D mesh surface plot.%
title( '(z=x .* exp(-x.^2 - y.^2)');
xlabel('x');
ylabel('y');
zlabel('z');

subplot(322)
meshc(x,y,z) %Same as mesh but draws contours under the surface.%
xlabel('x');
ylabel('y');
zlabel('z');

subplot(323)
meshz(x,y,z) %Same as mesh but draws vertical reference lines under the surface.%
xlabel('x');
ylabel('y');
zlabel('z');

subplot(324)
waterfall(x,y,z) %Same as mesh but draws mesh lines in one direction only.%
xlabel('x');
ylabel('y');
zlabel('z');

subplot(325)
surf(x,y,z) %Creates a shaded 3D mesh surface plot.%
xlabel('x');
ylabel('y');
zlabel('z');

%%countour line%%
zmax = max(max(z)) ; 
zmin = min(min(z)) ; 
k = 21 ;
dz = (zmax-zmin) / (k-1) ;
level = zmin : dz : zmax ;

%%countour plot%%
subplot(326)
h = contour (x , y , z , level); %Creates a contour plot%
xlabel('x');
ylabel('y');
grid on