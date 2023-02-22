function output = pistonCup(fileInput)
    myFile = fopen(fileInput);%Open the file given as an input.
    fileName = nameFinder(myFile);%Sends the file contents to the nameFinder to find the name of the desired file.
    intermediateFile = fopen(fileName);%Opens the intermediate files.
    cellNames = extractor(intermediateFile);%Sends the intermediate file's contents to the extractor for processing.
    st = struct;%Initializes the st to an empty structure.
    for x = 1:length(cellNames)%Runs for the number of cells in cellName.
        newst = dataFormatter(cellNames{x}, st, x);%Sends data to the dataFormatter for processing.
        st = newst;%Sets the st to the newst found one line above.
    end
    output = st;%Sets the output to the value of st found above.
    fclose(intermediateFile);%Closes the intermediate file.
    fclose(myFile);%Closes the original file.
end

function struct = dataFormatter(fileName, struct, cycleNum)%Data Formatter helper function.
    fieldLength = length(fieldnames(struct));%Starts by finding the number of fieldnames in the current structure.
    myFile = fopen(fileName);%Opens the fileName txt file.
    cellArr = {};%Initializes the cellArr cell array to an empty cell array.
    if fieldLength == 0 %If there are no exisiting fields, we will need to create some.
        init = fgetl(myFile);%Pulls the first line of the file and sets it to init.
        while ~isempty(init)%Keeps running as long as the input value is not empty.
            [word, rest] = strtok(init,',');%Pulls the first data set off the character vector.
            cellArr = [cellArr {word}];%Concatenates the segment as an item in the cell array.
            init = rest;%Starts from the top of the while loop with the shortened set of words.
        end
        for x = 1:length(cellArr)%Run for the number of items in the cell array.
            [name, rest] = strtok(cellArr{x},':');%Splits the fieldname and given value.
            [value,~] = strtok(rest, ':');%Removes the colon from the remaining segment of the calculation above.
            struct.(name) = value;%Creates a field and sets it to the given value.
        end
    else%Runs for passes after the first pass.
        init = fgetl(myFile);%Starts off by pulling the first line of the file.
        while ~isempty(init)%Keeps running as long as there is content being inputted.
            [word, rest] = strtok(init,',');%Splits the field and value based on the comma.
            cellArr = [cellArr {word}];%Concatenates the word onto the cellArr cell array.
            init = rest;%Continues until there is nothing left to be split.
        end
        for x = 1:length(cellArr)%Run for the number of items in the cellArr cell array.
            [name, rest] = strtok(cellArr{x},':');%Splits the input into the fieldname and value.
            [value,~] = strtok(rest, ':');%Finds the value of the given fieldname.
            struct(cycleNum).(name) = value;%Adds on the value as a second value in the specific fieldname.
        end
    end 
    fclose(myFile);%Closes the myFile file.
end

function fileNames = extractor(fileName)%Extractor helper function.
    fileNames = {};%Initializes the fileNames cell array to an empty cell array.
    init = fgetl(fileName);%Starts off by pulling the first line of the array for evaluation.
    while ischar(init)%Continues as long as the inputs are still chars.
        fileNames = [fileNames {init}];%Concatenates the line onto the end of the fileNames charater vector.
        init = fgetl(fileName);%Moves on to the next line in the file.
    end
end

function fileName = nameFinder(fileInput)%nameFinder helper function.
    fileName = '';%Initializes the fileName variable to an empty char vector.
    init = fgetl(fileInput);%Starts off by pulling the first line of the given file and leaves off the \n for formatting purposes.
    while ischar(init)
        [first, rest] = strtok(init, '_');%Removes the first segment of the filename, which is discarded.
        [second, rest] = strtok(rest, '.');%Removes the second section by seeking the '.', which tells us the second portion of the file name.
        if strcmp(second, '_cars')%Checks to see if the second segment is equal to '_cars'.
            fileName = init;%If so, we will set the output to the line.
        end
        init = fgetl(fileInput);%Move on to the next line in the file. 
    end
end