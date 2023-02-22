function sentence = iAmSpeedRead(fileName)
    myFile = fopen(fileName);%Starts by opening up the file given as an input.
    currSpeed = 2;%Sets the starting speed to 2 words per second.
    [bigWord, max] = buncher(myFile); %Sends the file to the buncher helper function for processing.
    remainder = bigWord;%bigWord is the entire file combined into one character vector.
    total = 0;%Initializes the total to 0.
    for x = 1:max%Max is the number of words that exist in the string.
        [word, remainder] = strtok(remainder, ' ');%Starts by pulling one word of the combination of all the words in the file.
        speedBoost = strfind(word, 'Ka-chow');%If the word is Ka-chow, speedBoost will be 1.
        speedNerf = strfind(word, 'Ka-chicka');%If the word is Ka-chicka, speedNerf will be 1.
        total = total + 1./currSpeed;%Tacks on the speed taken to read the word. This will be 1/the word speed.
        if speedBoost ~=0%If the speedBoost is not 0, we will run the following.
            currSpeed = currSpeed.*2;%Increases the speed by x2.
        end
        if speedNerf ~=0%If the speedNerf isn't 0, we will run the following.
            currSpeed = currSpeed./2;%Decreases the speed by 1/2.
        end
    end 
    sentence = sprintf('It took %.2f seconds to read the script and I finished reading at %.2f words/second.',total,currSpeed);%Creates the output sentence with the necessary inputs.
    fclose(myFile);%Closes the file.
end 

function [str, num] = buncher(file)%Buncher helper function that will make some adjustments.
    init = fgetl(file);%Starts off by pulling the first line in the file.
    str = [];%Initiliazes the str vector to an empty vector.
    while ischar(init)%Runs as long as the line is a char.
        if ~isempty(init)%If the line is empty, we won't do anything.
            str = [str init ' '];%Add a space between each line since no space exists on the end of the lines.
        end
        init = fgetl(file);%Move on to the next line in the file.
    end
    str(end) = [];%Removes the final space in the vector of characters.
    num = length(strfind(str, ' '))+1;%Finds the number of words in the string.
end
