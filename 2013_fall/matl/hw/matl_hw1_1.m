clear; clc;

format short g;

diameters = [1/16 1/8 1/4 1/2 3/4 1]
areas = pi / 4 .* diameters.^2
TS = 6.8165 * 10^4;
loads = TS .* areas

diameter = 1/2;
UC = 3.30;
cable_length = 1200;
density = 0.0979;
area = pi * diameter^2 / 4
volume = area * cable_length
weight = density * volume
cost = weight * UC