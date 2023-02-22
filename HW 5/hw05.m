%% Homework 05: Arrays
%
%% Honor Code Agreement
%
% By entering my name, GT Username, and Section below, I am confirming that
% I am bound by the Georgia Tech Honor Code, which can be found here: 
%
% http://osi.gatech.edu/content/honor-code.
%
% Failing to agree will result in a 0 for the entire assignment.
%
% Name: lluwa3
% GT Username (gburdell3): lluwa3@gatech.edu
% Section: A04
%
%% Banned Functions
%
% In general, you are allowed to use any function you see fit. However, 
% there are a few functions you are NOT allowed to ever use. Additionally, 
% specific homework problems may specify that you cannot use certain
% functions. Code that uses any of these functions will automatically 
% receive a 0.
%
% NEVER use the following functions in your function code:
%
% * input
% * solve
% * fclose all
% * close
% * load
% * figure
% * imshow
% * image
% * global
%
%% Files to Submit
% 
% For full credit, you should submit *ONLY* the following files to Canvas 
% by the assignment deadline:
%
% - hw05.m
% - bossFinder.m
% - numberWorker.m
% - graphcmp.m
% - coinCounter.m
% - timeUnscrambler.m
%
%% Test Cases
%
%% bossFinder
%
%    load('bossFinder.mat');
% 
%    [boss1] = bossFinder(array1);
%    [boss1_soln] = bossFinder_soln(array1);
%    check1 = isequal(boss1, boss1_soln);
% 
%    [boss2] = bossFinder(array2);
%    [boss2_soln] = bossFinder_soln(array2);
%    check2 = isequal(boss2, boss2_soln);
% 
%    [boss3] = bossFinder(array3);
%    [boss3_soln] = bossFinder_soln(array3);
%    check3 = isequal(boss3, boss3_soln);
%
%
%% numberWorker
%
%    load('numberWorker.mat');
% 
%    [expIntQuarterly1, bankStatement1] = numberWorker(loans1, intRates1, time1, goal1);
%    [expIntQuarterly1_soln, bankStatement1_soln] = numberWorker_soln(loans1, intRates1, time1, goal1);
%    check1 = isequal(expIntQuarterly1, expIntQuarterly1_soln) & isequal(bankStatement1, bankStatement1_soln);
% 
%    [expIntQuarterly2, bankStatement2] = numberWorker(loans2, intRates2, time2, goal2);
%    [expIntQuarterly2_soln, bankStatement2_soln] = numberWorker_soln(loans2, intRates2, time2, goal2);
%    check2 = isequal(expIntQuarterly2, expIntQuarterly2_soln) & isequal(bankStatement2, bankStatement2_soln);
% 
%    [expIntQuarterly3, bankStatement3] = numberWorker(loans3, intRates3, time3, goal3);
%    [expIntQuarterly3_soln, bankStatement3_soln] = numberWorker_soln(loans3, intRates3, time3, goal3);
%    check3 = isequal(expIntQuarterly3, expIntQuarterly3_soln) & isequal(bankStatement3, bankStatement3_soln);
%
%
%% graphcmp
%
%    load('graphcmp.mat');
%    
%    [str1] = graphcmp(myGraph1, bossGraph1);
%    [str1_soln] = graphcmp_soln(myGraph1, bossGraph1);
%    check1 = isequal(str1, str1_soln);
% 
%    [str2] = graphcmp(myGraph2, bossGraph2);
%    [str2_soln] = graphcmp_soln(myGraph2, bossGraph2);
%    check2 = isequal(str2, str2_soln);
% 
%    [str3] = graphcmp(myGraph3, bossGraph3);
%    [str3_soln] = graphcmp_soln(myGraph3, bossGraph3);
%    check3 = isequal(str3, str3_soln);
%    
%
%
%% coinCounter
%
%    load('coinCounter.mat');
% 
%    [tipArr1, sentence1] = coinCounter(coinArr1, coinOrder1);
%    [tipArr1_soln, sentence1_soln] = coinCounter_soln(coinArr1, coinOrder1);
%    check1 = isequal(tipArr1, tipArr1_soln) & isequal(sentence1, sentence1_soln);
% 
%    [tipArr2, sentence2] = coinCounter(coinArr2, coinOrder2);
%    [tipArr2_soln, sentence2_soln] = coinCounter_soln(coinArr2, coinOrder2);
%    check2 = isequal(tipArr2, tipArr2_soln) & isequal(sentence2, sentence2_soln);
% 
%    [tipArr3, sentence3] = coinCounter(coinArr3, coinOrder3);
%    [tipArr3_soln, sentence3_soln] = coinCounter_soln(coinArr3, coinOrder3);
%    check3 = isequal(tipArr3, tipArr3_soln) & isequal(sentence3, sentence3_soln);
%
%
%% timeUnscrambler
%
%     load('timeUnscrambler.mat');
% 
%    [fixed1] = timeUnscrambler(scrambled1);
%    [fixed1_soln] = timeUnscrambler_soln(scrambled1);
%    check1 = isequal(fixed1, fixed1_soln);
% 
%    [fixed2] = timeUnscrambler(scrambled2);
%    [fixed2_soln] = timeUnscrambler_soln(scrambled2);
%    check2 = isequal(fixed2, fixed2_soln);
% 
%    [fixed3] = timeUnscrambler(scrambled3);
%    [fixed3_soln] = timeUnscrambler_soln(scrambled3);
%    check3 = isequal(fixed3, fixed3_soln);
% 
%