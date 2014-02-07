% Script File: ch7p05.m
%
% Programmer: Cameron Carroll
%
% Modifications:
% 04/24/12 -- Added matlab version check in the random # generation code to
% allow running older versions of Matlab.

clear;
clc;
clf;

% Generate random set of data: [250 values from 1-15]

seed = 2012;
a = 1; %lower bound (interval)
b = 15;%upper bound (interval)

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

% Statistics and Data Analysis:

disp 'Element Count:';
disp '--------------';
fprintf('%g\n', numel(randset)')
disp(char(10));

disp 'Arithmetic and Geometric Means:';
disp '-------------------------------';
fprintf('%g and %g \n', AMean(randset), GMean(randset))
disp(char(10));

disp 'Harmonic and Quadratic Means:';
disp '-----------------------------';
fprintf('%g and %g \n', HMean(randset), QMean(randset))
disp(char(10));

disp 'Median:';
disp '-------';
fprintf('%g \n', median(randset))
disp(char(10));

disp 'Std. Dev and Variance:';
disp '----------------------';
fprintf('%g and %g \n', std(randset), var(randset))
disp(char(10));

disp 'Highest value: (Location)';
disp '-------------------------';
[max_val loc] = max(randset);
fprintf('%g at location: (%g) \n', max_val, loc);
disp(char(10));

disp 'Lowest Value: (Location)';
disp '-------------------------';
[min_val loc] = min(randset);
fprintf('%g at location: (%g) \n', min_val, loc);
disp(char(10));

% Plot histogram: [50 bins]
figure(1);
hist(randset, 50);
title('Data Analysis on Random Values From 1-15: Histogram');
xlabel('Magnitudes of Random Values');

% Plot data: [unsorted]
figure(2);
plot(randset);
title('Data Analysis on Random Values From 1-15: Unsorted Data');
xlabel('Index of Value');
ylabel('Magnitude of Value');

% Plot data: [sorted]
figure(3);
plot(sort(randset));
title('Data Analysis on Random Values From 1-15: Sorted Data');
xlabel('Index of Value');
ylabel('Magnitude of Value');


