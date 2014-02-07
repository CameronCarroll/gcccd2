% Script File: ch4p23.m
%
% Programmer: Cameron Carroll
%
% February 21, 2012

clear;
clc;
clf;

ref_watts = 1;


% Priming calculation
var_watts(1) = 1;
var_db(1) = 10 * log10(var_watts(1) / ref_watts);

for ii = 2:39
    var_watts(ii) = var_watts(ii-1) + 0.5;
    var_db(ii) = 10 * log10(var_watts(ii) / ref_watts);
end

semilogx(var_watts, var_db);
title('Power (watts)[log scale] vs Power (decibels)');
ylabel('Power (decibels)');
xlabel('Power (watts)[log scale]');
grid on;