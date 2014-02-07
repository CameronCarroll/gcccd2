% Script File: ch3p15.m
%
% Programmer: Cameron Carroll
%
% February 20, 2012

clear;
clc;
clf;

inc = pi/40;
range = 0:inc:6*pi;
k = 0.5;

distance = k .* range;

polar(range, distance);
title('\bfDistance from Origin vs \theta');
