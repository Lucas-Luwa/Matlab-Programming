function resultOfShenanigans = tractorTipping(initFileName)
    myFile = fopen(initFileName);%Open the input file.
    [fileName, ~] = strtok(initFileName, '.');%Split the filename to remove the .txt portion of the name.
    newFileName = [fileName '_updated.txt'];%Create a new filename with the new format for the name.
    newFile = fopen(newFileName, 'w');%Create a new file with the name found above. Writing permissions are granted.
    [resultOfShenanigans, modifiedMap, mapAdjuster] = combiner(myFile);%Send the file to the combiner to obtain the results, modified map and mapadjuster.
    newModMap = reverter(modifiedMap, mapAdjuster);%Send the modified map and mapAdjustmer values to reverter to convert it back to its original form.
    fprintf(newFile, newModMap);%Write the contents to the new file.
    fclose(myFile);%Close the original file.
    fclose(newFile);%Close the second file.
end

function outputStr = reverter(modifiedMap, mapAdjuster)%Helper function that reverts the modified map back to its original form.
    index = find(modifiedMap == 't');%Finds all instances of t in the modified map.
    modifiedMap(index) = 'T';%Reverts these values back to 'T'.
    outputStr = '';%Initilaizes the outputStr to an empty character vector.
    [row, col] = size(modifiedMap);%Finds the size of the modified map.
    modifiedMap(row,:) = [];%Removes the bottom row of the array.
    modifiedMap(1,:) = [];%Removes the first row of the array.
    modifiedMap(:,col) = [];%Removes the last column in the array.
    modifiedMap(:,1) = [];%Removes the first column in the array.
    [newRow, newCol] = size(modifiedMap);%Finds the new size of the modified map.
    for x = 1:newRow-1%Runs 
        outputStr = [outputStr modifiedMap(x,1:end-mapAdjuster(x)) '\n'];%Adds one row at a time to the output character vector.
    end
    outputStr = [outputStr modifiedMap(newRow,1:end-mapAdjuster(newRow))];%Manually adds the last row of the new map to ensure \n is not included.
end

function [str, newMap,numBoost] = combiner(fileName)%Combiner helper function.
    tempStr = {};%Initializes the tempStr cell Array to an empty cell array.
    str = '';%Initializes the str character vector to an empty vector.
    init = fgetl(fileName);%Pulls the first line without \n from the file.
    while ischar(init)%Runs as long as the line contains characters.
        tempStr = [tempStr {init}];%Adds the line to the end of tempStr cell array.
        init = fgetl(fileName);%Moves onto the next line in the file.
    end
    numBoost = [];%Initializes numBoost to an empty vector.
    newMap = [];%initializes newMap to an empty vector.
    [paddedStr, numBoost] = cushionMaker(tempStr);%Sends the tempStr to the cushionmaker helper function to ensure we do not index out of bounds.
    [tractorCount, frankDetect, totalTractors, newMap] = operator(paddedStr, numBoost);%Sends the newly padded array and the numBoost values to the operator helper function for processing.
        if frankDetect%Runs if frank finds us.
            str = sprintf('You tipped %d tractors before being caught by Frank. You''d better run or he''s gonna get you!', tractorCount);%Sentence for situation where Frank finds us.
        elseif tractorCount == totalTractors%If all the tractors are tipper, run this.
            str = sprintf('Yay, you tipped all %d tractors!! Tractors is so dumb!', totalTractors);%Sentence when all are tipped.
        else%If not all the tractors are tipper and frank didn't find us, we run this.
            str = sprintf('You tipped %d tractors out of %d tractors. That''s funny right there!', tractorCount, totalTractors);%Sentence when some are tipped.
        end
end

