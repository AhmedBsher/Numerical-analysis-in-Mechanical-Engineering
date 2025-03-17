%%preb worksheet%%
clc;clear;close all

%%relations and variabels%%
Year = 2000:1:2004;
Temp = [21 18 19 20 17];

%%plotting%%
bar(Year,Temp,'r')

% Add labels, legend, and title
title('average temperature for each year in a certain city _ problem(8)')
xlabel('Year')
ylabel('Temperature in Celsius')
grid on