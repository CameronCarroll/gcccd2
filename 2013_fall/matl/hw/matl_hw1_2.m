clear; clc;

format short g;

TS_poly = 6000;
TS_kevlar = 525000;
TS_steel = 76000;
TS_al = 68165;
TS_au = 18854;

diameters = [1/16 1/8 1/4 1/2 3/4 1]
areas = pi / 4 .* diameters.^2;

poly_loads = TS_poly .* areas
kevlar_loads = TS_kevlar .* areas
steel_loads = TS_steel .* areas
al_loads = TS_al .* areas
au_loads = TS_au .* areas

cable_length = 1200;
diameter_kevlar = 1/8;
diameter_steel = 1/2;
diameter_al = 1/2;
diameter_au = 3/4;

rho_kevlar = 0.0520;
rho_steel = 0.283;
rho_al = 0.0979;
rho_au = 0.697;

UC_kevlar = 44.3;
UC_steel = 0.23;
UC_al = 3.30;
UC_au = 13800;

volume_kevlar = pi / 4 * diameter_kevlar^2 * cable_length;
volume_steel = pi / 4 * diameter_steel^2 * cable_length;
volume_al = pi / 4 * diameter_al^2 * cable_length;
volume_au = pi / 4 * diameter_au^2 * cable_length;

weight_kevlar = rho_kevlar * volume_kevlar
weight_steel = rho_steel * volume_steel
weight_al = rho_al * volume_al
weight_au = rho_au * volume_au

cost_kevlar = UC_kevlar * weight_kevlar
cost_steel = UC_steel * weight_steel
cost_al = UC_al * weight_al
cost_au = UC_au * weight_au
