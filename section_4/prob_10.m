%%prebaring workplace%%
clc; clear; close all

%%parameters and relations%%
h = 100;
v0 = 50;
g = 9.81; 

t = time(h, v0, g);

% Display the results
if length(t) == 1
    fprintf('The object reaches the height of %f meters at t = %f seconds.\n', h, t);
else
    fprintf('The object reaches the height of %f meters at t = %f seconds and t = %.2f seconds.\n', h, t(1), t(2));
end