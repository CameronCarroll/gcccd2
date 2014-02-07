% Script File: ch8p08_15s.m
%
% Programmer: Cameron Carroll
% Originally Written: April 26, 2012

% Modifications:
% (None)
%
% Purpose: Exercises 9, 11, 12 and 15. Determine the real roots for given
% polynomials, then plot to verify axis crossing points.

clear; clc;

range = -5:0.1:5;

% Problem 9: g2(x) = x^2 + 4x + 4
g2 = [1 4 4];
disp 'Roots for g(x) = x^2 + 4x + 4:';
fprintf('%g; ', roots(g2));
disp(char(10));
g2_solutions = polyval(g2, range);

figure(1)
plot(range, g2_solutions); 
title('Graph of g2(x) = x^2 + 4x + 4 to verify roots.');
xlabel('Range: [-5, 5] with Step: 0.1');
ylabel('Value of g2(x) = x^2 + 4x + 4');


% Problem 11: g4(x) = x^5 - 3x^4 - 11x^3 + 27x^2 + 10x - 24
g4 = [1 -3 -11 27 10 -24];
disp 'Roots for g4(x) = x^5 - 3x^4 - 11x^3 + 27x^2 + 10x - 24:';
fprintf('%g; ', roots(g4));
disp(char(10));
g4_solutions = polyval(g4, range);

figure(2)
plot(range, g4_solutions); 
title('Graph of g4(x) = x^5 - 3x^4 - 11x^3 + 27x^2 + 10x - 24 to verify roots.');
xlabel('Range: [-5, 5] with Step: 0.1');
ylabel('Value of g4(x) = x^5 - 3x^4 - 11x^3 + 27x^2 + 10x - 24');

% Problem 12: g5(x) = x^5 - 4x^4 - 9x^3 + 32x^2 + 28x - 48
g5 = [1 -4 -9 32 28 -48];
disp 'Roots for g(x) = x^5 - 4x^4 - 9x^3 + 32x^2 + 28x - 48:';
fprintf('%g; ', roots(g5));
disp(char(10));
g5_solutions = polyval(g5, range);

figure(3)
plot(range, g5_solutions); 
title('Graph of g5(x) = x^5 - 4x^4 - 9x^3 + 32x^2 + 28x - 48 to verify roots.');
xlabel('Range: [-5, 5] with Step: 0.1');
ylabel('Value of g5(x) = x^5 - 4x^4 - 9x^3 + 32x^2 + 28x - 48');

% Problem 15: g8(x) = x^5 - 3x^4 + 4x^3 - 4x + 4
g8 = [1 -3 4 0 -4 4];
disp 'Roots for g(x) = x^5 - 3x^4 + 4x^3 - 4x + 4';
fprintf('%g; ', roots(g8));
disp(char(10));
g8_solutions = polyval(g8, range);

figure(4)
plot(range, g8_solutions); 
title('Graph of g8(x) = x^5 - 3x^4 + 4x^3 - 4x + 4 to verify roots.');
xlabel('Range: [-5, 5] with Step: 0.1');
ylabel('Value of g8(x) = x^5 - 3x^4 + 4x^3 - 4x + 4');