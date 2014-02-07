% Script: prism.m
% Author: Cameron Carroll; September 2013
% Purpose: Calculate angles of a prism.

clc; clear;

theta_i1 = 50;
apex = 60;
n_r = 1.62;
n_v = 1.66;

disp 'Calculations for red:'
theta_r1 = asind(sind(theta_i1) / n_r)
alpha = 90-theta_r1;
beta = 180-apex-alpha;
theta_i2 = 90-beta
theta_r2_red = asind(n_r * sind(theta_i2))

disp 'Calculations for violet:'
theta_r1 = asind(sind(theta_i1) / n_v)
alpha = 90-theta_r1;
beta = 180-apex-alpha;
theta_i2 = 90-beta
theta_r2_violet = asind(n_v * sind(theta_i2))

spread = theta_r2_red - theta_r2_violet
