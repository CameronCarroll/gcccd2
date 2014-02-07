% Script File: ch5app1.m
%
% Programmer: Cameron Carroll
%

clear; clc; clf;

disp '          Application 5.1: Application of Anonymous Function'
disp '                         ASTM Grain Size'
disp '      ==========================================================='
disp '      This program uses an anonymous function to determine ASTM   '
disp '      grain size of a piece of metal.'
disp ''
disp ''

ASTM_Grain_Size = @(N)((log10(N) + log10(2)) / log10(2));
N = input('    Enter the number of grains per square inch at 100x, N = ');
fprintf(' \n\n The ASTM grain size, n, for the considered metal is: %f\n', ...
    ASTM_Grain_Size(N));
N = 1:100;
n = ASTM_Grain_Size(N);
plot(N, n);
title('Application 5.1: Variation of ASTM Grain Size with N');
xlabel('Number of Grains per Square Inch at 100x (N)');
ylabel('ASTM Grain Size, n');
grid on;