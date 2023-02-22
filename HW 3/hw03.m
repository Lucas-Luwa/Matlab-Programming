%% Homework 03: Vectors of Doubles and Chars
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
% Name: Lucas Luwa
% GT Username (gburdell3): lluwa3
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
% - hw03.m
% - cookieThrow.m
% - unscrambledEggs.m
% - grilledCheese.m
% - mealPrep.m
% - blender.m
% - secretFormula.m
%
%% Test Cases
%
%% cookieThrow
%
%    load('cookieThrow.mat');
% 
%    [updatedV1] = cookieThrow(vel1, acc1, time1);
%    [updatedV1_soln] = cookieThrow_soln(vel1, acc1, time1);
%    check1 = isequal(updatedV1, updatedV1_soln);
% 
%    [updatedV2] = cookieThrow(vel2, acc2, time2);
%    [updatedV2_soln] = cookieThrow_soln(vel2, acc2, time2);
%    check2 = isequal(updatedV2, updatedV2_soln);
% 
%    [updatedV3] = cookieThrow(vel3, acc3, time3);
%    [updatedV3_soln] = cookieThrow_soln(vel3, acc3, time3);
%    check3 = isequal(updatedV3, updatedV3_soln);
%
%
%% unscrambledEggs
%
   load('unscrambledEggs.mat');

   [unscrambled1] = unscrambledEggs(pattern1, scrambled1);
   [unscrambled1_soln] = unscrambledEggs_soln(pattern1, scrambled1);
   check1 = isequal(unscrambled1, unscrambled1_soln);

   [unscrambled2] = unscrambledEggs(pattern2, scrambled2);
   [unscrambled2_soln] = unscrambledEggs_soln(pattern2, scrambled2);
   check2 = isequal(unscrambled2, unscrambled2_soln);

   [unscrambled3] = unscrambledEggs(pattern3, scrambled3);
   [unscrambled3_soln] = unscrambledEggs_soln(pattern3, scrambled3);
   check3 = isequal(unscrambled3, unscrambled3_soln);
%
%
%% grilledCheese
% 
%    load('grilledCheese.mat');
% 
%    [scoreStats1] = grilledCheese(a1, b1, c1);
%    [scoreStats1_soln] = grilledCheese_soln(a1, b1, c1);
%    check1 = isequal(scoreStats1, scoreStats1_soln);
% 
%    [scoreStats2] = grilledCheese(a2, b2, c2);
%    [scoreStats2_soln] = grilledCheese_soln(a2, b2, c2);
%    check2 = isequal(scoreStats2, scoreStats2_soln);
% 
%    [scoreStats3] = grilledCheese(a3, b3, c3);
%    [scoreStats3_soln] = grilledCheese_soln(a3, b3, c3);
%    check3 = isequal(scoreStats3, scoreStats3_soln);
%
%
%% mealPrep
% 
%    load('mealPrep.mat');
% 
%    [fixed1] = mealPrep(mixed1);
%    [fixed1_soln] = mealPrep_soln(mixed1);
%    check1 = isequal(fixed1, fixed1_soln);
% 
%    [fixed2] = mealPrep(mixed2);
%    [fixed2_soln] = mealPrep_soln(mixed2);
%    check2 = isequal(fixed2, fixed2_soln);
% 
%    [fixed3] = mealPrep(mixed3);
%    [fixed3_soln] = mealPrep_soln(mixed3);
%    check3 = isequal(fixed3, fixed3_soln);
%
%
%% blender
%
%    load('blender.mat');
% 
%    [str1] = blender(list1, ingredient1);
%    [str1_soln] = blender_soln(list1, ingredient1);
%    check1 = isequal(str1, str1_soln);
% 
%    [str2] = blender(list2, ingredient2);
%    [str2_soln] = blender_soln(list2, ingredient2);
%    check2 = isequal(str2, str2_soln);
% 
%    [str3] = blender(list3, ingredient3);
%    [str3_soln] = blender_soln(list3, ingredient3);
%    check3 = isequal(str3, str3_soln);
%
%
%% secretFormula
%
%    load('secretFormula.mat');
% 
%    [desc1] = secretFormula(numVec1, base1, shift1, encStr1, quantVec1);
%    [desc1_soln] = secretFormula_soln(numVec1, base1, shift1, encStr1, quantVec1);
%    check1 = isequal(desc1, desc1_soln);
% 
%    [desc2] = secretFormula(numVec2, base2, shift2, encStr2, quantVec2);
%    [desc2_soln] = secretFormula_soln(numVec2, base2, shift2, encStr2, quantVec2);
%    check2 = isequal(desc2, desc2_soln);
% 
%    [desc3] = secretFormula(numVec3, base3, shift3, encStr3, quantVec3);
%    [desc3_soln] = secretFormula_soln(numVec3, base3, shift3, encStr3, quantVec3);
%    check3 = isequal(desc3, desc3_soln);
%
%