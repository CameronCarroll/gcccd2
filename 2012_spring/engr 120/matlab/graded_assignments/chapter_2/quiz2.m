% Script file: quiz2.m
%
% Programmer: Cameron Carroll

clc;
clf;
clear;

pointA = input('Enter your first point as an array of coordinates [x y] (2d): ');
pointB = input('Enter your second point [x y] (2d): ');

distance = sqrt((pointA(1) - pointB(1))^2 + (pointA(2) - pointB(2))^2);

output_text = sprintf('Distance between points: %f', distance);
disp(output_text);

x_values = [pointA(1), pointB(1)];
y_values = [pointA(2), pointB(2)];

plot(x_values, y_values);
title('Distance between input points: ');
