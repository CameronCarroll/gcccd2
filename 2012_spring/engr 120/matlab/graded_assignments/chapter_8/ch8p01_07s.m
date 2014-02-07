% Script File: ch8p01_07s.m
%
% Programmer: Cameron Carroll
% Originally Written: April 26, 2012

% Modifications:
% (None)
%
% Purpose: Do exercises 2, 4 and 7, which entails performing polynomial
% operations and plotting the resultant functions over [0, 4]

clear; clc;

range = 0:0.1:4;

% Row vector definitions of polynomial coefficients:
f1 = [1, -3, -1, 3];
f2 = [1, -6, 12, -8];
f3 = [1, -8, 20, -16];
f4 = [1, -5, 7, -3];
f5 = [0, 0, 1, -2];
% This pattern is used to strip trailing and ending zeroes, to prep the
% polynomial for use in conv() and deconv(). find(target, 1, 'first/last')
% finds the first and last non-zero indices.
f5_clean = f5(find(f5, 1, 'first'):find(f5, 1, 'last'));


% Problem 2: f2(x) - 2*f1(x)

g2 = f2 - 2*f1;
r2 = polyval(g2, range);
figure(1);

plot(range, r2);
title('Plot of f2(x) - 2*f1(x)');
xlabel('Range: [0, 4] with step: 0.1');
ylabel('Value of polynomial:');

% Problem 4: f1(x) * f3(x)
g4 = conv(f1, f3);
r4 = polyval(g4, range);

figure(2);
plot(range, r4);
title('Plot of f1(x) * f3(x)');
xlabel('Range: [0, 4] with step: 0.1');
ylabel('Value of polynomial:');

% Problem 7: f1(x) * f2(x) / f5(x)
g7 = deconv(conv(f1, f2), f5_clean); %f5_clean has extra zeroes stripped
r7 = polyval(g7, range);

figure(3);
plot(range, r7);
title('Plot of f1(x) * f2(x) / f5(x)');
xlabel('Range: [0, 4] with step: 0.1');
ylabel('Value of polynomial:');





