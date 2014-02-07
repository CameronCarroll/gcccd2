% Script file: guesser.m
%
% Programmer: Cameron Carroll

clc;
clear;

low = 1;
high = 100;
successful = false;
passes = 0;
while ~successful

    passes = passes + 1;
    guess = fix(low+high)/2;
    
    fprintf('I guess %g. ', guess);
    answer = input('Is that your number? (1)Yes (2)Higher (3)Lower: \n');
    switch (answer)
        case {1}
            successful = true;
            fprintf('Success within %g iterations.\n', passes);
        case {2}
            low = guess - 1;
            guess = guess + fix(low+high)/2;
        case{3}
            high = guess - 1;
            guess = guess + fix(low+high)/2;
    end  
end