% Script File: ch2p13.m
% Chapter 2, Exercise 13: Decibels & Power
%
% Programmer: Cameron Carroll
%
% Purpose: Calculates and plots decibel with respect to some reference
% power level.
%

clc;
clear;
clf;

reference_power = 1;
user_power = input('Enter a power level to calculate with: \n');

decibel_power = 10 .* log10(user_power ./ reference_power)

power_set = 0:0.1:100;
decibel_set = 10 .* log10(power_set ./ reference_power);

subplot(2, 1, 1); plot(decibel_set, power_set);
title('Watts vs Decibels (against reference)');
ylabel('Power (watts)');
xlabel('Power (dBm)');

subplot(2, 1, 2); semilogy(decibel_set, power_set);
title('Watts vs Decibels (Logarithmic Scale)');
ylabel('Power (watts)');
xlabel('Power (dBm)');
