%% Homework 04: Masking
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
% Name: <Your Name Here>
% GT Username (gburdell3): <Your GT Username Here>
% Section: <Your Section Here>
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
% - hw04.m
% - secretAdmirer.m
% - cupidStats.m
% - flowerPicking.m
% - sweetHeart.m
% - suitorCompatibility.m
%
%% Test Cases
%
%% secretAdmirer
%
%    load('secretAdmirer.mat');
% 
%    [message1] = secretAdmirer(varA_1, varB_1);
%    [message1_soln] = secretAdmirer_soln(varA_1, varB_1);
%    check1 = isequal(message1, message1_soln);
% 
%    [message2] = secretAdmirer(varA_2, varB_2);
%    [message2_soln] = secretAdmirer_soln(varA_2, varB_2);
%    check2 = isequal(message2, message2_soln);
% 
%    [message3] = secretAdmirer(varA_3, varB_3);
%    [message3_soln] = secretAdmirer_soln(varA_3, varB_3);
%    check3 = isequal(message3, message3_soln);
%
%
%% cupidStats
%
%    load('cupidStats.mat');
% 
%    [match1] = cupidStats(matlabSkill1, riceTime1, ghHighScore1);
%    [match1_soln] = cupidStats_soln(matlabSkill1, riceTime1, ghHighScore1);
%    check1 = isequal(match1, match1_soln);
% 
%    [match2] = cupidStats(matlabSkill2, riceTime2, ghHighScore2);
%    [match2_soln] = cupidStats_soln(matlabSkill2, riceTime2, ghHighScore2);
%    check2 = isequal(match2, match2_soln);
% 
%    [match3] = cupidStats(matlabSkill3, riceTime3, ghHighScore3);
%    [match3_soln] = cupidStats_soln(matlabSkill3, riceTime3, ghHighScore3);
%    check3 = isequal(match3, match3_soln);
%
%
%% flowerPicking
%
   load('flowerPicking.mat');

   [str1, num1] = flowerPicking(flower1, assortment1, stored1);
   [str1_soln, num1_soln] = flowerPicking_soln(flower1, assortment1, stored1);
   check1 = isequal(str1, str1_soln) & isequal(num1, num1_soln);

   [str2, num2] = flowerPicking(flower2, assortment2, stored2);
   [str2_soln, num2_soln] = flowerPicking_soln(flower2, assortment2, stored2);
   check2 = isequal(str2, str2_soln) & isequal(num2, num2_soln);

   [str3, num3] = flowerPicking(flower3, assortment3, stored3);
   [str3_soln, num3_soln] = flowerPicking_soln(flower3, assortment3, stored3);
   check3 = isequal(str3, str3_soln) & isequal(num3, num3_soln);
%
%
%% sweetHeart
%
%    load('sweetHeart.mat');
% 
%    [fixedMessage1] = sweetHeart(brokenMessage1, str1, words1);
%    [fixedMessage1_soln] = sweetHeart_soln(brokenMessage1, str1, words1);
%    check1 = isequal(fixedMessage1, fixedMessage1_soln);
% 
%    [fixedMessage2] = sweetHeart(brokenMessage2, str2, words2);
%    [fixedMessage2_soln] = sweetHeart_soln(brokenMessage2, str2, words2);
%    check2 = isequal(fixedMessage2, fixedMessage2_soln);
% 
%    [fixedMessage3] = sweetHeart(brokenMessage3, str3, words3);
%    [fixedMessage3_soln] = sweetHeart_soln(brokenMessage3, str3, words3);
%    check3 = isequal(fixedMessage3, fixedMessage3_soln);
%
%
%% suitorCompatibility
%
%    load('suitorCompatibility.mat');
% 
%    [winners1] = suitorCompatibility(names1, skill1);
%    [winners1_soln] = suitorCompatibility_soln(names1, skill1);
%    check1 = isequal(winners1, winners1_soln);
% 
%    [winners2] = suitorCompatibility(names2, skill2);
%    [winners2_soln] = suitorCompatibility_soln(names2, skill2);
%    check2 = isequal(winners2, winners2_soln);
% 
%    [winners3] = suitorCompatibility(names3, skill3);
%    [winners3_soln] = suitorCompatibility_soln(names3, skill3);
%    check3 = isequal(winners3, winners3_soln);
%
%