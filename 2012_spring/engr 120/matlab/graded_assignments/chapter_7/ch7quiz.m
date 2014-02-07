% Script File: ch7quiz.m
%
% Programmer: Cameron Carroll
% Originally Written: April 25, 2012

clear; clc; clf;

% Generate random values:
seed = 0;
if verLessThan('matlab', '7.12')
    rand('seed', seed);
else
    rng('default');
    rng(seed); 
end

setmean = 80.0;
stdev = 23.5;
randset = stdev .* randn(10000,1) + setmean;

% Analyze Data:
disp '   Chapter 7 Quiz: Data Analysis of Gaussian Distribution    ';
disp '   Target mean: 80.0 ----- Target stdev: 23.5 ';
disp '  ---------------------------------------------------------';

fprintf('Element Count: %g\n', numel(randset));
fprintf('Mean: %g\n', mean(randset));
fprintf('Median: %g\n', median(randset));
fprintf('Standard Deviation: %g\n', std(randset));
fprintf('Variance: %g\n', var(randset));
[val loc] = max(randset);
fprintf('Max Value and Location: %g  at %g\n', val, loc);
[val loc] = min(randset);
fprintf('Min Value and Location: %g at %g\n', val, loc);

% Plot Data:
figure(1);
hist(randset, 50);
title('Histogram for Gaussian Distribution: Mean 80, STD 23.5');
ylabel('# of occurances');
xlabel('Random Value');

figure(2);
plot(randset);
title('Unsorted Plot for Gaussian Distribution: Mean 80, STD 23.5');
xlabel('Individual Data Points');
ylabel('Value of Data Point');
% This graph consists of noise centered around 80.

figure(3);
plot(sort(randset));
title('Sorted Plot for Gaussian Distribution: Mean 80, STD 23.5');
xlabel('Individual Data Points');
ylabel('Value of Data Point');
% This graph shows a neat curve ranging from 20 up to 160, but centered at
% 80.
