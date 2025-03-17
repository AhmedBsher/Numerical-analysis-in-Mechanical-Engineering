%%prebaring workplace%%
clc; clear; close all

%%parameters and relations%%
sum = 0;
k = 0;

%%loop%%
while sum < 2000
    k = k + 1;
    sum = 2^k + sum;
end

disp('The number of terms is:')
disp(k)
disp('The sum is:')
disp(sum)


