%% Problem 6: Worker Data Analysis
clc; clear; close all;

% Data
wage = [5, 5.5, 6.5, 6, 6.25];
hours = [40, 43, 37, 50, 45];
output = [1000, 1100, 1000, 1200, 1100];

% a. Weekly earnings
earnings = wage .* hours;
disp('Weekly earnings:'); disp(earnings);

% b. Total salary
total_salary = sum(earnings);
disp('Total salary:'); disp(total_salary);

% c. Total widgets
total_widgets = sum(output);
disp('Total widgets:'); disp(total_widgets);

% d. Average cost per widget
avg_cost = total_salary / total_widgets;
disp('Average cost per widget:'); disp(avg_cost);

% e. Average hours per widget
avg_hours = sum(hours) / total_widgets;
disp('Average hours per widget:'); disp(avg_hours);

% f. Efficiency (widgets per hour)
efficiency = output ./ hours;
[~, most_eff] = max(efficiency);
[~, least_eff] = min(efficiency);
disp(['Most efficient: Worker ', num2str(most_eff)]);
disp(['Least efficient: Worker ', num2str(least_eff)]);