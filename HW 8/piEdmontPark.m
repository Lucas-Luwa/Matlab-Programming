function [modifiedMap, numPi] = piEdmontPark(map)
    [xLoc, yLoc] = location(map);%Finds the starting position using the location helper function.
    [mods, numPi] = operator(xLoc, yLoc, map);%Sends in starting location and map to the operator helper function for processing. This spits out the number of pies consumed and the new map.
    modifiedMap = mods;%Sets the modifiedMap to the mods value found above.
end

function [newMap,numPi] = operator(xLoc, yLoc, map)%Operator helper function.
    active = true;%Kill switch to stop the while loop. Starts at true.
    newXLoc = xLoc;%Sets the new value to the starting x value.
    newYLoc = yLoc;%Sets the new value to the starting y value.
    newMap = map;%Sets the newMap to the input value.
    numPi = 0;%Initializes the number of pies to 0.
    while active == true%Keeps running as long as active is still true.
        [xDir, yDir, isPie, teleFix] = direction(newXLoc, newYLoc, newMap);%Sends location and adjusted map to the helper function direction to obtain key values.
        if strcmp(newMap{newXLoc, newYLoc}, 'pi')%If the location has a pi, we will run the following code.
            numPi = numPi + 1;%Adds one to the number of pies consumed.
        end
        if xDir == 0 & yDir == 0%If new movement is 0, we will run the following code.
            active = false;%Cuts the code right here since this is the end.
        end
        newMap(newXLoc, newYLoc) = {0};%Clears out the value at the current spot.
        switch teleFix %This compensates for the teleporters.             
            case 'E'
                if ~strcmp(newMap(newXLoc, newYLoc+1), 'pie')%Checks to ensure we aren't clearing the end spot.
                    newMap(newXLoc, newYLoc+1) = {0};%Clears the value of the old teleporter based on the given direciton.
                end
            case 'S'
                if ~strcmp(newMap(newXLoc+1, newYLoc), 'pie')%Checks to ensure we aren't clearing the end spot.
                    newMap(newXLoc+1, newYLoc) = {0};%Clears the value of the old teleporter for the South direction.
                end
            case 'N'
                if ~strcmp(newMap(newXLoc-1, newYLoc), 'pie')%Checks to ensure we aren't stepping on the end spot.
                    newMap(newXLoc-1, newYLoc) = {0};%Clears the value in the North direction.
                end
            case 'W'
                if ~strcmp(newMap(newXLoc, newYLoc-1), 'pie') %Checks to ensure we aren't stepping on the end spot.                
                newMap(newXLoc, newYLoc-1) = {0};%Clears the value in the West Direction.
                end
        end
            newXLoc = newXLoc+xDir;%Adds the next step to the x direction and sets it to the new x location.
            newYLoc = newYLoc+yDir;%Adds the next step to the y direction and sets it to the new y location.
        if strcmp(newMap(newXLoc, newYLoc), 'pie')%Checks to see if the current value is pie.
            active = false;%If so, we need to end the program now.
        end
    end
end

