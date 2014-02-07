function outputDistance = calculate3ddistance(pointA, pointB)
%CALCULATE3DDISTANCE Calculates the distance between two three-dimensional
%points (pointA, pointB)

% Calling sequence:
%   calculate3ddistance(pointA, pointB)

% Declare variables:
%   pointA -- (1x3) matrix containing x, y, z coordinates.
%   pointB -- (1x3) matrix containing x, y, z coordinates.

outputDistance = sqrt( (pointA(1) - pointB(1))^2 +  ...
    (pointA(2) - pointB(2))^2 + (pointA(3) - pointB(3))^2 );
end %function outputDistance