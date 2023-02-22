function outputSentence = gottaCatchEmAll(fileName)
    myFile = fopen(fileName);%Opens the file given as an input.
    init = fgetl(myFile);%Pulls the first line without the /n of the file above.
    holderCell = {};%Initializes the holderCell to an empty cell array.
    numCell = {};%Initializes the numCell to an empty cell array.
    while ischar(init)%Continues as long as the value inputted is still a set of characters.
        init = lower(init);%make the input sentence lower case.
        mask = init>= 'a' & init<= 'z' | init == ' ' | init == '''';%Find the non punctuation sections in the line.
        init(~mask) = [];%Removes the punctuation values.
        starter = init;%Initialize the starter value to init.
        while ~isempty(starter)%Keep running as long as the starter value is not empty.
            [word, rest] = strtok(starter, ' ');%Pull the first word off and send the rest off for future processing.
            instances = 0;%Initializes the instances value to 0.
            for x = 1:length(holderCell)%Runs from the 1 to the length of the holderCell.
                if strcmp(holderCell{x,1},word)%Checks to see if the word is already located in the library of words.
                    numCell{x,1} = numCell{x,1}+1;%If so, we will need to increase the number value associated with this word.
                    instances = instances + 1;%Additionally, we will need to increase instances by 1.
                end
            end
            if instances == 0 & ~isempty(word)%This checks to see if instances is 0(which would be 1 if the previous code goes through) and if the inputted value is not empty.
                holderCell = [holderCell; {word}];%Adds the new word onto the bottom of the holdercell cell array.
                numCell = [numCell; {1}];%Adds a one onto the next line in the numCell cell array.
            end
            instances = 0;%Initializes the instances variable to 0.
            starter = rest;%Sets the starter value to the rest value found above.
        end
        init = fgetl(myFile);%Pulls the next line off myFile.
    end 
    numUnique = length(holderCell);%Finds the number of unique words that exist in the list. We will use this in our sentence later on. 
    [~, inds] = sort(cell2mat(numCell), 'd');%Sorts the values in the numCell by descending order.
    newCell = [holderCell numCell];%Combines the holderCell and numCell cell arrays.
    [orgFileName, ~] = strtok(fileName, '.');%Rips the front section of the originalfile name off and stores it.
    newXCellName = [orgFileName '_counted.xlsx'];%Uses the original file name and concatenates the necessary syntax needed to make a functional excel file.
    writecell(newCell, newXCellName);%Writes the cell array found above to the name of the new cell. 
    inds2 = [inds inds];%Creates two sets of indecies for use in the next line.
    finalCell = newCell(inds2,:);%Sorts the finalcell by the rows.
    mostWords = finalCell{1,1};%Pulls the first value of the top row of final cell and sets this to mostWords. We can do this since we did the sorting earlier.
    maxWords = finalCell{1,2};%Pulls the second value of the top row of final cell and sets this to the max Words variable that is to be used in the following line.
    outputSentence = sprintf('I caught ''em all! There were %d unique words, with the word ''%s'' appearing %d times.', numUnique,mostWords, maxWords);%Creates the output line using 3 input values found above.
    fclose(myFile);%Closes the file.
end