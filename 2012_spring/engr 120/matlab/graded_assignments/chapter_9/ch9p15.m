% Script File: ch9p15.m
%
% Programmer: Cameron Carroll
%
% Originally Written: April 30, 2012
%
% Purpose: Chapter 9, exercise 15; Material Balances on Separation Unit;
% This script models the flow in a separation unit in matrix
% representation.
%
% Modifcations:
% (None)

clear; clc;

% Declare Matrices:
system = [0 0.20 0.65 50;
    -100 0.35 0.25 0;
    100 0.45 0.10 50;];

[row col] = size(system);
A = system(:, 1:row);
B = system(:, row+1);

if rank(A) == row
    X = A \ B;
else
    disp 'System is ill-conditioned/singular; No unique solution exists.';
end

disp 'Solutions to Separation Unit System:';
fprintf('%g ', X);
disp(char(10));