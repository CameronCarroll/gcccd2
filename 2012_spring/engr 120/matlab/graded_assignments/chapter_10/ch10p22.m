% Script File: ch10p22.m
%
% Programmer: Cameron Carroll
%
% Originally Written: May 03, 2012
%
% Purpose: Chapter 10, problem 22 a-d; Determine integrals of given
% symbolic functions (a) without intervals, (b) with indicated intervals,
% (c) with intervals converted to doubles instead of sym values.
%
% Modifications:
% (None)

clear; clc; clf;
close all;

syms x;

s1 = abs(x);
s2 = (x^2 + 4*x + 4) * (x-1);
s3 = (x^2 - 2*x - 2) / (10*x - 24);
s4 = x*log(x)-2*x^2-x^(1/3);

disp 'Equation 1:';
disp '-----------';
disp 'Original Equation:';
pretty(s1);
disp 'Symbolic Integral:';
pretty(int(s1));
disp 'Symbolic Integral: [-0.5, 0.5]';
pretty(int(s1, -0.5, 0.5));
disp 'Symbolic Integral: (Double)';
double(int(s1, -0.5, 0.5))
disp(char(10));

disp 'Equation 2:';
disp '-----------';
disp 'Original Equation:';
pretty(s2);
disp 'Symbolic Integral:';
pretty(int(s2));
disp 'Symbolic Integral: [-0.5, 0.5]';
pretty(int(s2, -0.5, 0.5));
disp 'Symbolic Integral: (Double)';
double(int(s2, -0.5, 0.5))
disp(char(10));

disp 'Equation 3:';
disp '-----------';
disp 'Original Equation:';
pretty(s3);
disp 'Symbolic Integral:';
pretty(int(s3));
disp 'Symbolic Integral: [-0.5, 0.5]';
pretty(int(s3, -0.5, 0.5));
disp 'Symbolic Integral: (Double)';
double(int(s3, -0.5, 0.5))
disp(char(10));

disp 'Equation 4:';
disp '-----------';
disp 'Original Equation:';
pretty(s4);
disp 'Symbolic Integral:';
pretty(int(s4));
disp 'Symbolic Integral: [-0.5, 0.5]';
pretty(int(s4, -0.5, 0.5));
disp 'Symbolic Integral: (Double)';
double(int(s4, -0.5, 0.5))
disp(char(10));
