% Script File: Ch5AFP15.m
%
% Programmer: Cameron Carroll
%
% March 06, 2012

clear;
clc;
clf;

e = exp(1);
range = 0:pi/6:2*pi;
f = @(x) e^(-0.25 .* x) * sin(2.*x);
fplot(f, [0 2*pi]);
grid on;

% Expecting three zeroes:
first_zero = fzero(f, 1);
second_zero = fzero(f, 3);
third_zero = fzero(f, 4.5);

result = [first_zero second_zero third_zero];

disp '    Calculated zeroes of e^(-0.25x) * sin(2x)  ';
disp '  --------------------------------------------- ';
fprintf('   First zero: %f\n', first_zero);
fprintf('   Second zero: %f\n', second_zero);
fprintf('   Third zero: %f\n', third_zero);


