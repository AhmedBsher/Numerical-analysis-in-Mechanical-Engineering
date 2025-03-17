%%prebaring workplace%%
clc; clear; close all

%%parameters and relations%%
A=[3 5 -4 ; -8 -1 33 ; -17 6 -9]

%%loop%%
for m=1:size(A,1);
    for n=1:size(A,2)
        if A(m,n) >= 1 
            B(m,n) = log(A(m,n))+20;
        else
            B(m,n) = A(m,n)
        end
    end
end

