%%prebaring workplace%%
clc; clear; close all

%%parameters and relations%%

% Initial parameters
initial = 10000;
years = 0;

%%loop%%
while initial < 1000000
    years = years + 1; 
    initial = initial * 1.06 + 10000;
end

%%Display the result%%
fprintf('It will take %d years to accumulate $1,000,000 and the amount of money will be %d.\n', years, initial);


