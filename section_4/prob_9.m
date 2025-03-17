%%prebaring workplace%%
clc; clear; close all

%%call the function%%
for i = [35, 50, 100]
    Tc = f_to_c(i);
    fprintf('%f°F is equal to %f°C \n', i, Tc);
end