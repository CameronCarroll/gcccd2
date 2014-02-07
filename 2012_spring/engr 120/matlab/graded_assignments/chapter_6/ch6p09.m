% Script File: ch6p09.m
% Programmer: Cameron Carroll
% April 12, 2012

clear;
clc;
clf;

y = @(x) 10 .* exp(1).^(((-0.2)+1i.*pi).*x);
range = 0:10;

plot3(real(y(range)), imag(y(range)), range);