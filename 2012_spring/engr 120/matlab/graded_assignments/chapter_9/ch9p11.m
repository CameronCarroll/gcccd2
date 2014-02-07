% Script File: ch9p11.m
%
% Programmer: Cameron Carroll
%
% Originally Written: April 29, 2012
%
% Purpose: Chapter 9, exercise 11; Solve the given systems of equations
% using left division.
%

% Modifcations:
% (None)

clear; clc;

% Declare Matrices:
A_A = [3.75 6.25 2.50; 3.00 4.50 -1.50; 1.75 -3.50 -5.25;];
A_B = [-10 -1.50 1.75]';

B_A = [10 -7 0; -3 2 6; 5 1 5;];
B_B = [7 4 6]';

C_A = [1 4 -1 1; 2 7 1 -2; 1 4 -1 2; 3 -10 -2 5;];
C_B = [2 16 -1 -15]';

% Solve Systems:

A_X = A_A \ A_B;
B_X = B_A \ B_B;
C_X = C_A \ C_B;

% Print solutions:

disp 'Solutions to Matrix A:';
fprintf('%g ', A_X); 
disp(char(10));

disp 'Solutions to Matrix B:';
fprintf('%g ', B_X); 
disp(char(10));

disp 'Solutions to Matrix C:';
fprintf('%g ', C_X); 
disp(char(10));