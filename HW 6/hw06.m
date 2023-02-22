%% Homework 06: Conditionals
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
% - hw06.m
% - finalPredict.m
% - majorLeagueStats.m
% - awardSeason.m
% - passItOn.m
% - geoffCollins.m
% - romanHoops.m
%
%% Test Cases
%
%% finalPredict
%
%    load('finalPredict.mat');
% 
%    [str1] = finalPredict(points1, teams1, capt1);
%    [str1_soln] = finalPredict_soln(points1, teams1, capt1);
%    check1 = isequal(str1, str1_soln);
% 
%    [str2] = finalPredict(points2, teams2, capt2);
%    [str2_soln] = finalPredict_soln(points2, teams2, capt2);
%    check2 = isequal(str2, str2_soln);
% 
%    [str3] = finalPredict(points3, teams3, capt3);
%    [str3_soln] = finalPredict_soln(points3, teams3, capt3);
%    check3 = isequal(str3, str3_soln);
% 
%
%% majorLeagueStats
%
%    load('majorLeagueStats.mat');
% 
%    [str1] = majorLeagueStats(name1, strength1, agility1, speed1, handedness1);
%    [str1_soln] = majorLeagueStats_soln(name1, strength1, agility1, speed1, handedness1);
%    check1 = isequal(str1, str1_soln);
% 
%    [str2] = majorLeagueStats(name2, strength2, agility2, speed2, handedness2);
%    [str2_soln] = majorLeagueStats_soln(name2, strength2, agility2, speed2, handedness2);
%    check2 = isequal(str2, str2_soln);
% 
%    [str3] = majorLeagueStats(name3, strength3, agility3, speed3, handedness3);
%    [str3_soln] = majorLeagueStats_soln(name3, strength3, agility3, speed3, handedness3);
%    check3 = isequal(str3, str3_soln);
%
%
%% awardSeason
%
%    load('awardSeason.mat');
% 
%    [str1] = awardSeason(playera1, playerb1);
%    [str1_soln] = awardSeason_soln(playera1, playerb1);
%    check1 = isequal(str1, str1_soln);
% 
%    [str2] = awardSeason(playera2, playerb2);
%    [str2_soln] = awardSeason_soln(playera2, playerb2);
%    check2 = isequal(str2, str2_soln);
% 
%    [str3] = awardSeason(playera3, playerb3);
%    [str3_soln] = awardSeason_soln(playera3, playerb3);
%    check3 = isequal(str3, str3_soln);
%   
%
%
%% passItOn
% 
%    load('passItOn.mat');
%    load('passItOn2.mat');
% 
%    [move1] = passItOn(rink1);
%    [move1_soln] = passItOn_soln(rink1);
%    check1 = isequal(move1, move1_soln);
% 
%    [move2] = passItOn(rink2);
%    [move2_soln] = passItOn_soln(rink2);
%    check2 = isequal(move2, move2_soln);
% 
%    [move3] = passItOn(rink3);
%    [move3_soln] = passItOn_soln(rink3);
%    check3 = isequal(move3, move3_soln);
%
%
%% geoffCollins
%
%    load('geoffCollins.mat');
% 
%    [fieldFinal1, statement1] = geoffCollins(field1);
%    [fieldFinal1_soln, statement1_soln] = geoffCollins_soln(field1);
%    check1 = isequal(fieldFinal1, fieldFinal1_soln) & isequal(statement1, statement1_soln);
% 
%    [fieldFinal2, statement2] = geoffCollins(field2);
%    [fieldFinal2_soln, statement2_soln] = geoffCollins_soln(field2);
%    check2 = isequal(fieldFinal2, fieldFinal2_soln) & isequal(statement2, statement2_soln);
% 
%    [fieldFinal3, statement3] = geoffCollins(field3);
%    [fieldFinal3_soln, statement3_soln] = geoffCollins_soln(field3);
%    check3 = isequal(fieldFinal3, fieldFinal3_soln) & isequal(statement3, statement3_soln);
   
%
%
%% romanHoops
%
%    load('romanHoops.mat');
% 
%    [str1, clear1] = romanHoops(msg1, key1, shift1);
%    [str1_soln, clear1_soln] = romanHoops_soln(msg1, key1, shift1);
%    check1 = isequal(str1, str1_soln) & isequal(clear1, clear1_soln);
% 
%    [str2, clear2] = romanHoops(msg2, key2, shift2);
%    [str2_soln, clear2_soln] = romanHoops_soln(msg2, key2, shift2);
%    check2 = isequal(str2, str2_soln) & isequal(clear2, clear2_soln);
% 
%    [str3, clear3] = romanHoops(msg3, key3, shift3);
%    [str3_soln, clear3_soln] = romanHoops_soln(msg3, key3, shift3);
%    check3 = isequal(str3, str3_soln) & isequal(clear3, clear3_soln);
%
%