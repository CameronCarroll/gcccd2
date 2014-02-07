function [outputVector] = vector2compd2d(magnitude, direction)
% Function comp2vectord2d
%
% Converts a 2-dimensional array containing vector components into a vector
% with magnitude and direction. (Two-dimensional version.)
% Uses DEGREES!
%
% Input variables:
% (magnitude, direction)
%
% Output variables:
% [x_component, y_component]

x_component = magnitude * cosd(direction);
y_component = magnitude * sind(direction);
outputVector = [x_component y_component];