%%prebaring workplace%%
clc; clear; close all

%%parameters and relations%%
A=[3 5 -4 ; -8 -1 33 ; -17 6 -9]

%%code%%
B = (A >= 1)
A(B) = log(A(B))+20;
A

