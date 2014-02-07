% Script file: ch2p12.m
% 
% Purpose:
%     This program demonstrates the function calculate3ddistance to
%     determine the distance between two 3d points.
%     
% Define Variables:
%     pointA -- (1x3) matrix containing x, y and z coordinates of a point.
%     pointB -- (1x3) matrix containing x, y and z coordinates of a point.
%     outputDistance -- (float) containing calculated distance between points.

% Related Functions:
%     calculate3ddistance (calculate3ddistance.m) (Cameron Carroll 2012)
    
pointA = input('Enter a first three-dimensional point as array [x y z]: ');
pointB = input('Enter a second point as array [x y z]: ');

outputDistance = calculate3ddistance(pointA, pointB);

fprintf('The distance between your two points is: %8.3f\n', outputDistance);