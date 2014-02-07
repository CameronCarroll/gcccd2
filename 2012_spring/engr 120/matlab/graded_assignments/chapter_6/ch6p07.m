% Script File: Ch6p07.m
% Programmer: Cameron Carroll
% April 12, 2012

clear;
clc;
clf;

y = @(x) 10 .* exp(1).^(((-0.2)+1i.*pi).*x);
range = 0:10;

plot(y(range));

% With input data excluded, data is displayed as a jumbled mess.
