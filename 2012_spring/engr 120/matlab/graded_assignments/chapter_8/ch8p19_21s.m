% Script File: ch8p19_21s.m
%
% Programmer: Cameron Carroll
% Originally Written: April 26, 2012

% Modifications:
% (None)
%
% Purpose: Exercises 19 and 21; Determine first and second integrals of
% given functions.

clear; clc;

% Declare function arrays:
g1 = [1 -3 4 0 -4 4];
g4 = [1 -4 -9 0 0 32];
g4 = conv(g4, g4);

% Calculate integrals:
disp 'First and second integral of g(x) = x^5 - 3x^4 + 4x^3 -4x +4:';
fprintf('%gx^6 + %gx^5 + %gx^4 + %gx^3 + %gx^2 + %gx + %g \n', polyint(g1, -3));
fprintf('%gx^7 + %gx^6 + %gx^5 + %gx^4 + %gx^3 + %gx^2 + %gx + %g \n', polyint(polyint(g1, -3), -3));

disp(char(10));

disp 'First and second integral of g(x) = [x^5 - 4x^4 - 9x^3 + 32]^2';
fprintf('%gx^11 + %gx^10 + %gx^9 + %gx^8 + %gx^7 + %gx^6 + %gx^5 + %gx^4 + %gx^3 + %gx^2 + %gx + %g \n', ...
    polyint(g4, -3));
fprintf('%gx^12 + %gx^11 + %gx^10 + %gx^9 + %gx^8 + %gx^7 + %gx^6 + %gx^5 + %gx^4 + %gx^3 + %gx^2 + %gx + %g \n', ...
    polyint(polyint(g4, -3), -3));
disp(char(10));
