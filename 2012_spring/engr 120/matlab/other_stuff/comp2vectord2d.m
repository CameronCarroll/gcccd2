function [magnitude, direction] = comp2vectord2d(inputVector)
% Function comp2vectord2d
%
% Converts a 2-dimensional array containing vector components into a vector
% with magnitude and direction. (Two-dimensional version.)
% Uses DEGREES!
%
% Input variables:
% inputVector -- [x_component, y_component]

% Output variables:
% magnitude -- 
% direction --


x_component = inputVector(1);
y_component = inputVector(2);

magnitude = sqrt(x_component^2 + y_component^2);
direction = atand(y_component / x_component);