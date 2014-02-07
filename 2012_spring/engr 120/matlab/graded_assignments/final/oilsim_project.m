% Script File: oilsim_project.m
%
% Exxon-Valdez Spill Simulation: Engr 120 Final Project
% Copyright (C) 2012 Cameron Carroll
%
% This program is free software: you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation, either version 3 of the License, or
% (at your option) any later version.
%
% This program is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.
%
% You should have received a copy of the GNU General Public License
% along with this program.  If not, see <http://www.gnu.org/licenses/>.
%
% Originally Written: May 10 - 12, 2012
%
% Purpose: Simulation of Exxon-Valdez oil spill;
%   Simulation acts according to the following rules:
%   1. Some percentage, (E%) evaporates out of a given grid.
%   2. Of the remaining oil in that grid, 10 / (10 + V) of the oil remains,
%   where V is wind velocity in miles per hour.
%   3. Of the oil that dos not evaporate and does not remain,
%   40% move immediately to the east,
%   20% moves into the northeast and southeast grids (each),
%   10% moves into the north and south grids (each).
%
%   Note that this simulation takes advantage of symmetry: From the middle
%   row, changes propogate identically for the upper half and lower half of
%   the graph.

% Default Values:
%   # of gallons spilled = 100,000.00 gal. [Input range 0.0 - 100,000]
%   Wind Velocity (miles per hour) = 0.1 mph. [Input range > 0]
%   Evaporation Rate = 0.001 [Input range 0-1]
%   Iterations = 300 [Input range > 0]
%   Maximum Captures = 10 [Input range 1-25]
%
% Modifications:
%   (none)

clear; clc;
pause on;

% Flags to indicate either console or google earth simulation modes:
% The generate_grid flag is used to regenerate the empty grid figure, but
% it's slow so don't leave it enabled.
console_simulation = 0;
map_simulation = 1;
generate_grid = 0;

if (map_simulation)
    clf;
    close all;
end

disp '              Engr 120 Final Project';
disp '        Exxon-Valdez Oil Spill Simulation';
disp '    ----------------------------------------';
disp(char(10));
disp '    (Leave fields blank for default values.)';
disp(char(10));

% Handle inputs and data validation ---------------------------------------

gallons_spilled = input('  Enter number of gallons spilled [Default 100,000]: ');
wind_velocity = input('  Enter wind velocity (mph) [Default 0.1]: ');
evap_rate = input('  Enter evaporation rate [Default 0.001] [Range 0-1]: ');
iterations = input('  Enter number of iterations to simulate [Default 300]: ');

default_gallons_spilled = 100000;
default_wind_velocity = 0.1;
default_evap_rate = 0.001;
default_iterations = 300;

if isempty(gallons_spilled)
    gallons_spilled = default_gallons_spilled;
elseif (gallons_spilled > 100000)
    warning('InputError:OutOfBounds', 'Input exceeded boundaries. [gallons spilled]');
    gallons_spilled = default_gallons_spilled;
elseif (gallons_spilled < eps)
    warning('InputError:OutOfBounds', 'Input exceeded boundaries. [gallons spilled]');
    gallons_spilled = default_gallons_spilled;
end

if isempty(wind_velocity)
    wind_velocity = default_wind_velocity;
elseif (wind_velocity > 100000)
    warning('InputError:OutOfBounds', 'Input exceeded boundaries. [wind velocity]');
    wind_velocity = default_wind_velocity;
elseif (wind_velocity < eps)
    warning('InputError:OutOfBounds', 'Input exceeded boundaries. [wind velocity]');
    wind_velocity = default_wind_velocity;
end

if isempty(evap_rate)
    evap_rate = default_evap_rate;
elseif (evap_rate > 1)
    warning('InputError:OutOfBounds', 'Input exceeded boundaries. [evap_rate]');
    evap_rate = default_evap_rate;
elseif (evap_rate < eps)
    warning('InputError:OutOfBounds', 'Input exceeded boundaries. [evap_rate]');
    evap_rate = default_evap_rate;
end

if isempty(iterations)
    iterations = default_iterations;
elseif (iterations > 10000)
    warning('InputError:OutOfBounds', 'Input exceeded boundaries. [iterations]');
    iterations = default_iterations;
elseif (iterations < 1)
    warning('InputError:OutOfBounds', 'Input exceeded boundaries. [ierations]');
    iterations = default_iterations;
end

% Seed data: Oil spill at leftmost column, middle row. --------------------
% Passive matrix is a copy of active, renewed on every iteration, used to
% hold the previous iteration's data for calculations.
active = repmat(eps, 23, 9);
passive = active;
active(12, 1) = gallons_spilled;
%h, v and d_rate represent percentages of oil moved into the east
%(horizonal), northeast/southeast (diagonal), or north/south (vertical)
h_rate = 0.40; %40% of oil moved (just east)
v_rate = 0.10; % 20% of oil moved (north and south)
d_rate = 0.20; %40% of oil moved (two diagonals)

