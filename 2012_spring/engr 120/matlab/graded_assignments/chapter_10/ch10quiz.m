% Script File: ch10quiz.m
%
% Programmer: Cameron Carroll
%
% Originally Written: May 03, 2012
%
% Purpose: Chapter 10, problem 23 (quiz); Given an equation height(time),
% determine velocity and acceleration as first and second derivatives.
% Print functions symbolically and plot over a domain of 40 seconds.
%
% Modifications:
% (None)

clear; clc; clf;
close all;

syms t;

altitude = 60 + 2.13*t^2 - 0.0013*t^4 + 0.000034*t^4.751;
velocity = diff(altitude);
acceleration = diff(velocity);

disp 'Chapter 10, Quiz (Problem 23) -- Rocket Trajectory';
disp '--------------------------------------------------';
disp(char(10));
disp 'Altitude:';
pretty(altitude);
disp(char(10));

disp 'Velocity:';
pretty(velocity);
disp(char(10));

disp 'Acceleration:';
pretty(acceleration);
disp(char(10));

hold on;
subplot(3, 1, 1);
ezplot(altitude, [0 40]);
title('Altitude of Rocjet Trajectory');
xlabel('(second)');
ylabel('(feet)');

subplot(3, 1, 2);
ezplot(velocity, [0 40]);
title('Velocity of Rocjet Trajectory');
xlabel('(second)');
ylabel('(feet/second)');

subplot(3, 1, 3);
ezplot(acceleration, [0 40]);
title('Acceleration of Rocjet Trajectory');
xlabel('(second)');
ylabel('(feet/second^2)');
