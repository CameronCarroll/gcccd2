% Script File: ch9p09.m
%
% Programmer: Cameron Carroll
%
% Originally Written: April 29, 2012
%
% Purpose: Chapter 9, exercise 09; Prove that the associative property
% holds for three conformable matrices.
%
% Modifcations:
% (None)

clear; clc;

% Declare matrices:
A = [2 12 -5; -3 0 -2; -2 2 -1;]; %3x3
B = [4 0 12; 2 2 0; 6 3 0;]; %3x3
C = [4; -3; 0]; %3x1

% Calculate products: A(BC) and (AB)C
result_1 = A * (B * C);
result_2 = (A * B) * C;

% Determine whether solutions are the same:
disp 'Associative property holds for this operation: ';
if (result_1 == result_2) disp('True.');, end
if (result_1 ~= result_2) disp('False.');, end