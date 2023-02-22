%% Homework 11: High Level I/O and Plotting
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
% - hw11.m
% - genP.m
% - rocketRumble.m
% - gottaCatchEmAll.m
% - pokemonGO.m
% - pokemonRanger.m
%
%% Test Cases
%
%% genP
%
%     load('genP.mat');
% 
%    genP(gen1);
%    genP_soln(gen1);
% %    check1 = isequal(readcell('generation1.xlsx'),readcell('generation1_soln.xlsx'));
% 
%    genP(gen2);
%    genP_soln(gen2);
% %    check2 = isequal(readcell('generation3.xlsx'),readcell('generation3_soln.xlsx'));
% 
%    genP(gen3);
%    genP_soln(gen3);
% %    check3 = isequal(readcell('generation4.xlsx'),readcell('generation4_soln.xlsx'));
%    
%
%
%
%% rocketRumble
%
%     load('rocketRumble.mat');
% % 
%    [bestPoke1] = rocketRumble(myPoke1, opponentPoke1);
%    [bestPoke1_soln] = rocketRumble_soln(myPoke1, opponentPoke1);
%    check1 = isequal(bestPoke1, bestPoke1_soln);
% %     checkFile = isequal(readcell('myPoke1_updated.xlsx'),readcell('myPoke1_updated_soln.xlsx'));
% 
%    [bestPoke2] = rocketRumble(myPoke2, opponentPoke2);
%    [bestPoke2_soln] = rocketRumble_soln(myPoke2, opponentPoke2);
%    check2 = isequal(bestPoke2, bestPoke2_soln);
% %     checkFile2 = isequal(readcell('myPoke2_updated.xlsx'),readcell('myPoke2_updated_soln.xlsx'));
% 
%    [bestPoke3] = rocketRumble(myPoke3, opponentPoke3);
%    [bestPoke3_soln] = rocketRumble_soln(myPoke3, opponentPoke3);
%    check3 = isequal(bestPoke3, bestPoke3_soln);
% %     checkFile3 = isequal(readcell('myPoke3_updated.xlsx'),readcell('myPoke3_updated_soln.xlsx'));
% 
% %    [bestPoke4] = rocketRumble('myPoke5.xlsx', 'myPoke5.xlsx');
% %    [bestPoke4_soln] = rocketRumble_soln('myPoke5.xlsx', 'myPoke5.xlsx');
% %    check4 = isequal(bestPoke4, bestPoke4_soln);
% %    checkFile4 = isequal(readcell('myPoke5_updated.xlsx'),readcell('myPoke5_updated_soln.xlsx'));
% %    
% %    [bestPoke5] = rocketRumble('myPoke6.xlsx', 'myPoke6.xlsx');
% %    [bestPoke5_soln] = rocketRumble_soln('myPoke6.xlsx', 'myPoke6.xlsx');
% %    check5 = isequal(bestPoke5, bestPoke5_soln);
% %     checkFile5 = isequal(readcell('myPoke6_updated.xlsx'),readcell('myPoke6_updated_soln.xlsx'));
%
%% gottaCatchEmAll
%
%     load('gottaCatchEmAll.mat');
% 
%    [countedSent1] = gottaCatchEmAll(txtFn1);
%    [countedSent1_soln] = gottaCatchEmAll_soln(txtFn1);
%    check1 = isequal(countedSent1, countedSent1_soln);
% %    checkFile = isequal(readcell('scene1_counted.xlsx'),readcell('scene1_counted_soln.xlsx'));
%    
%    [countedSent2] = gottaCatchEmAll(txtFn2);
%    [countedSent2_soln] = gottaCatchEmAll_soln(txtFn2);
%    check2 = isequal(countedSent2, countedSent2_soln);
% %    checkFile2 = isequal(readcell('scene2_counted.xlsx'),readcell('scene2_counted_soln.xlsx'));
% 
%    [countedSent3] = gottaCatchEmAll(txtFn3);
%    [countedSent3_soln] = gottaCatchEmAll_soln(txtFn3);
%    check3 = isequal(countedSent3, countedSent3_soln);
% %    checkFile3 = isequal(readcell('scene3_counted.xlsx'),readcell('scene3_counted_soln.xlsx'));
%
%
%% pokemonGO
%
%    load('pokemonGO.mat');
% 
%    pokemonGO(time1, pos1, cutOff1);
%    pokemonGO_soln(time1, pos1, cutOff1);
% %    [match1, desc1] = checkPlots('pokemonGO', time1, pos1, cutOff1);
% 
%    pokemonGO(time2, pos2, cutOff2);
%    pokemonGO_soln(time2, pos2, cutOff2);
% %    [match2, desc2] = checkPlots('pokemonGO', time2, pos2, cutOff2);
% 
%    pokemonGO(time3, pos3, cutOff3);
%    pokemonGO_soln(time3, pos3, cutOff3);
% %    [match3, desc3] = checkPlots('pokemonGO', time3, pos3, cutOff3);
%
%
%
%% pokemonRanger
%
% %   load('pokemonRanger2.mat');
%   load('pokemonRanger.mat');
%    pokemonRanger(wildPokemon1);
%    pokemonRanger_soln(wildPokemon1);
%   [match1, desc1] = checkPlots('pokemonRanger', wildPokemon1);
%   
% %    pokemonRanger('wildPokemon6.xlsx');
% %    pokemonRanger_soln('wildPokemon5.xlsx');
% %   [match6, desc6] = checkPlots('pokemonRanger', 'wildPokemon5.xlsx');
% 
%    pokemonRanger(wildPokemon2);
%    pokemonRanger_soln(wildPokemon2);
% %    [match2, desc2] = checkPlots('pokemonRanger', wildPokemon2);
% 
%    pokemonRanger(wildPokemon3);
%    pokemonRanger_soln(wildPokemon3);
% %    [match3, desc3] = checkPlots('pokemonRanger', wildPokemon3);
%
%
%