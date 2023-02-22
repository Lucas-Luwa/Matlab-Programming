function [pathMap condition] = holyCannoli(map)
    pathMap = map;
    %Creates a new variable and sets it to map. This allows for adjustments
    %to be made and accounts for repeats(such as the incident in case #3).
    cannoliCount = 0;
    %cannoliCount is initialized to 0.
    endPath = 'false';
    %endPath is initialized to false.
    currX = 1;
    %The current x value is initialized to 1.
    currY = 1;
    %The starting y value is set to 1.
    updateX = 0;
    %We initialize the updateX variable to 0.
    updateY = 0;
    %We initialize the updateY variable to 0.
    while cannoliCount < 31 & strcmp(endPath, 'false')
        %Runs unless cannoliCount exceeds the limit or if the path ends.
        loc = pathMap(currX, currY);
        %Pulls value of current position.
        if loc == '^' | loc == '<' | loc == '>' | loc == 'v'
            %Finds values needed for direction.
            [updateX, updateY] = pather(loc);
            %Plugs these values into the pather helper function to obtain
            %update x and y values.
        elseif loc == 'c'
            %Looks for locations with cannoli.
            cannoliCount = cannoliCount+1;
            %Adds 1 to cannoliCount.
        elseif loc == 'f'
            %Looks for instances where the end of the path is given.
            endPath = 'true';
            %endPath is set to true to end the while loop.
        end
        pathMap(currX, currY) = '#';
        %Sets covered positions to #.
        currX = currX + updateX;
        %Updates the x position.
        currY = currY + updateY;
        %Updates the y position.
    end
    condition = output(map, cannoliCount, endPath);
    %Sets the condition to the result of the output helper function. The
    %map, cannoliCount and endPath values are sent in to this function for
    %evaluation.
end

function sentence = output(originalMap, cannoliCount, pathResult)
    %Helper function to determine the correct sentence to output.
    mask = originalMap == 'c';
    %Looks for the locations of all cannoli on the map.
    totalCannoli = sum(sum(mask));
    %Sums twice to find the total number of Cannoli on the map.
    leftOvers = totalCannoli - cannoliCount;
    %Removes the consumed value of cannoli to determine the amount left
    %over.
    if strcmp(pathResult, 'false')
        %This section runs if we ate too much cannoli and the pathEnd is
        %still false.
        sentence = sprintf('Darn, I ate too many cannoli. I wasn''t able to eat %d of them :(', leftOvers);
        %This sentence outputs the number of cannoli remaining in the
        %sentence equation.
    else
        %If pathResult is true, we run this section.
        sentence = sprintf('I ate %d cannoli, and missed %d along the way!', cannoliCount, leftOvers);
        %This sentence incorporates the leftover cannoli and the number of
        %cannoli consumed by me. 
    end 
end
function [pathX, pathY] = pather(item)
    %Helper function that helps determine the update values for X and Y.
    switch item
        %Switches based on each item.
        case '>'
            %If direction is right, we set the X value to 0 and the Y
            %update value to 1.
            pathX = 0;
            pathY = 1;
        case '<'
            %If it is to the left, we will set the X update value to 0 and
            %the Y update value to -1.
            pathX = 0;
            pathY = -1;
        case '^'
            %If the direction up, the X update value is set to -1 and the Y
            %update value is set to 0.
            pathX = -1;
            pathY = 0;
        otherwise
            %Anything else has to be down, so we set the X update to 1 and
            %the Y update to 0.
            pathX = 1;
            pathY = 0; 
    end
end