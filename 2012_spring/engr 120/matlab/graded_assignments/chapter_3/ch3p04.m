% Script File: ch3p04.m 
%
% Programmer: Cameron Carroll
%
% February 20, 2012
%
% Comments: I know it would have probably been cleaner to set cost to zero
% and check for that logically; Just messing with exceptions.

clear;
clc;

weight = input('Enter package weight to calculate shipping cost: ');

if weight > 100.0
    %Do nothing.
elseif weight > 70.0
    cost = 30.0 + (5.0 * (weight - 2.0));
elseif weight < 70.0 && weight > 2
    cost = 15.0 + (5.0 * (weight - 2.0));
elseif weight <= 2.0 && weight > 0
    cost = 15;
else % weight < 0
    %Do nothing, let exception handle it.
end

try
    fprintf('Your estimated shipping cost is: $%6.2f\n', cost);
catch ME1
    costFlag = regexp(ME1.message, 'cost');
    if costFlag
        disp 'Weight lies outside of the 0-100 US pound limit.'
    else
        disp 'Some horrible unknown error occured. Try again?'
    end
end