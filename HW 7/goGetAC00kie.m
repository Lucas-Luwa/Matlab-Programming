function [longest, shortest, avg, modex] = goGetAC00kie(words)
    holder = zeros(1, length(words));
    %Creates a vector of 0s with length of words.
    mask = words == ' ';
    %Creates a mask of locations where ' ' exists.
    holder(~mask) = 1;
    %Turns all values outside of those values to 1.
    newVec = lengthFinder(holder);
    %Sets the newly found vector to the lengthFinder helper function. We
    %add holder(a vector of 1s and 0s) into this function.
    longest = longFinder(newVec);
    %We use the longFinder helper function with newVec as an input to find
    %the longest word in the words vector.
    shortest = shortFinder(newVec);
    %Sends newVec to the shortFinder helper function to find the length of the shortest
    %word
    avg = round(sum(newVec)./length(newVec),2);
    %We can take the sum of the newVec function(which has the lengths of
    %each word) and divide it by the length of newVec. We can then round to
    %2 digit.to find the desired value.
    modex = mostRepeat(newVec);
    %Since the mode function is banned, newVec is sent to the mostRepeat
    %helper function to find the mode of the vector.
end

function number = mostRepeat(newVec)
    %This helper function takes the place of the mode function.
    occurances = 0;
    number = 0;
    %We start off by initializing both occurances and number to the value
    %of 0.
    for x = 1:length(newVec)
        mask = newVec == newVec(x);
        %We will now mask out the values of newVec that equals the current
        %value. This allows us to find the number of instances a number
        %appears in the vector.
        currentOccurances = sum(mask);
        %This sets the number of appearances to the sum of the mask. This
        %will find the number of occurances of the current index x in the
        %vector.
        if currentOccurances > occurances
            %This checks to see if the occurances variable is smaller than
            %currentOccurances. If it is, we need to change the value of
            %number and occurances to account for this change. This would
            %indicate that another number appears more in a vector. The
            %following two lines will correct the variables to the desired
            %values.
            occurances = currentOccurances;
            number = newVec(x);
        end
    end
end
function shortest = shortFinder(shortVec)
    %This helper function finds the shortest length of a word in the
    %vector.
    shortest = shortVec(1);
    %We start by setting the shortest variable to the first index.
    for x = 2:length(shortVec)
        %We will run from the second index to the end and compare the
        %values to the current value of shortest.
        if shortVec(x)<shortest
            %If the current value is smaller than the "shortest" variable,
            %we wil set the current value to the "shortest" variable. 
            shortest = shortVec(x);
        end
    end
end
function longest = longFinder(longVec)
    %This helper function finds the longest word in the vector.
    longest = longVec(1);
    %We start by setting the initial value to the first value in the
    %vector.
    for x = 2:length(longVec)
        %This for loop runs from the second index till the end of the
        %array. This will allow us to find the longest value using
        %comparison.
        if longVec(x)>longest
            %If the current value is longer than the "longest" variable, we
            %will change the current value to the "longest" variable.
            longest = longVec(x);
        end
    end
end
function newVec = lengthFinder(vector)
    %This helper function finds a vector of numbers that has the length of
    %each word.
    newVec = [];
    %newVec is initialized to an empty vector.
    indexer = 0;
    %indexer is initialized to 0.
    for x = 1:length(vector)
        %Runs until the last index of the imputted vector.
        if vector(x) == 1;
            %this keeps track of the number of characters in each word.
            %Each time a 1 appears, we will add 1 to indexer.
            indexer = indexer + 1;
        else
            newVec = [newVec indexer];
            indexer = 0;
            %If the value is 0, we will assume that this is the end of a
            %word. We can then concatenate the length of the word to newVec
            %and clear out indexer to prepare for the next word.
        end
    end
    if indexer ~= 0
        newVec = [newVec indexer];
        indexer = 0;
        %Without a space at the end of the vector, the last word can be
        %dropped by accident. To fix this, we check that the indexer is
        %zero before ending the function. If it is not, we will concatenate
        %indexer to newVec and set the indexer to 0.
    end
end