function [xDir, yDir, isPi, teleFix] = direction(xLoc, yLoc, map)%Direction helper function to calculate a number of key values.
    miniactive = true;%Sets the miniactive value to true to start off.
    isPi = false;%This initializes the isPi value to false.
    xDir = 0;%Initializes the xDirection to 0.
    teleFix = ' ';%Placeholder for the teleFix variable.
    yDir = 0;%Initializes the yDirection starting value to 0.
    if iscell(map{xLoc+1, yLoc}) | ischar(map{xLoc+1, yLoc})%Checks the South direction. If it's a cell or a char, we run the code below. 
        if strcmp(map{xLoc+1, yLoc}, 'pie')%If we find pie, we need to set miniactive to false, which will be used later.
            miniactive = false;%Sets miniactive to false.
        elseif iscell(map{xLoc+1, yLoc})%Checks to see if there's a cell at that point.
            map2 = map{xLoc+1,yLoc};%This pulls the value out of the map at the desired point.
            xDir = pythag(map2{1}, map2{3});%Uses the pythagorean theorum function and puts in the row and column for the x value.
            yDir = pythag(map2{2}, map2{4});%Uses the pythagorean theorum function and calculates the y value based on the second row and column.
            teleFix = 'S';%This sets the direction to 'S', which is used in the above function.
        end
        xDir = xDir+1;%Adds one to the direction, which will be an output later on.
    elseif iscell(map{xLoc-1, yLoc}) | ischar(map{xLoc-1, yLoc})%Checks the north direction to see if a cell or char exists at this spot.
        if strcmp(map{xLoc-1, yLoc}, 'pie')%Checks to see if there is a pie in this spot.
            miniactive = false;%If so, the function needs to end.
        elseif iscell(map{xLoc-1, yLoc})%Checks to see if there is a cell in the spot.
            map2 = map{xLoc-1, yLoc};%If so, we need to extract the value from the map.
            xDir = pythag(map2{1}, map2{3});%Calculates the x movement based on the pythagorean theorum calculation for the first row and column.
            yDir = pythag(map2{2}, map2{4});%Calculaltes the y movement based on the pythagorean theorum calculation for the second row and column in this spot.
            teleFix = 'N';%Direction is set to 'N', which is used in the function above.
        end
        xDir = xDir-1;%Change in xDir will be up one row. 
    elseif iscell(map{xLoc, yLoc+1}) | ischar(map{xLoc, yLoc+1})%Checks to see if the value is a cell or a char value at this spot.
        if strcmp(map{xLoc, yLoc+1}, 'pie')%Checks to see if this spot is a pie.
            miniactive = false;%If so, we need to stop.
        elseif iscell(map{xLoc, yLoc+1})%Checks to see if the spot is a cell.
            map2 = map{xLoc,yLoc+1};%If so, we extract the value from this spot.
            xDir = pythag(map2{1}, map2{3});%This calculates the x change using the first row and column and the pythagorean theorum.
            yDir = pythag(map2{2}, map2{4});%This calculates the y change using the pythagorean theorum with the second row and column.
            teleFix = 'E';%This is set to the East, which will be used later on.
        end
        yDir = yDir+1;%We need to increase the y by 1 in this case.
    elseif iscell(map{xLoc, yLoc-1}) | ischar(map{xLoc, yLoc-1})%Checks to see if the current value is a cell or char value.
        if strcmp(map{xLoc, yLoc-1}, 'pie')%Checks to see if pie is in this spot.
            miniactive = false;%If so, we will need to stop moving.
        elseif iscell(map{xLoc, yLoc-1})%This checks to see if the value is a cell.
            map2 = map{xLoc, yLoc-1};%If so, we will need to extract the value.
            xDir = pythag(map2{1}, map2{3});%This uses the pythagorean theorum with the first row and column to find the x value.
            yDir = pythag(map2{2}, map2{4});%This uses the pythaogrean theorum with the second row and column to find the y value.
            teleFix = 'W';%Sets the value to W(West), which will be used later on.
        end
        yDir = yDir-1;%Reduces the y by 1 in this case.
    end
    if miniactive == false%Checks to see if the miniactive variable is false.
        xDir = 0;%If so, x will be 0.
        yDir = 0;%Likewise, y will also be 0.
    end
end

function [xLOC,yLOC] = location(map)%Helper function to find the start location.
    xLOC = 0;%Initializes the x variable to 0.
    yLOC = 0;%Initializes the y variable to 0.
    [row, col] = size(map);%Finds the rows and column sizes in the map.
    for x = 1:row%Will iterate through every row in the map.
       for y = 1:col%Iterates through every column in the map.
           if ischar(map{x,y}) && ~iscell(map{x,y}) && strcmp(map{x,y}, 'GT')%If the value is a character, not a cell, and is equal to GT, we will run the following code.
                xLOC = x;%Sets the xLOC variable to the current iteration number for rows.
                yLOC = y;%Sets the yLoc variable to the current iteration number for columns.
           end
       end
    end
end