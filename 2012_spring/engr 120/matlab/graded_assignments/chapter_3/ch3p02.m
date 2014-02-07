% Script File: ch3p02.m
%
% Programmer: Cameron Carroll
%
% Purpose: Calculate tangent without the possibility of a divide-by-zero
% error.
%
% February 20, 2012
%

clear;
clc;

% User input:
inputAngle = input('Enter an angle in degrees: ');
    
% Calculate sin, cos & check tangent:
calcSin = sind(inputAngle);
calcCos = cosd(inputAngle);

if calcCos >= 10e-20
    calcTan = calcSin / calcCos;
else
    disp 'Value of cosine is too close to zero.'
    calcTan = calcSin / calcCos;
end

matlabTan = tand(inputAngle)
calcTan
    
