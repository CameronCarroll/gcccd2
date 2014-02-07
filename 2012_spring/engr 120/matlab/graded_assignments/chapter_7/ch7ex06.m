% Script File: ch7ex06.m
% Programmer: Cameron Carroll

% Example 6 by F. Geoola


clear;
clc;
clf;

load Two.dat;
x = Two;

fprintf('Word "two" statistics:\n\n')
n = length(x);
fprintf(' Count of data elements in data file: %6.0f\n', n);
fprintf(' Mean: %f \n', mean(x) );
fprintf(' Standard Deviation: %f \n', std(x));
fprintf(' Variance: %f \n', var(x) );
fprintf(' Average Power: %f \n', mean(x.^2));
fprintf('Average Magnitude: %f \n', mean(abs(x)) );

n = length(x);
meanval = mean(x);
std_dev = std(x);

figure(1);
subplot(2, 1, 1);
plot(x);
axis([0 n -1 1]);
title('Example 6: Speech Signal Analysis -- Utterance of word "two"');
xlabel('Index');
ylabel('Speech Utterance Data:');
grid;
subplot(2, 1, 2);
hist(x);
title('Example 6: Speech Signal Analysis -- Histogram of Data');
xlabel('Speech Utterance Data');
ylabel('Population');
grid;

xs = sort(x);
figure(2);
subplot(2, 1, 1);
plot(xs);
axis([0 n -1 1]);
title('Example 6: Speech Signal Analysis: Sorted Utterance of "two"');
text (110, 0.25, '(Sorted Data)');
xlabel('Index');
ylabel('Speech Utterance Data');
grid;
subplot(2,1,2);
hist(xs);
title('Example 6: Speech Signal Analysis: Sorted Histogram');
xlabel('Speech Utterance Data');
ylabel('Population');
grid;

zero_cross_ind = 0;
for ii = 1:length(x)-1
    if x(ii)*x(ii+1) < 0
        zero_cross_ind = zero_cross_ind + 1;
    end
end
fprintf(' Number (index) of zero crossings: %.0f \n', zero_cross_ind);

save ZeroCrossInd.dat zero_cross_ind -ascii;