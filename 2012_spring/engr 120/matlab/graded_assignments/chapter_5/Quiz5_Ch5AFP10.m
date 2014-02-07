%  Script file: Quiz5_(Ch5AFP10).m
%
%  Programmer: Cameron Carroll

% Clear all;
clear; clc; clf

disp '        Chapter 5 Problem 10: Application of Anonymous Functions';
disp '           Computation of the Energy Corresponding to'; 
disp '                  Masses from 1 to 100 kg';
disp '    ===============================================================';

%  Set the constant
c = 2.9979e+8; % m/s
c = c.^2;      % This reduces the execution time since it is caculated once

%  Create the anonymous function to compute the kinetic energy 
Energy = @(m) 0.5 .* m .* c;

% Create the vectore of mass (independent variable)
m = 1:100;

% Pass the mass vector, m, to anonymous function to compute the 
% corresponding energy in kJ
E = Energy(m);

% Create an appropriate array of the result for tabular printing
Result = [m' E'];

%Print out the result
disp (' Computation of the Energy Corresponding to Masses from 1 to 100 kg');
disp (' ------------------------------------------------------------------');
disp ('     Mass (kg)  --    Energy (Joules)   '); 
disp ('   -----------------------------------  ');
fprintf('       %1.0f                 %4.3g  \n', Result');




% Plot the result using plot function
figure(1)
plot(m, E);
title ('Quiz5: Released Energy Versus Mass (Linear Plot)')
xlabel ('Mass (kg)')
ylabel ('Energy (kJ)')
grid on;

% Plot the result using semilog function
figure(2)
semilogx(m, E);
title ('Quiz5: Released Energy Versus Mass (Linear/Log Plot)')
xlabel ('Mass (kg)')
ylabel ('Energy (kJ)')
grid on;





% Plot the result using semilogy function
figure(3)
semilogy(m, E);
title ('Quiz5: Released Energy Versus Mass (Log/Linear Plot)')
xlabel ('Mass (kg)')
ylabel ('Energy (kJ)')
grid on;




% Plot the result using loglog function
figure(4)
loglog(m, E);
title ('Quiz5: Released Energy Versus Mass (Logarithmic Plot)')
xlabel ('Mass (kg)')
ylabel ('Energy (kJ)')
grid on;






