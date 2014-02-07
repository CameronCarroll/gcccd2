% Script file: ch2p10.m
% Chapter 2, Exercise 10: Position and Velocity of a Ball
%
% Programmer: Cameron Carroll
%
% Purpose: To plot user-supplied height and velocity of a ball, using
% quadratic kinematic equations.


clc;
clear;
clf;

user_height = input('Supply an initial height (meters): \n');
user_velocity = input('Supply an initial velocity (meters per second): \n');

gravity = -9.81;
time_set = 0:0.5:10;

height = 0.5 .* gravity .* time_set.^2 + user_velocity .* time_set...
    + user_height;

velocity = gravity .* time_set + user_velocity;

plot(time_set, height, time_set, velocity);
title('Height of Ball vs Time');
xlabel('Time (seconds)');
ylabel('Height of Ball (meters), Velocity of Ball (m/s)');
legend('Height', 'Velocity', 1)


