% Script File: ch8p16_18s.m
%
% Programmer: Cameron Carroll
% Originally Written: April 26, 2012

% Modifications:
% (None)
%
% Purpose: Exercises 16 and 18; Calculate first and second derivative of
% given polynomials.


clear; clc;

% Declare/Calculate Base Polynomials:
g1 = [1 -3 4 0 -4 4];
g4 = [1 -4 -9 0 0 32];
g4 = conv(g4, g4);

% Calculate derivatives:
disp 'First and second derivative of g(x) = x^5 - 3x^4 + 4x^3 -4x +4:';
fprintf('%gx^4 + %gx^3 + %gx^2 + %gx + %g \n', polyder(g1));
fprintf('%gx^3 + %gx^2 + %gx + %g \n', polyder(polyder(g1)));

disp(char(10));

disp 'First and second derivative of g(x) = [x^5 - 4x^4 - 9x^3 + 32]^2';
fprintf('%gx^9 + %gx^8 + %gx^7 + %gx^6 + %gx^5 + %gx^4 + %gx^3 + %gx^2 + %gx + %g \n', ...
    polyder(g4));
fprintf('%gx^8 + %gx^7 + %gx^6 + %gx^5 + %gx^4 + %gx^3 + %gx^2 + %gx + %g \n', ...
    polyder(polyder(g4)));
disp(char(10));

