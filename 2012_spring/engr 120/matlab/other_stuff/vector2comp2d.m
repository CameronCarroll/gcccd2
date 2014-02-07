function [outputVector] = vector2comp2d(magnitude, direction)
% Function comp2vector2d
%
% Converts a 2-dimensional array containing vector components into a vector
% with magnitude and direction. (Two-dimensional version.)
% Uses RADIANS!
%
% Input variables:
% (magnitude, direction)
%
% Output variables:
% [x_component, y_component]

x_component = magnitude * cos(direction);
y_component = magnitude * sin(direction);
outputVector = [x_component y_component];