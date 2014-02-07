% Script File: ch3p06.m
%
% Programmer: Cameron Carroll
%
% February 20, 2012

clear;
clc;

inputValue = input('Enter a number less than 1.0: ');

if inputValue < 1.0
    outputValue = log(1/(1-inputValue));
elseif inputValue == 1.0
    disp 'Divide by zero error. Pick a value less than 1.0'
else
    disp 'Negative values coming from log. Pick a value less than 1.0'
end

try
    outputValue
catch ME
    disp 'No data.'
end