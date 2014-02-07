% Script File: Quiz6_ch6ex20

% Programmer: Cameron Carroll
% April 12, 2012

clear;
clc;
clf;

y = @(x) exp(1).^(-x) .* sin(x);
range = 0:0.1:2;
result = y(range);


figure(1);
stem(range, result);
title('Plot of function y = e^-x * sin(x) [Stem Plot]');
xlabel('x values from 0 to 2');
ylabel('y values for function.');

figure(2);
stairs(range, result);
title('Plot of function y = e^-x * sin(x) [Stair Graph]');
xlabel('x values from 0 to 2');
ylabel('y values for function.');

figure(3);
bar(range, result);
title('Plot of function y = e^-x * sin(x) [Bar Graph]');
xlabel('x values from 0 to 2');
ylabel('y values for function.');

figure(4);
compass(range, result);
title('Plot of function y = e^-x * sin(x) [Compass Graph]');
xlabel('x values from 0 to 2');
ylabel('y values for function.');