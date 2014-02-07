% Script File: ch9quiz.m
%
% Programmer: Cameron Carroll
%
% Originally Written: May 3, 2012
%
% Purpose:
% Chapter 9 Quiz: Deformable Mirrors; Solve an externally loaded 1200x1200
% equation array representing actuator responses for use in a deformable
% mirror.
%
% Modifications: 
% (None)

clear; clc;

load Mirror.dat;

[row col] = size(Mirror);

A = Mirror(:, 1:row);
B = Mirror(:, row+1);

if rank(A) == row
    XINV = inv(A) * (B);
    XLD = A \ B;
else %system has no solution
    disp 'Problem is singular (No solution exists.)';
end

indices = 1:row;

Results = [indices' XINV XLD];
disp 'Quiz 9: Deformable Mirrors';
disp '--------------------------';
disp(char(10));



% Print the content of the Results Matrix
disp (' Solution (Values of Unknowns, x):');
disp ('  ');
disp ('     Index of X     Matrix Inverse Method       Left Division Method ');
disp ('     ----------     ---------------------       ------------------- ');
fprintf('    %5.0f              %12.7f               %12.7f \n', Results');



save Actuator.dat Results -ASCII;
plot(XINV, 'o');