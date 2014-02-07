% Script File: midterm_project.m
%
% Programmer: Cameron Carroll
% 
% March 12, 2012

clear; clc; clf;

disp '                     Mid-Term Project         ';
disp '                     Cameron Carroll          ';
disp '             ================================     ';
htext = [' This program calculates and plots the following conditional' ...
     char(10) ' function over the range of -2 to 2, given an input step size.' char(10)];
disp(htext);
disp '      y(x) = x^4 - 10x^3 + 35x^2 - 50x + 24  when x > 0';
disp '      y(x) = 0                               when x = 0';
disp '      100sin(pi*x)*e^((x+0.6)/2)             when x < 0';
disp '';

itext = [char(10) ' Enter the step size for x that satisfies as such:' char(10) ...
    ' 0.01 <= step <=   (Invalid input will default to 0.05) ---->: '];
%step = input(itext); %disabled to publish code as html
step = 0.6; %sample input
disp(char(10));

if (step > 0.1) || (step < 0.01)
    disp ' Invalid step size; Defaulting to 0.05...';
    disp(char(10));
    step = 0.05;
end

range = -2:step:2;
index_range = 1:length(range);
x(1) = -2;
y(1) = 1.2163e-014;

for ii = 2:length(range)
    x(ii) = x(ii-1) + step;
    if x(ii) < 0
        y(ii) = 100 * sin(pi*x(ii)) * exp(1)^((x(ii)+0.6)/2);
    elseif x(ii) > 0
        y(ii) = x(ii)^4 - 10*x(ii)^3 + 35*x(ii)^2 - 50*x(ii) + 24;
    else 
        y(ii) = 0;
    end
end

disp '';
disp '      Index         x          y(x)  ';
disp '   ------------------------------------';
results = [index_range' x' y'];
fprintf('       %2.0f        %3.4f      %3.4f  \n', results');

plot(x, y, '--b', 'LineWidth', 2);
titleText = sprintf('Plot of conditional function using step size: %f', step);
title(titleText);
xlabel('Independent variable, x, over range -2 to 2');
ylabel('Dependent variable, y(x)');


