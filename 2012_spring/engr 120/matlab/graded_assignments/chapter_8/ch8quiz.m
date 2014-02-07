% Script File: ch8quiz.m
%
% Programmer: Cameron Carroll
% Originally Written: April 27, 2012
% 
% Purpose: Chapter 8, Exercise 22; Model the altitude, velocity and
% acceleration of a weather balloon over a range of 50 hours.
%
% Modifications:
% (None)

clear; clc; clf;
close all;

range = 0:0.5:50; % (hours)
initial_height = 220; % (meters)

% Function vector for v(t) = -0.48t^3 + 36t^2 - 760t + 4100
velocity = [-0.48 36 -760 4100];

% Calculate altitude (integral) and acceleration (derivative) of velocity.

altitude = polyint(velocity, initial_height);
acceleration = polyder(velocity);

altitude_values = polyval(altitude, range);
velocity_values = polyval(velocity, range);
acceleration_values = polyval(acceleration, range);


% Print and plot resultant polynomials over a range of 50 hours.

disp 'Coefficients of Altitude, Velociy and Acceleration';
disp 'Altitude:';
fprintf('%g, ', altitude(1:end-1));
fprintf('%g \n', altitude(end));

disp 'Velocity:';
fprintf('%g, ', velocity(1:end-1));
fprintf('%g \n', velocity(end));

disp 'Acceleration:';
fprintf('%g, ', acceleration(1:end-1));
fprintf('%g \n', acceleration(end));

figure(1);
subplot(3, 1, 1);
plot(range, altitude_values);
hold on;
title('Altitude:');
xlabel('Hours');
ylabel('Meters');

subplot(3, 1, 2);
hold on;
title('Velocity:');
xlabel('Hours');
ylabel('Meters');
plot(range, velocity_values);

subplot(3, 1, 3);
hold on;
title('Acceleration:');
xlabel('Hours');
ylabel('Meters');
plot(range, acceleration_values);





