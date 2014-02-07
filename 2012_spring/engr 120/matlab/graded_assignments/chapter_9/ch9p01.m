% Script File: ch9p01.m
%
% Programmer: Cameron Carroll
%
% Originally Written: April 29, 2012
%
% Purpose: Chapter 9, exercise 01; Compute dot product of two sets of
% matrices and prove that the commutative law is true.
%
% Modifcations:
% (None)

clear; clc;

% Declare matrices:
A1 = [1 3 5];
B1 = [-3 -2 4];
A2 = [0 -1 -4 -8];
B2 = [4 -2 -3 24];

% Calculate dot products:
result_1_1 = dot(A1, B1);
result_1_2 = dot(B1, A1);
result_2_1 = dot(A2, B2);
result_2_2 = dot(B2, A2);

% Determine that commutative property is true.
disp 'Commutative property holds for first set:';
if (result_1_1 == result_1_2) disp('True.');, end
disp 'Commutative property holds for second set:';
if (result_2_1 == result_2_2) disp('True.');, end