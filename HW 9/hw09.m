%% Homework 09: Structures
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
% - hw09.m
% - celery.m
% - luckyCharms.m
% - nutTheRightTaco.m
% - stTacoDay.m
% - corndogWars.m
%
%% Test Cases
%
%% celery
%
   load('celery.mat');

   [structFoods1, parasite1] = celery(cellFoods1);
   [structFoods1_soln] = celery_soln(cellFoods1);
   check1 = isequal(structFoods1, structFoods1_soln);

   [structFoods2] = celery(cellFoods2);
   [structFoods2_soln] = celery_soln(cellFoods2);
   check2 = isequal(structFoods2, structFoods2_soln);

   [structFoods3] = celery(cellFoods3);
   [structFoods3_soln] = celery_soln(cellFoods3);
   check3 = isequal(structFoods3, structFoods3_soln);
%
%
%% luckyCharms
%
%    load('luckyCharms.mat');
% 
%    [str1] = luckyCharms(customerInfo1, invoices1);
%    [str1_soln] = luckyCharms_soln(customerInfo1, invoices1);
%    check1 = isequal(str1, str1_soln);
% 
%    [str2] = luckyCharms(customerInfo2, invoices2);
%    [str2_soln] = luckyCharms_soln(customerInfo2, invoices2);
%    check2 = isequal(str2, str2_soln);
% 
%    [str3] = luckyCharms(customerInfo3, invoices3);
%    [str3_soln] = luckyCharms_soln(customerInfo3, invoices3);
%    check3 = isequal(str3, str3_soln);
%
%
%% nutTheRightTaco
% 
%    load('nutTheRightTaco.mat');
% 
%    [yummy1] = nutTheRightTaco(yucky1);
%    [yummy1_soln] = nutTheRightTaco_soln(yucky1);
%    check1 = isequal(yummy1, yummy1_soln);
% 
%    [yummy2] = nutTheRightTaco(yucky2);
%    [yummy2_soln] = nutTheRightTaco_soln(yucky2);
%    check2 = isequal(yummy2, yummy2_soln);
% 
%    [yummy3] = nutTheRightTaco(yucky3);
%    [yummy3_soln] = nutTheRightTaco_soln(yucky3);
%    check3 = isequal(yummy3, yummy3_soln);
%
%
%% stTacoDay
%
%    load('stTacoDay.mat');
% 
%    [veggieStr1] = stTacoDay(orders1);
%    [veggieStr1_soln] = stTacoDay_soln(orders1);
%    check1 = isequal(veggieStr1, veggieStr1_soln);
% 
%    [veggieStr2] = stTacoDay(orders2);
%    [veggieStr2_soln] = stTacoDay_soln(orders2);
%    check2 = isequal(veggieStr2, veggieStr2_soln);
% 
%    [veggieStr3] = stTacoDay(orders3);
%    [veggieStr3_soln] = stTacoDay_soln(orders3);
%    check3 = isequal(veggieStr3, veggieStr3_soln);
%
%
%% corndogWars
%
%    load('corndogWars.mat');
% 
%    [result1, updatedA1, updatedB1] = corndogWars(fighterA1, fighterB1);
%    [result1_soln, updatedA1_soln, updatedB1_soln] = corndogWars_soln(fighterA1, fighterB1);
%    check1 = isequal(result1, result1_soln) & isequal(updatedA1, updatedA1_soln) & isequal(updatedB1, updatedB1_soln);
% 
%    [result2, updatedA2, updatedB2] = corndogWars(fighterA2, fighterB2);
%    [result2_soln, updatedA2_soln, updatedB2_soln] = corndogWars_soln(fighterA2, fighterB2);
%    check2 = isequal(result2, result2_soln) & isequal(updatedA2, updatedA2_soln) & isequal(updatedB2, updatedB2_soln);
% 
%    [result3, updatedA3, updatedB3] = corndogWars(fighterA3, fighterB3);
%    [result3_soln, updatedA3_soln, updatedB3_soln] = corndogWars_soln(fighterA3, fighterB3);
%    check3 = isequal(result3, result3_soln) & isequal(updatedA3, updatedA3_soln) & isequal(updatedB3, updatedB3_soln);
%
%