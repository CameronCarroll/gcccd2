% Script File: quiz3.m
%
% Programmer: Cameron Carroll
%
% February 20, 2012

clear;
clc;

x = input('Enter an X value: ');
y = input('Enter a Y value: ');


if x >= 0
    if y >= 0
        output = x + y;
    else
        output = x + y^2;
    end
else
    if y >= 0
        output = x^2 + y;
    else
        output = x^2 + y^2;
    end
end

disp(output);