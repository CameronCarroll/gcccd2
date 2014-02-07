% Script File: ch7p02.m
%
% Programmer: Cameron Carroll

clear; clc; clf;

G = [68 83 61 70 75 82 57 05 76 85 62 71 96 78 76 68 72 75 83 93];
G_sorted = sort(G);
disp 'Sorted Grades:';
disp '--------------';
fprintf('%g\n', G_sorted')
disp(char(10));

disp 'Element Count:';
disp '--------------';
fprintf('%g\n', numel(G)')
disp(char(10));

disp 'Highest Grade: (Location)';
disp '-------------------------';
[max_val loc] = max(G_sorted);
fprintf('%g at location: (%g) \n', max_val, loc);
disp(char(10));

disp 'Lowest Grade: (Location)';
disp '-----------------------';
[min_val loc] = min(G_sorted);
fprintf('%g at location: (%g) \n', min_val, loc);
disp(char(10));

disp 'Mean and Median:';
disp '--------------';
fprintf('%g and %g \n', mean(G), median(G))
disp(char(10));

disp 'Std. Dev and Variance:';
disp '---------------------';
fprintf('%g and %g \n', std(G), var(G))
disp(char(10));

hist(G);
title('Histogram for Scores (Final Grades)');
xlabel('Grades');