%% Homework 01: The Basics
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
% - hw01.m
% - myFirstFunc.m
% - illuminatiFlux.m
% - pythag.m
% - heronsFormula.m
% - cosineCalculator.m
%
%% Test Cases
%
%% myFirstFunc
%
%    load('myFirstFunc.mat');
% 
%    [area1] = myFirstFunc(base1, height1);
%    [area1_soln] = myFirstFunc_soln(base1, height1);
%    check1 = isequal(area1, area1_soln);
% 
%    [area2] = myFirstFunc(base2, height2);
%    [area2_soln] = myFirstFunc_soln(base2, height2);
%    check2 = isequal(area2, area2_soln);
% 
%    [area3] = myFirstFunc(base3, height3);
%    [area3_soln] = myFirstFunc_soln(base3, height3);
%    check3 = isequal(area3, area3_soln);

%
%% illuminatiFlux
%
%    load('illuminatiFlux.mat');
% 
%    [magStr1] = illuminatiFlux(dist1);
%    [magStr1_soln] = illuminatiFlux_soln(dist1);
%    check1 = isequal(magStr1, magStr1_soln);
% 
%    [magStr2] = illuminatiFlux(dist2);
%    [magStr2_soln] = illuminatiFlux_soln(dist2);
%    check2 = isequal(magStr2, magStr2_soln);
% 
%    [magStr3] = illuminatiFlux(dist3);
%    [magStr3_soln] = illuminatiFlux_soln(dist3);
%    check3 = isequal(magStr3, magStr3_soln);
%
%
%% pythag
% 
   load('pythag.mat');

   [b1] = pythag(a1, c1);
   [b1_soln] = pythag_soln(a1, c1);
   check1 = isequal(b1, b1_soln);

   [b2] = pythag(a2, c2);
   [b2_soln] = pythag_soln(a2, c2);
   check2 = isequal(b2, b2_soln);

   [b3] = pythag(a3, c3);
   [b3_soln] = pythag_soln(a3, c3);
   check3 = isequal(b3, b3_soln);
%
%
%% heronsFormula
%
%    load('heronsFormula.mat');
% 
%    [s1, area1] = heronsFormula(Aside1, Bside1, Cside1);
%    [s1_soln, area1_soln] = heronsFormula_soln(Aside1, Bside1, Cside1);
%    check1 = isequal(s1, s1_soln) & isequal(area1, area1_soln);
% 
%    [s2, area2] = heronsFormula(Aside2, Bside2, Cside2);
%    [s2_soln, area2_soln] = heronsFormula_soln(Aside2, Bside2, Cside2);
%    check2 = isequal(s2, s2_soln) & isequal(area2, area2_soln);
% 
%    [s3, area3] = heronsFormula(Aside3, Bside3, Cside3);
%    [s3_soln, area3_soln] = heronsFormula_soln(Aside3, Bside3, Cside3);
%    check3 = isequal(s3, s3_soln) & isequal(area3, area3_soln);
%
%
%% cosineCalculator
%
%    load('cosineCalculator.mat');
% 
%    [angle1] = cosineCalculator(a1, b1, c1);
%    [angle1_soln] = cosineCalculator_soln(a1, b1, c1);
%    check1 = isequal(angle1, angle1_soln);
% 
%    [angle2] = cosineCalculator(a2, b2, c2);
%    [angle2_soln] = cosineCalculator_soln(a2, b2, c2);
%    check2 = isequal(angle2, angle2_soln);
% 
%    [angle3] = cosineCalculator(a3, b3, c3);
%    [angle3_soln] = cosineCalculator_soln(a3, b3, c3);
%    check3 = isequal(angle3, angle3_soln);
%
%