% Handle calculation loop ------------------------------------------------
[rows cols] = size(active);
% Note that sym represents the symmetrical line, active(12, :)
% The value of sym is actually doubled because the indexing in the loop
% starts at 12 and goes up from there. (sym - ii) = negative if not
sym = (rows + 1);
% Captures is used to store the simulation state at various points.
captures = cell(1, 11);
captures{1} = active;

for tt = 1:iterations
    if (console_simulation) && (mod(tt, 3) == 0)
        pause(0.3);
        clc;
        active
    elseif (map_simulation) && (mod(tt, 30) == 0)
        captures{tt / 30 + 1} = active;
    end
    for ii = (rows+1)/2:rows-1
        for jj = 1:cols-1
            passive = active;
            % Compute loss due to evaporation
            active(ii, jj) = active(ii, jj) - passive(ii, jj) * evap_rate;
            % Compute total oil displaced due to wind
            oil_moved = active(ii, jj) * (wind_velocity / (10 + wind_velocity));
            % Compute oil to remain in this grid
            active(ii, jj) = active(ii, jj) - oil_moved;
            % Compute oil movements: north and south
            active(ii+1, jj) = active(ii+1, jj) + v_rate * oil_moved;
            active(ii-1, jj) = active(ii-1, jj) + v_rate * oil_moved;
            % Compute oil movements: northeast/southeast
            active(ii+1, jj+1) = active(ii+1, jj+1) + d_rate * oil_moved;
            active(ii-1, jj+1) = active(ii-1, jj+1) + d_rate * oil_moved;
            % Compute oil movements: immediately east
            active(ii, jj+1) = active(ii, jj+1) + h_rate * oil_moved;
            
            % Perform same calculations again, but for upper half:
            active(sym-ii, jj) = active(sym-ii, jj) - passive(sym-ii, jj) * evap_rate;
            oil_moved = active(sym-ii, jj) * (wind_velocity / (10 + wind_velocity));
            active(sym-ii, jj) = active(sym-ii, jj) - oil_moved;
            active(sym-ii+1, jj) = active(sym-ii+1, jj) + v_rate * oil_moved;
            active(sym-ii-1, jj) = active(sym-ii-1, jj) + v_rate * oil_moved;
            active(sym-ii+1, jj+1) = active(sym-ii+1, jj+1) + d_rate * oil_moved;
            active(sym-ii-1, jj+1) = active(sym-ii-1, jj+1) + d_rate * oil_moved;
            active(sym-ii, jj+1) = active(sym-ii, jj+1) + h_rate * oil_moved;
        end
    end
end

% Try to load the existing empty grid figure; Flag for creation if it
% doesn't exist.
try
    if (map_simulation)
        empty_grid = hgload('emptygrid');
        close all;
    end
catch ME
    switch ME.identifier
        case 'MATLAB:load:couldNotReadFile'
            warning('LoadError:FileNotFound', 'Couldnt load the figure file; Generating a new one...');
            generate_grid = 1;
        otherwise
            warning('LoadError:FileNotFound', 'Unknown error. Couldnt load figure file.');
            generate_grid = 1;
    end
end

% Helper function to generate the figure grid. This is only executed if the
% generate_grid flag is set manually, or there is no 'emptygrid.fig' file
% found in path.
if (generate_grid)
    rows = 22;
    cols = 9;
    hold on;
    for ii = 1:cols
        for jj = 1:rows
            x = linspace(ii, cols);
            y = linspace(jj, jj);
            plot(x, y);
        end
    end
    
    for ii = 1:cols
        for jj = 1:rows
            x = linspace(ii, ii);
            y = linspace(jj, rows);
            plot(x, y);
        end
    end
    
    axis([0 10 0 23]);
    set(gca, 'YDir', 'reverse');
    title('Exxon Valdez Oil Spill Simulation');
    h1 = figure(1);
    hgsave(h1, 'emptygrid');
    close all;
end

% Plotting function. Note that 'relevant' consists of only rows 'within'
% simulation bounds, which excludes first and last row as well as the last
% column.
if (map_simulation)
    rows = 21;
    cols = 8;
    emptyfig = load('emptygrid.fig', '-mat');
    disp (char(10));
    disp 'Drawing capture frames; This may take a moment...';
    for ii = 1:length(captures)
        current = struct2handle(emptyfig.hgS_070000, 0);
        set(current, 'visible', 'off');
        hold on;
        relevant = captures{ii}(2:end-1, 1:end-1);
        for jj = 1:rows
            for kk = 1:cols
                if relevant(jj, kk) > 0.001
                    scatter(kk+0.5, jj+0.5, 'k', 'filled');
                end
            end
        end
        thistitle = sprintf('Exxon Valdez Oil Spill Simulation -- Capture [%g/%g]', ...
            ii, length(captures));
        title(thistitle);
        M(ii) = getframe;
        close;
    end
    figure;
    disp 'Drawing finished; Displaying simulation animation...';
    disp(char(10));
    movie(M, 20);
end





