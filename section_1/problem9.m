clc; clear;
volume = 14137.1669;
radius = 10.00;

fid = fopen('Results_of_Calculations.txt', 'w');
fprintf(fid, 'Volume of sphere: %.4f cm³\n', volume);
fprintf(fid, 'Radius of cylinder with same volume: %.2f cm\n', radius);
fclose(fid);
disp('Results saved to "Results_of_Calculations.txt"');