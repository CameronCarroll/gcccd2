% Script File: ch10p15.m
%
% Programmer: Cameron Carroll
%
% Originally Written: May 03, 2012
%
% Purpose: Chapter 10, problem 15; Plot various symbolic functions over
% -2pi to 2pi. (Use the same figure.)
%
% Modifications:
% (None)

clear; clc; clf;
close all;

syms x;

y1 = sin(x);
y2 = sin(2*x);
y3 = sin(3*x);

hold on;

ezplot(y1);
ezplot(y2);
ezplot(y3);
