function force = gravity(range,m1,m2)
%GRAVITY      Return force of gravity between two masses
% Function GRAVITY calculate the gravitational force between two objects
% separated by a specified range.
% The usage is:
%
% force = gravity(range,m1,m2)
% where
% range -- range in meters
% m1    -- mass of object 1 in kilograms
% m2    -- mass of object 2 in kilograms
% force -- force in newtons

% Define local variables:
%   gravc -- gravitational constant

% Programmer: Cameron Carroll
%

msg = nargchk(3,3,nargin);
error(msg);

gravc = 6.672e-11;
force = gravc * m1 * m2 / range^2;

end



