% Script File: ch3p10
%
% Programmer: Cameron Carroll
%
% Februrary 20, 2012
%

clear;
clc;
clf;

inc = 0.0785
range = -pi/2:inc:pi/2;

gain = abs(sin(4.*range) ./ (4 .* range));

polar(range, gain);
title('\bfAntenna Gain vs \theta');

disp (' Following results are for increment = pi/40')  
Result = [range'      gain'];
disp '                   theta               gain '
disp '                 -----------       -------------- '
fprintf ('                 %8.4f          %8.4f\n', Result')
disp ' ==================================================================='
disp ' '
disp ' '
disp ' '


   