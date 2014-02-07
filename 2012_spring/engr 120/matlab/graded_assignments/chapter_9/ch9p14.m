% Script File: ch9p14.m
%
% Programmer: Cameron Carroll
%
% Originally Written: April 29, 2012
%
% Purpose: Chapter 9, exercise 14; Temperature in a Metal Grid Network;
% Determine the temperature of intersection points in a grid of metal bars.
% Each intersection point is modeled with an equation, and a system of four
% of these create the network.

% Modifcations:
% (None)

clear; clc;

% Declare matrices:
% (Using augmented form)

% t1 = 1/4t2 + 1/4t3 + 1/4(60 + 10)
% t2 = 1/4t1 + 1/4t4 + 1/4(40 + 15)
% t3 = 1/4t1 + 1/4t4 + 1/4(82 + 30)
% t4 = 1/4t2 + 1/4t3 + 1/4(20 + 20)

t1 = [4 -1 -1 0 70];
t2 = [-1 4 0 -1 55];
t3 = [-1 0 4 -1 112];
t4 = [0 -1 -1 4 40];
network = [t1; t2; t3; t4;];

% Determine whether system has a solution; Compute if possible.
% Number of rows and the rank() of a system must be equal.
[row col] = size(network);
A = network(:, 1:row);
B = network(:, row+1);

if rank(A) == row
    X = A \ B;
else
    disp 'System is ill-conditioned; No solution exists.';
end

disp 'Solutions to network:';
fprintf('T1: %g \n', X(1));
fprintf('T2: %g \n', X(2));
fprintf('T3: %g \n', X(3));
fprintf('T4: %g \n', X(4));
    