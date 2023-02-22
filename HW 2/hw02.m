%% Homework 02: Data Primitives
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
% - hw02.m
% - magneticFlux.m
% - shiftCode.m
% - charSplit.m
% - bandsawScraps.m
% - napTime.m
%
%% Test Cases
%
%% magneticFlux
%
%    load('magneticFlux.mat');
% 
%    [dBdt1] = magneticFlux(resis1, len1, curr1);
%    [dBdt1_soln] = magneticFlux_soln(resis1, len1, curr1);
%    check1 = isequal(dBdt1, dBdt1_soln);
% 
%    [dBdt2] = magneticFlux(resis2, len2, curr2);
%    [dBdt2_soln] = magneticFlux_soln(resis2, len2, curr2);
%    check2 = isequal(dBdt2, dBdt2_soln);
% 
%    [dBdt3] = magneticFlux(resis3, len3, curr3);
%    [dBdt3_soln] = magneticFlux_soln(resis3, len3, curr3);
%    check3 = isequal(dBdt3, dBdt3_soln);
%
%
%% shiftCode
%
%    load('shiftCode.mat');
% 
%    [letter1] = shiftCode(num1);
%    [letter1_soln] = shiftCode_soln(num1);
%    check1 = isequal(letter1, letter1_soln);
% 
%    [letter2] = shiftCode(num2);
%    [letter2_soln] = shiftCode_soln(num2);
%    check2 = isequal(letter2, letter2_soln);
% 
%    [letter3] = shiftCode(num3);
%    [letter3_soln] = shiftCode_soln(num3);
%    check3 = isequal(letter3, letter3_soln);
%
%
%% charSplit
%
%    load('charSplit.mat');
% 
%    [leftLet1, rightLet1] = charSplit(split1);
%    [leftLet1_soln, rightLet1_soln] = charSplit_soln(split1);
%    check1 = isequal(leftLet1, leftLet1_soln) & isequal(rightLet1, rightLet1_soln);
% 
%    [leftLet2, rightLet2] = charSplit(split2);
%    [leftLet2_soln, rightLet2_soln] = charSplit_soln(split2);
%    check2 = isequal(leftLet2, leftLet2_soln) & isequal(rightLet2, rightLet2_soln);
% 
%    [leftLet3, rightLet3] = charSplit(split3);
%    [leftLet3_soln, rightLet3_soln] = charSplit_soln(split3);
%    check3 = isequal(leftLet3, leftLet3_soln) & isequal(rightLet3, rightLet3_soln);
%
%
%% bandsawScraps
%
%    load('bandsawScraps.mat');
% 
%    [feetLeft1, inchesLeft1] = bandsawScraps(inchesToCut1);
%    [feetLeft1_soln, inchesLeft1_soln] = bandsawScraps_soln(inchesToCut1);
%    check1 = isequal(feetLeft1, feetLeft1_soln) & isequal(inchesLeft1, inchesLeft1_soln);
% 
%    [feetLeft2, inchesLeft2] = bandsawScraps(inchesToCut2);
%    [feetLeft2_soln, inchesLeft2_soln] = bandsawScraps_soln(inchesToCut2);
%    check2 = isequal(feetLeft2, feetLeft2_soln) & isequal(inchesLeft2, inchesLeft2_soln);
% 
%    [feetLeft3, inchesLeft3] = bandsawScraps(inchesToCut3);
%    [feetLeft3_soln, inchesLeft3_soln] = bandsawScraps_soln(inchesToCut3);
%    check3 = isequal(feetLeft3, feetLeft3_soln) & isequal(inchesLeft3, inchesLeft3_soln);
%
%
%% napTime
%
%    load('napTime.mat');
% 
%    [hrHand1, minHand1] = napTime(hr1, min1, delta1);
%    [hrHand1_soln, minHand1_soln] = napTime_soln(hr1, min1, delta1);
%    check1 = isequal(hrHand1, hrHand1_soln) & isequal(minHand1, minHand1_soln);
% 
%    [hrHand2, minHand2] = napTime(hr2, min2, delta2);
%    [hrHand2_soln, minHand2_soln] = napTime_soln(hr2, min2, delta2);
%    check2 = isequal(hrHand2, hrHand2_soln) & isequal(minHand2, minHand2_soln);
% 
%    [hrHand3, minHand3] = napTime(hr3, min3, delta3);
%    [hrHand3_soln, minHand3_soln] = napTime_soln(hr3, min3, delta3);
%    check3 = isequal(hrHand3, hrHand3_soln) & isequal(minHand3, minHand3_soln);
% 
%