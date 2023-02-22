%% Homework 10: Low Level FIle I/O
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
% Name:Lucas Luwa
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
% - hw10.m
% - kerchoo.m
% - carsCarsCars.m
% - iAmSpeedRead.m
% - pistonCup.m
% - tractorTipping.m
%
%% Test Cases
%
%% kerchoo
%
%    load('kerchoo.mat');
% 
%    kerchoo(fn1);
%    kerchoo_soln(fn1);
% %    visdiff('cupScene_fixed_soln.txt', 'cupScene_fixed.txt');
% 
%    kerchoo(fn2);
%    kerchoo_soln(fn2);
% %    visdiff('courtScene_fixed_soln.txt', 'courtScene_fixed.txt');
% 
%    kerchoo(fn3);
%    kerchoo_soln(fn3);
% %    visdiff('chickScene_fixed_soln.txt', 'chickScene_fixed.txt');
%
%
%
%% carsCarsCars
%
    load('carsCarsCars.mat');
% 
%    carsCarsCars(cars1);
%    carsCarsCars_soln(cars1);
% %    visdiff('Cars1_corrected.txt', 'Cars1_corrected_soln.txt');
% 
   carsCarsCars(cars2);
   carsCarsCars_soln(cars2);
   visdiff('CarsAreSoCOOL_corrected.txt', 'CarsAreSoCOOL_corrected_soln.txt');
% 
%    carsCarsCars(cars3);
%    carsCarsCars_soln(cars3);
% %    visdiff('LightningCARS_corrected.txt', 'LightningCARS_corrected_soln.txt');
%
%
%% iAmSpeedRead
%
%    load('iAmSpeedRead.mat');
% 
%    [str1] = iAmSpeedRead(script1);
%    [str1_soln] = iAmSpeedRead_soln(script1);
%    check1 = isequal(str1, str1_soln);
% 
%    [str2] = iAmSpeedRead(script2);
%    [str2_soln] = iAmSpeedRead_soln(script2);
%    check2 = isequal(str2, str2_soln);
% 
%    [str3] = iAmSpeedRead(script3);
%    [str3_soln] = iAmSpeedRead_soln(script3);
%    check3 = isequal(str3, str3_soln);
%
%
%% pistonCup
%
%    load('pistonCup.mat');
% 
%    [carStats1] = pistonCup(typeFn1);
%    [carStats1_soln] = pistonCup_soln(typeFn1);
%    check1 = isequal(carStats1, carStats1_soln);
% 
%    [carStats2] = pistonCup(typeFn2);
%    [carStats2_soln] = pistonCup_soln(typeFn2);
%    check2 = isequal(carStats2, carStats2_soln);
% 
%    [carStats3] = pistonCup(typeFn3);
%    [carStats3_soln] = pistonCup_soln(typeFn3);
%    check3 = isequal(carStats3, carStats3_soln);
%
%
%% tractorTipping
% %
%    load('tractorTipping.mat');
% 
%    [str1] = tractorTipping(map1);
%    [str1_soln] = tractorTipping_soln(map1);
%    check1 = isequal(str1, str1_soln);
% %    visdiff('map1_updated.txt', 'map1_updated_soln.txt');
%    
%    [str2] = tractorTipping(map2);
%    [str2_soln] = tractorTipping_soln(map2);
%    check2 = isequal(str2, str2_soln);
% %    visdiff('map2_updated.txt', 'map2_updated_soln.txt');
%    
%    [str3] = tractorTipping(map3);
%    [str3_soln] = tractorTipping_soln(map3);
%    check3 = isequal(str3, str3_soln);
% %    visdiff('map3_updated.txt', 'map3_updated_soln.txt');

%