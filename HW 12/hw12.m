%% Homework 12: Plotting and Numerical Methods
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
% - hw12.m
% - kPop.m
% - bigTimeRush.m
% - lodedDiper.m
% - stalkTheBoys.m
% - jonasBrothers.m
%
%% Test Cases
%
%% kPop
%
%    load('kPop.mat');
% 
%    [stdev1] = kPop(memberStats1);
%    [stdev1_soln] = kPop_soln(memberStats1);
%    check1 = isequal(stdev1, stdev1_soln);
% %    [match1, desc1] = checkPlots('kPop', memberStats1)
%        
%    [stdev2] = kPop(memberStats2);
%    [stdev2_soln] = kPop_soln(memberStats2);
%    check2 = isequal(stdev2, stdev2_soln);
% %    [match2, desc2] = checkPlots('kPop', memberStats2)
%    
%    [stdev3] = kPop(memberStats3);
%    [stdev3_soln] = kPop_soln(memberStats3);
%    check3 = isequal(stdev3, stdev3_soln);
% %    [match3, desc3] = checkPlots('kPop', memberStats3)
%    
%
%% bigTimeRush
%
%    load('bigTimeRush.mat');
% 
%    bigTimeRush(tourBusVel1, time1);
%    bigTimeRush_soln(tourBusVel1, time1);
% %    [match1, desc1] = checkPlots('bigTimeRush', tourBusVel1, time1)
% 
%    bigTimeRush(tourBusVel2, time2);
%    bigTimeRush_soln(tourBusVel2, time2);
% %    [match2, desc2] = checkPlots('bigTimeRush', tourBusVel2, time2)
% 
%    bigTimeRush(tourBusVel3, time3);
%    bigTimeRush_soln(tourBusVel3, time3);
% %    [match3, desc3] = checkPlots('bigTimeRush', tourBusVel3, time3)
%
%
%% lodedDiper
% 
%    load('lodedDiper.mat');
% 
%    lodedDiper(x1, y1);
%    lodedDiper_soln(x1, y1);
% %    [match1, desc1] = checkPlots('lodedDiper', x1, y1);
% 
%    lodedDiper(x2, y2);
%    lodedDiper_soln(x2, y2);
% %     [match2, desc2] = checkPlots('lodedDiper', x2, y2);
% 
%    lodedDiper(x3, y3);
%    lodedDiper_soln(x3, y3);
% %    [match3, desc3] = checkPlots('lodedDiper', x3, y3);
%
%
%% stalkTheBoys
%
%    load('stalkTheBoys.mat');
% 
%    stalkTheBoys(file1);
%    stalkTheBoys_soln(file1);
% %    [match1, desc1] = checkPlots('stalkTheBoys', file1);
% 
%    stalkTheBoys(file2);
%    stalkTheBoys_soln(file2);
% %    [match2, desc2] = checkPlots('stalkTheBoys', file2);
% 
%     stalkTheBoys(file3);
%    stalkTheBoys_soln(file3);
% %    [match3, desc3] = checkPlots('stalkTheBoys', file3);
%
%
%% jonasBrothers
%
%    load('jonasBrothers.mat');
% 
%    [popularity1] = jonasBrothers(jonasLocs1, fanLocs1);
%    [popularity1_soln] = jonasBrothers_soln(jonasLocs1, fanLocs1);
%    check1 = isequal(popularity1, popularity1_soln);
% %    [match1, desc1] = checkPlots('jonasBrothers', jonasLocs1, fanLocs1);
% 
%    [popularity2] = jonasBrothers(jonasLocs2, fanLocs2);
%    [popularity2_soln] = jonasBrothers_soln(jonasLocs2, fanLocs2);
%    check2 = isequal(popularity2, popularity2_soln);
% %    [match2, desc2] = checkPlots('jonasBrothers', jonasLocs2, fanLocs2);
%    
%    [popularity3] = jonasBrothers(jonasLocs3, fanLocs3);
%    [popularity3_soln] = jonasBrothers_soln(jonasLocs3, fanLocs3);
%    check3 = isequal(popularity3, popularity3_soln);
% %    [match3, desc3] = checkPlots('jonasBrothers', jonasLocs3, fanLocs3);
%