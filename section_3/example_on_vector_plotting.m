clc; clear, close all
xm = -0.9 : 0.1 : 0.9 ;
ym = -0.9 : 0.1 : 0.9 ;
[x,y] = meshgrid(xm,ym) ;
u = -0.1*(2*y)./(x.^2+y.^2) ;
v = -0.1*(-2*x)./(x.^2+y.^2) ;
quiver(x,y,u,v,1.5) ;
title('Velocity vector plot offree vortex')
xlabel('x') ; ylabel('y')
axis('square')