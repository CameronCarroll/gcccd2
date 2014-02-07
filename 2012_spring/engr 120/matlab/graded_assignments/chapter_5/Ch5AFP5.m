% Script File: Ch5AFP5.m
%
% Programmer: Cameron Carroll
%
% March 6, 2012

clear;
clc;
clf;

e = exp(1);
x = -pi/4:pi/10:pi/4;
f = @(x) e.^(-0.2 .* x) .* (2 .* cos(x) - 1.5 .* sin(x));

ezplot(f, [-pi/4 pi/4]);
