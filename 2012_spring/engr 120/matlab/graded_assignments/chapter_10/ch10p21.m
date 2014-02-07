% Script File: ch10p21.m
%
% Programmer: Cameron Carroll
%
% Originally Written: May 03, 2012
%
% Purpose: Chapter 10, problem 21 a-d; Determine first and second
% derivatives of various symbolic functions.
%
% Modifications:
% (None)

clear; clc; clf;
close all;

syms x;

g1 = x * cosh(2*x) - 3/x^3 + sin(x) * cos(2*x) - 6*sqrt(x)/x;
g2 = x^(sqrt(x)) + sqrt(x)*log(x);
g3 = (x^2 - 2*x + 2) / (10*x - 24);
g4 = (x^5 - 4*x^4 - 9*x^3 + 32)^2;

disp 'First equation: (Zeroth Derivative)';
disp '-----------------------------------';
pretty(g1);
disp(char(10));
disp 'First equation: (First Derivative)';
disp '-----------------------------------';
pretty(diff(g1));
disp(char(10));
disp 'First equation: (Second Derivative)';
disp '-----------------------------------';
pretty(diff(g1, 2));
disp(char(10));

disp 'Second equation: (Zeroth Derivative)';
disp '-----------------------------------';
pretty(g2);
disp(char(10));
disp 'Second equation: (First Derivative)';
disp '-----------------------------------';
pretty(diff(g2));
disp(char(10));
disp 'Second equation: (Second Derivative)';
disp '-----------------------------------';
pretty(diff(g2, 2));
disp(char(10));

disp 'Third equation: (Zeroth Derivative)';
disp '-----------------------------------';
pretty(g3);
disp(char(10));
disp 'Third equation: (First Derivative)';
disp '-----------------------------------';
pretty(diff(g3));
disp(char(10));
disp 'Third equation: (Second Derivative)';
disp '-----------------------------------';
pretty(diff(g3, 2));