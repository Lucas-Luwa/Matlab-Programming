%% Homework 08: Cell Arrays
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
% - hw08.m
% - piCrust.m
% - piDetective.m
% - piEcesOfPie.m
% - pillagePublix.m
% - piThonSux.m
% - piEdmontPark.m
%
%% Test Cases
%
%% piCrust
%
%    load('piCrust.mat');
% 
%    [maryBerrySays1, maxLayers1] = piCrust(pie1);
%    [maryBerrySays1_soln, maxLayers1_soln] = piCrust_soln(pie1);
%    check1 = isequal(maryBerrySays1, maryBerrySays1_soln) & isequal(maxLayers1, maxLayers1_soln);
% 
%    [maryBerrySays2, maxLayers2] = piCrust(pie2);
%    [maryBerrySays2_soln, maxLayers2_soln] = piCrust_soln(pie2);
%    check2 = isequal(maryBerrySays2, maryBerrySays2_soln) & isequal(maxLayers2, maxLayers2_soln);
% 
%    [maryBerrySays3, maxLayers3] = piCrust(pie3);
%    [maryBerrySays3_soln, maxLayers3_soln] = piCrust_soln(pie3);
%    check3 = isequal(maryBerrySays3, maryBerrySays3_soln) & isequal(maxLayers3, maxLayers3_soln);
%
%
%% piDetective
%
%    load('piDetective.mat');
% 
%    [out1, num1] = piDetective(pCell1, iCell1);
%    [out1_soln, num1_soln] = piDetective_soln(pCell1, iCell1);
%    check1 = isequal(out1, out1_soln) & isequal(num1, num1_soln);
% 
%    [out2, num2] = piDetective(pCell2, iCell2);
%    [out2_soln, num2_soln] = piDetective_soln(pCell2, iCell2);
%    check2 = isequal(out2, out2_soln) & isequal(num2, num2_soln);
% 
%    [out3, num3] = piDetective(pCell3, iCell3);
%    [out3_soln, num3_soln] = piDetective_soln(pCell3, iCell3);
%    check3 = isequal(out3, out3_soln) & isequal(num3, num3_soln);
%
%
%% piEcesOfPie
%
%    load('piEcesOfPie.mat');
% 
%    [ca_fix1] = piEcesOfPie(ca1);
%    [ca_fix1_soln] = piEcesOfPie_soln(ca1);
%    check1 = isequal(ca_fix1, ca_fix1_soln);
% 
%    [ca_fix2] = piEcesOfPie(ca2);
%    [ca_fix2_soln] = piEcesOfPie_soln(ca2);
%    check2 = isequal(ca_fix2, ca_fix2_soln);
% 
%    [ca_fix3] = piEcesOfPie(ca3);
%    [ca_fix3_soln] = piEcesOfPie_soln(ca3);
%    check3 = isequal(ca_fix3, ca_fix3_soln);
%
%
%% pillagePublix
%
%    load('pillagePublix.mat');
% 
%    [updatedInventory1, out1] = pillagePublix(inventory1, list1);
%    [updatedInventory1_soln, out1_soln] = pillagePublix_soln(inventory1, list1);
%    check1 = isequal(updatedInventory1, updatedInventory1_soln) & isequal(out1, out1_soln);
% 
%    [updatedInventory2, out2] = pillagePublix(inventory2, list2);
%    [updatedInventory2_soln, out2_soln] = pillagePublix_soln(inventory2, list2);
%    check2 = isequal(updatedInventory2, updatedInventory2_soln) & isequal(out2, out2_soln);
% 
%    [updatedInventory3, out3] = pillagePublix(inventory3, list3);
%    [updatedInventory3_soln, out3_soln] = pillagePublix_soln(inventory3, list3);
%    check3 = isequal(updatedInventory3, updatedInventory3_soln) & isequal(out3, out3_soln);
%
%
%% piThonSux
%
%    load('piThonSux.mat');
% 
%    [updatedScores1] = piThonSux(scoreSheet1);
%    [updatedScores1_soln] = piThonSux_soln(scoreSheet1);
%    check1 = isequal(updatedScores1, updatedScores1_soln);
% 
%    [updatedScores2] = piThonSux(scoreSheet2);
%    [updatedScores2_soln] = piThonSux_soln(scoreSheet2);
%    check2 = isequal(updatedScores2, updatedScores2_soln);
% 
%    [updatedScores3] = piThonSux(scoreSheet3);
%    [updatedScores3_soln] = piThonSux_soln(scoreSheet3);
%    check3 = isequal(updatedScores3, updatedScores3_soln);
%
%
%% piEdmontPark
%
%    load('piEdmontPark.mat');
% 
%    [finalMap1, numPi1] = piEdmontPark(map1);
%    [finalMap1_soln, numPi1_soln] = piEdmontPark_soln(map1);
%    check1 = isequal(finalMap1, finalMap1_soln) & isequal(numPi1, numPi1_soln);
% 
%    [finalMap2, numPi2] = piEdmontPark(map2);
%    [finalMap2_soln, numPi2_soln] = piEdmontPark_soln(map2);
%    check2 = isequal(finalMap2, finalMap2_soln) & isequal(numPi2, numPi2_soln);
% 
%    [finalMap3, numPi3] = piEdmontPark(map3);
%    [finalMap3_soln, numPi3_soln] = piEdmontPark_soln(map3);
%    check3 = isequal(finalMap3, finalMap3_soln) & isequal(numPi3, numPi3_soln);
%
%