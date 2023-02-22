function [iAndP, numPi] = piDetective(cellArr1, cellArr2)
    tempPi = strcmpi(cellArr1, 'pi');
    %We start off by identifying the number of times pi occurs in the first
    %input.
    numPi = sum(tempPi);
    %This sums the number of times pi occurs and sends it out as one of the
    %outputs.
    iAndP = [];
    %iAndP is set to an empty vector to start off the operation.
    for x = 1:length(cellArr1)
        %Since the lengths of both inputs are the same, we'll just run to
        %the end of the first input. We could use the second input here if
        %we wanted as well.
        word1 = cellArr1{x}(1);
        %This pulls each value out of the cell array and finds the starting letter of the word. 
        word2 = cellArr2{x}(1);
        %This pulls each value out of the cell array and finds the starting
        %letter of the word.
        if(lower(word1) == 'p')
            %This section runs if the starting letter is p for the first
            %input.
            iAndP = [iAndP {cellArr1{x}}];
            %This concatenates the existing value to the iAndP holder
            %value. We need to add curly brackets around the word to shove
            %it back into a cell.
        end
        if(lower(word2) == 'i')
            %Since the first word has priority, we have to place this after
            %the first if statement. This checks to see if the second word
            %extracted starts with the letter i. 
            iAndP = [iAndP {cellArr2{x}}];
            %This concatenates the existing value to the iAndP holder
            %value. We need to add curly brackets around the word to shove
            %it back into a cell.
        end
    end
end