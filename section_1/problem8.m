clc; clear;
radius_sphere = 15;  % cm
height_cylinder = 45;  % cm

volume_sphere = (4/3) * pi * radius_sphere^3  % Output: 14137.1669 cm³

radius_cylinder = sqrt(volume_sphere / (pi * height_cylinder))  % Output: 10.00 cm