function [tractorCounter, frankDetect, totalTractor, newMap] = operator(strArr, numBoost)%Operator helper function.
    totalTractor = length(find(strArr == 'T'));%Finds the number of Tractors in the strArr for future use in creating output sentences.
    isAlive = true;%Starts off with isAlive as true.
    [startX, startY] = find(strArr == 'M');%Finds the location of us.
    [frankX, frankY] = find(strArr == 'F');%Finds the location of Sir Frank.
    frankVision = {[frankX+1, frankY], [frankX-1, frankY], [frankX,frankY+1], [frankX, frankY-1]};%Finds the locations that are visible by Frank.
    currentDirection = 'DNE';%Starts off the current Direction as DNE to indicate nothing has happened yet.
    currentX = startX;%Starts off X at our x position.
    currentY = startY;%Starts off Y at our y position.
    tractorCounter = 0;%Start off tractor Counter at 0.
    frankDetect = false;%Initialize the frankDetect value to false.
    while isAlive%Keep running as long as frank hasn't found us and end hasn't been triggered.
        myVision = {[currentX+1, currentY], [currentX-1, currentY], [currentX,currentY-1], [currentX, currentY+1]};%Finds my vision field.
        %down, up, left, right
        for i = 1:4%Runs four times since we only have four places to check.
            if currentX == frankVision{i}(1) & currentY == frankVision{i}(2)%Runs if Frank can see us.
                frankDetect = true;%Trips the frank Detect logical value.
                strArr(currentX, currentY) = 'C';%Sets the current spot to 'C' since we've been caught.
            end
        end
        if strcmp(strArr(currentX, currentY),'E')%Runs this section if the end of the segment has been reached.
            isAlive = false;%Alive is set to false since we've reached the end of the path.
        end
        if frankDetect == false & isAlive == true%If frank hasn't found us and we are still good to go, we run this section.
            if strcmp(currentDirection, 'DNE')%Runs on the first attempt for initialization purposes.
                for i = 1:4%Runs four times since we can only see four tiles at any given moment.
                    if strcmp(strArr(myVision{i}(1),myVision{i}(2)), 'T')%Runs if we see a tractor right out of the gate.
                        strArr(myVision{i}(1),myVision{i}(2)) = 't';%Changes the big T to a small t for masking purposes. We will need to change this back when we write to the txt file.
                        tractorCounter = tractorCounter+1;%Increase the tractor counter by 1.
                    end
                    if ~strcmp(strArr(myVision{i}(1),myVision{i}(2)), '.') & ~strcmpi(strArr(myVision{i}(1),myVision{i}(2)), 'T')%Runs if the spot isn't a period or a T
                        if i == 1%Runs on first pass.
                            currentDirection = 'd';%Sets the current direction to d based on the initial set of movements.
                        elseif i == 2%Runs on the second pass.
                            currentDirection = 'u';%Sets the current direction to u based on the initial set of momvements.
                        elseif i == 3%Runs on third pass.
                            currentDirection = 'l';%Sets the current direction to l based on the initial set of movements.
                        else%Runs on last pass.
                            currentDirection = 'r';%Sets the current direction to r based on the initial set of movements.
                        end
                    end
                end
            else
               for i = 1:4%Runs four times since we can only see four tiles.
                    if strcmp(strArr(myVision{i}(1),myVision{i}(2)), 'T')%Runs if we can see a tractor.
                        strArr(myVision{i}(1),myVision{i}(2)) = 't';%Changes the big T to a small t for masking purposes.
                        tractorCounter = tractorCounter+1;%Increases tractorCounter by 1.
                    end
               end
                    strArr(currentX, currentY) = '#';%Changes positions passed over to #.
                    [currentX,currentY,currentDirection] = update(currentX, currentY, currentDirection, strArr);%Sends position, direction and the strArr for position update purposes.
            end
        else
            isAlive = false;%If none of the above apply, we know this is the end of the path.
        end
    end
    newMap = strArr;%Sets the newMap to the strArr array(which has been modified in the lines above.
end

function [x,y, newDir] = update(currX, currY, currentDir, strArr)%update helper function designed to find the new position of our mischevious car.
   if strcmp(currentDir, 'u')%Runs if the current direction is u.
       x = currX-1;%Moves the x up one row.
       y = currY;%Keeps the y value the same.
   elseif strcmp(currentDir, 'd')%Runs if the current direction is d.
       x = currX+1;%Moves the x down one row.
       y = currY;%Keeps the y value the same.
   elseif strcmp(currentDir, 'r')%Runs if the current diretion is r.
       x = currX;%Keeps the x value the same.
       y = currY+1;%Moves the y value right one column.
   elseif strcmp(currentDir, 'l')%Runs if the current direction is l.
       x = currX;%Keeps the x value the same.
       y = currY-1;%Moves the y value left one column.
   end
   newDir = direction(x,y,currentDir, strArr);%Sends current x and y along with current direction and strArr to find the new direction.
end

function newDir = direction(x,y,currDir, strArr)%Direction helper function designed to find the new direction.
   if strcmp(strArr(x,y), 'v')%Checks to see if the new direction is a down arrow.
       newDir = 'd';%If so, we will set the new direction to 'd'.
   elseif strcmp(strArr(x,y), '^')%Checks to see if the new direction is an up arrow.
       newDir = 'u';%If so, we will set the new direction to 'u'.
   elseif strcmp(strArr(x,y), '>')%Checks to see if the new direction is a right arrow.
       newDir = 'r';%If so, we will need to set the new direction to 'r'.
   elseif strcmp(strArr(x,y), '<')%Checks to see if the new direction is a left arrow.
       newDir = 'l';%If so, we will need to set the new direction to 'l'.
   else%Runs if none of the above apply.
       newDir = currDir;%No change is made if the above are not true.
   end
end

function [paddedStr, numBoost] = cushionMaker(cellArr)%cushionMaker helper function designed to prevent indexing out of bounds.
    maxLength = [];%Initializes the maxLength value to an empty vector.
    for x = 1:length(cellArr)%Runs for the number of items in cellArr.
        maxLength = [maxLength length(cellArr{x})];%Adds the maximum length of each line to the maxLength vector.
    end
    maxLength = max(maxLength);%Finds the maximum value in the maximum length vector.
    capStr = '';%Initializes the capStr to empty apostrophes.
    for x = 1:maxLength+2%Runs till the maximum length + 2.
        capStr = [capStr '.'];%This creates a line of periods that are the correct length of our new padded array.
    end
    strArray = capStr;%Sets the strArray to the capStr value found above(this will be the first line).
    numBoost = [];%Initializes numBoost to an empty vector. 
    for x = 1:length(cellArr)%Runs for the number of cells in the cellArr cell array.
        numIndex = maxLength - length(cellArr{x});%Finds the difference between the maxlength and length of the current line.
        strAdditional = '';%Initializes the strAdditional character vector to empty apostrophes.
        for y = 1:numIndex%Runs for the number of additional periods needed to make the line the proper length.
            strAdditional = [strAdditional '.'];%Tacks on a period with each pass.
        end
        lastStr = ['.' cellArr{x} strAdditional '.'];%Adds a period to the front and end to complete the line.
        numBoost = [numBoost numIndex];%Adds the specific difference between max and current length to the numBoost vector. This will be needed to undo the changes we made here.
        strArray = [strArray; lastStr];%Next, concatenate the line to a new row in the array. 
    end
    paddedStr = [strArray; capStr];%Lastly, we add a final row of periods to the bottom of the array.
end