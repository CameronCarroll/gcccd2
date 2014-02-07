% Script File: Ch6p08.m
% Programmer: Cameron Carroll
% April 12, 2012

clear;
clc;
clf;

x = 0:10;
y = 10 .* exp(1).^(((pi .* 1i) - 0.2) .* x);

polar(x, y);
