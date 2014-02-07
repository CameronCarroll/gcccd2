% Script File: ch10p04.m
%
% Programmer: Cameron Carroll
%
% Originally Written: May 03, 2012
%
% Purpose: Chapter 10, problem 04; Define and print a symbolic function;
% Factor and print expression; Solve for roots and print.
%
% Modifications:
% (None)

clear; clc;

S = sym(['(3*x^5 - 48*x^4 + 213*x^3 - 132*x^2 - 900*x + 1296) /' ...
    '(-7*x^3 - 56*x^2 + 77*x + 126)']);
disp 'Unfactored expression: ';
pretty(S);
disp(char(10));

disp 'Factored expression: ';
pretty(factor(S));
disp(char(10));

disp 'Roots of expression: ';
solve(S)
