% Script File: ch7p08.m
%
% Programmer: Cameron Carroll
%
% Modifications:
% 04/24/12 -- Added matlab version check in the random # generation code to
% allow running older versions of Matlab.

clear; clc;

% Generate Random Data: [100 values, 0.01 - 9.99]

seed = 0;
a = 0.01; %lower bound (interval)
b = 9.99;%upper bound (interval)

if verLessThan('matlab', '7.12')
    rand('seed', 0);
    randset = a + (b-a).*rand(100,1);
else
    rng('default');
    rng(seed);
    randset = a + (b-a).*rand(100,1);    
end

% Functions for Mean Calculations:

AMean = @(ary)(sum(ary) ./ numel(ary));
GMean = @(ary)(nthroot(prod(ary), numel(ary)));
HMean = @(ary)(numel(ary)/(sum(1./ary)));
QMean = @(ary)(sqrt(sum(ary.^2) / numel(ary)));

% Calculate and Display Analysis:

disp 'Arithmetic and Geometric Means:';
disp '-------------------------------';
fprintf('%g and %g \n', AMean(randset), GMean(randset))
disp(char(10));

disp 'Harmonic and Quadratic Means:';
disp '-----------------------------';
fprintf('%g and %g \n', HMean(randset), QMean(randset))
disp(char(10));