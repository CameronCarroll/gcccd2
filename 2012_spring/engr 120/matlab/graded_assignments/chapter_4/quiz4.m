% Script File: quiz4.m
%
% Programmer: Cameron Carroll

clear;
clc;

range = -6*pi:pi/10:6*pi;
size = length(range);
for ii = 1:size
    if sin(range(ii)) > 0
        f(ii) = sin(range(ii));
    else
        f(ii) = 0;
    end
end

fprintf('   Values of sin(x) where sin(x) > 0, from -6pi to 6pi:\n');
fprintf('   ----------------------------------------------------\n');
fprintf('     x         f(x)      \n');
[range' f']

plot(range, f);
title('Plot of x versus sin(x) where sin(x) > 0, from -6*\pi to 6*\pi');
xlabel('x (step of \pi/10)');
ylabel('sin(x)');
