%% Homework 07: Iteration
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
% - hw07.m
% - perfectARecipe.m
% - pastrySales.m
% - goGetAC00kie.m
% - cookieCounter.m
% - holyCannoli.m
%
%% Test Cases
%
%% perfectARecipe
%
%    load('perfectARecipe.mat');
% 
%    [count1] = perfectARecipe(errors1);
%    [count1_soln] = perfectARecipe_soln(errors1);
%    check1 = isequal(count1, count1_soln);
% 
%    [count2] = perfectARecipe(errors2);
%    [count2_soln] = perfectARecipe_soln(errors2);
%    check2 = isequal(count2, count2_soln);
% 
%    [count3] = perfectARecipe(errors3);
%    [count3_soln] = perfectARecipe_soln(errors3);
%    check3 = isequal(count3, count3_soln);
%
%
%% pastrySales
%
%    load('pastrySales.mat');
% 
%    [outVec1] = pastrySales(knownProfits1);
%    [outVec1_soln] = pastrySales_soln(knownProfits1);
%    check1 = isequal(outVec1, outVec1_soln);
% 
%    [outVec2] = pastrySales(knownProfits2);
%    [outVec2_soln] = pastrySales_soln(knownProfits2);
%    check2 = isequal(outVec2, outVec2_soln);
% 
%    [outVec3] = pastrySales(knownProfits3);
%    [outVec3_soln] = pastrySales_soln(knownProfits3);
%    check3 = isequal(outVec3, outVec3_soln);
%
%
%% goGetAC00kie
%
%    load('goGetAC00kie.mat');
% 
%    [long1, short1, avg1, mode1] = goGetAC00kie(c00kies1);
%    [long1_soln, short1_soln, avg1_soln, mode1_soln] = goGetAC00kie_soln(c00kies1);
%    check1 = isequal(long1, long1_soln) & isequal(short1, short1_soln) & isequal(avg1, avg1_soln) & isequal(mode1, mode1_soln);
% 
%    [long2, short2, avg2, mode2] = goGetAC00kie(c00kies2);
%    [long2_soln, short2_soln, avg2_soln, mode2_soln] = goGetAC00kie_soln(c00kies2);
%    check2 = isequal(long2, long2_soln) & isequal(short2, short2_soln) & isequal(avg2, avg2_soln) & isequal(mode2, mode2_soln);
% 
%    [long3, short3, avg3, mode3] = goGetAC00kie(c00kies3);
%    [long3_soln, short3_soln, avg3_soln, mode3_soln] = goGetAC00kie_soln(c00kies3);
%    check3 = isequal(long3, long3_soln) & isequal(short3, short3_soln) & isequal(avg3, avg3_soln) & isequal(mode3, mode3_soln);
%
%
%% cookieCounter
%
%    load('cookieCounter.mat');
% 
%    [values1] = cookieCounter(calories1);
%    [values1_soln] = cookieCounter_soln(calories1);
%    check1 = isequal(values1, values1_soln);
% 
%    [values2] = cookieCounter(calories2);
%    [values2_soln] = cookieCounter_soln(calories2);
%    check2 = isequal(values2, values2_soln);
% 
%    [values3] = cookieCounter(calories3);
%    [values3_soln] = cookieCounter_soln(calories3);
%    check3 = isequal(values3, values3_soln);
%
%
%% holyCannoli
%
%    load('holyCannoli.mat');
% 
%    [pathedMap1, cannoliDesc1] = holyCannoli(map1);
%    [pathedMap1_soln, cannoliDesc1_soln] = holyCannoli_soln(map1);
%    check1 = isequal(pathedMap1, pathedMap1_soln) & isequal(cannoliDesc1, cannoliDesc1_soln);
% 
%    [pathedMap2, cannoliDesc2] = holyCannoli(map2);
%    [pathedMap2_soln, cannoliDesc2_soln] = holyCannoli_soln(map2);
%    check2 = isequal(pathedMap2, pathedMap2_soln) & isequal(cannoliDesc2, cannoliDesc2_soln);
% 
%    [pathedMap3, cannoliDesc3] = holyCannoli(map3);
%    [pathedMap3_soln, cannoliDesc3_soln] = holyCannoli_soln(map3);
%    check3 = isequal(pathedMap3, pathedMap3_soln) & isequal(cannoliDesc3, cannoliDesc3_soln);
%
%