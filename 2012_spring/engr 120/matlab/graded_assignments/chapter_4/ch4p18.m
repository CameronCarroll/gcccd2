% Script File: ch4p18.m
%
% Programmer: Cameron Carroll
%
% February 21, 2012

clear;
clc;
clf;

x = input('Enter a value for x: ');
while ~(x >= 1)
    value = log(1 / (1 - x));
    fprintf('Your value is calculated to: %f\n', value);
    x = input('Enter a value for x: ');
end
disp 'Illegal input; Try x < 1';