%%prebaring workplace%%
clc; clear; close all

%%loop%%
for M=3:6;
    for N=4:7;
         if N==M
           D=ones(M,N)
           E=3*ones(M,M)
           F=5*eye(N,N)
           G=zeros(N,M)
         end
    end
end