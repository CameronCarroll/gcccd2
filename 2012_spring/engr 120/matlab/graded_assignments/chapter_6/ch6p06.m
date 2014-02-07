% Script File: ch6p06.m
% Programmer: Cameron Carroll
% April 12, 2012
%
% Modifications:
% 04/24/12 -- Changed step in range from 1 to 0.05 to smooth out graph.

clear;
clc;
clf;

y = @(x) 10 .* exp(1).^(((-0.2)+1i.*pi).*x);
range = 0:0.05:10;

plot(range, y(range));

% With range included, the graph autoscales to match the input data.