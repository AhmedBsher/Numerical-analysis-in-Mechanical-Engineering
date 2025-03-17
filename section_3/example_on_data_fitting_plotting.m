clc; clear , close all
a=[ 0 2 ; 0.5 4 ; 1 3 ;...
1.5 7 ; 2 11 ; 2.5 10 ;...
3 8 ; 3.5 6 ; 4 2 ;...
4.5 1 ; 5 1 ];
x = a(:,1) ; y = a(:,2) ;
plot(x , y , '+--b','linewidth',1.5)
xlabel('x') ; ylabel('y') ;
legend('Data points')
grid on
%----------------------------
b = polyfit(x,y,length(x)-1);
xi = 0:0.01:5 ;
yi = polyval(b,xi) ;
hold on
plot(xi,yi,'r','linewidth',1.5)
legend('Data points','Fitted polynomial')
