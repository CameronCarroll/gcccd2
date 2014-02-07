% Script File: ch4p04.m
%
% Programmer: Cameron Carroll
%
% February 21-22, 2012
%
% Purpose:
% ---------
% Solve and plot f(x) = x^2 - 3x + 2. Intended to show the
% differences between a vectorized approach to problem solving versus
% a loop-based approach.
%
% Variables:
% -----------
% range -- independent variable, vectorized calculation
% answerVector -- dependent variable, vectorized calculation
% rangeLoop -- independent, loop calculation
% answerLoop -- dependent, loop calculation
%
% size -- number of elements + 1, for indexing
% hVectorPlot -- handle/object for vector plot
% hLoopPlot -- handle/object for loop plot
%


clear;
clc;
clf;

%Vector approach:
range = -1:0.1:3;
answerVector = range.^2 - 3.*range + 2;

%For-loop approach:
size = (3 - (-1)) / 0.1 + 1;
rangeLoop(1) = -1;
answerLoop(1) = rangeLoop(1)^2 - 3 * rangeLoop(1) + 2;
for ii = 2:size;
    rangeLoop(ii) = rangeLoop(ii-1) + 0.1;
    answerLoop(ii) = rangeLoop(ii)^2 - 3*rangeLoop(ii) + 2;
end

hVectorPlot = plot(range, answerVector);
title('Range vs Position using vector calculations.');
set(hVectorPlot, 'LineWidth', 3, 'LineStyle', '--', 'Color', [1 0 0]);%red
text(1, 4.5, 'Click to view next graph...');

waitforbuttonpress;
close;

hLoopPlot = plot(rangeLoop, answerLoop);
title('Range vs Position using loop calculations.');
set(hLoopPlot, 'LineWidth', 3, 'LineStyle', '--', 'Color', [0 0 1]);%blue
text(1, 4.5, 'Press any key to exit...');
waitforbuttonpress;
close;