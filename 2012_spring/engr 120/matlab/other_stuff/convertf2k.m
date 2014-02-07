function tempKelvin = convertf2k (tempFahrenheit)
%CONVERTF2K Converts an input fahrenheit temperature (tempFahrenheit) into its kelvin
%equivalent (tempKelvin).
%
% Calling sequence:
%   convertftok(tempFahrenheit)

% Define variables:
%   tempFahrenheit -- fahrenheit input temperature (float to 3 s.f.)

% Calculate kelvin temperature:
tempKelvin = (5./9) .* (tempFahrenheit - 32.0) + 273.15;

end %function convertf2k