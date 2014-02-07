% Script File: Ch6p11.m
% Programmer: Cameron Carroll
% April 12, 2012

%
% Modifications:
%   04/24/12:
%       (1) -- Simplified exponent calculation
%       (2) -- Removed transpose on mesh real(result), which was causing a
%       dimesion mismatch when mesh dimensions were changed.

clear;
clc;
clf;

[x, y] = meshgrid(-1:0.1:1, -2*pi:pi/5:2*pi);

z = @(x, y) exp(x + 1i*y);

result = z(x, y);

figure(1);
mesh(x, y, real(result));
title('Chapter 6, Example 11: 3D Plots [Mesh Plot]');


figure(2);
surf(x, y, real(result));
title('Chapter 6, Example 11: 3D Plots [Surface Plot]');

figure(3);
contour(x, y, real(result));
title('Chapter 6, Example 11: 3D Plots [Contour Plot]');