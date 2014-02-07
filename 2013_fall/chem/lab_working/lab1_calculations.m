# Lab 1 Chem 141; Cameron Carroll; August 22 2013

# CODE REF A:

data = [8.6152 8.4690 8.2965 8.4817 8.5172 8.4314 8.5335 8.4779 8.5124 8.4688];
sorted = sort(data);
dataset = sorted(2:9) # Remove outliers (8.6152 and 8.2965);
tare_weight = 2.1692;
dataset = dataset - tare_weight;

# Part 1, Calculation 1 (Average):
average = sum(dataset) / length(dataset)
average_mass = average

# Part 2, Calculation 2 (Std Dev):
diffs = dataset - average

diffs_squared = diffs.^2

degrees_of_freedom = length(diffs_squared) - 1
mass_stdev = sqrt(sum(diffs_squared) / degrees_of_freedom)
canned_stdev = std(dataset)

#-------------------------------------------------------------------------------------------------------------------------------------------------------
# CODE REF B:

values = [22.14 20.13 16.99 14.43 11.95 9.38 7.01 4.43 1.88];
second_run_values = [28.39 25.78 23.27];
data = [values(1)-values(2) values(2)-values(3) values(3)-values(4) values(4)-values(5)...
 values(5)-values(6) values(6)-values(7) values(7)-values(8) values(8)-values(9)...
  second_run_values(1)-second_run_values(2) second_run_values(2)-second_run_values(3)];

sorted = sort(data);

# Calculate Q values for outliers (first and last values in sorted array)
q1 = (sorted(2)-sorted(1)) / (sorted(10)-sorted(1))
q10 = (sorted(10)-sorted(9)) / (sorted(10) - sorted(1))


dataset = sorted(2:9)


average = mean(dataset)
average_volume = average

diffs = dataset - average

diffs_squared = diffs.^2


degrees_of_freedom = length(diffs_squared) - 1

volume_stdev = sqrt(sum(diffs_squared) / degrees_of_freedom)
canned_stdev = std(dataset)

# ----------------------------------------------------------------------------------------
# CODE REF C:
disp ''
disp 'PART 1C'

density = average_mass / average_volume
# density =  2.4982

theoretical_density = 2.42

percent_error = 100 * (density - theoretical_density) / theoretical_density
# percent_error =  3.2308

random_error = density * sqrt((mass_stdev / average_mass)^2 + (volume_stdev / average_volume)^2)

# -----------------------------------------------------------------------------------------
# CODE REF D:
disp ''
disp 'PART 2A'
without = [87 72 88 81 69 78 80];
with = [71 64 80 69 70 70 72];

avg_without = mean(without)
avg_with = mean(with)

# CODE REF E:
Sp = sqrt((sum((without - avg_without).^2) + sum((with - avg_with).^2)) / (length(without) + length(with) - 2))

t = (avg_without - avg_with) / Sp * sqrt((length(without)*length(with))/(length(without)+length(with)))

#----------------------------------------------------------------------------------------------

# CODE REF F:
disp ''
disp 'PART 2B'

volumes = [0 8.0 17.9 28.75 37.70 47.70];
masses = [88.543 96.015 105.895 116.529 125.625 135.757];
tare = 88.543;
#masses = masses - tare


average_volume = mean(volumes)
average_mass = mean(masses)
m = sum((volumes - average_volume) .* (masses - average_mass)) / sum((volumes - average_volume).^2)
deps = volumes;
inds = masses;
N = length(deps)
s_y = sqrt(((sum(deps.^2) - sum(deps)^2 / N) - m^2 * (sum(inds.^2) - sum(inds)^2 / N))/(N-2))
s_m = sqrt(s_y^2 / (sum(inds.^2) - sum(inds)^2 / N))
s_b = s_y * sqrt(1/(N-(sum(inds)^2/sum(inds.^2))))

b = average_mass - m * average_volume
rho = 0.997394

percent_error = (m - rho) / rho * 100

#--------------------------------------------------------------------
disp ''
disp 'fitting'
p = polyfit(volumes, masses, 1)


