function [sentence, layers] = piCrust(myPie)
    sentence = [];
    %Creates an empty vector for us to add contents to later.
    layers = 0;%Initializes layers variable to 0.
    numMax = 0;%Initializes numMax to 0.
    for x = 1:length(myPie)
        %Run this loop from 1 to the end of the length of myPie input.
        currCell = myPie(x);
        %This will set the current cell to the current item we're looking
        %at in myPie.
        while iscell(currCell)
            %Run until the cell is no longer cased in a cell.
            currCell = currCell{1};
            %Pull the objects out of a shell. Keep in mind other shells may
            %exist within a shell so multiple runs may need to be done.
            numMax = numMax+1;
            %Add 1 to numMax, which essentially tells us number of attempts
            %needed to unshell the value.
        end
        sentence = [sentence currCell ' '];
        %After each run, we start to assemble the sentence by concatenating
        %the existing vector with the value we found. We also add a space
        %after for the sentence.
        if numMax > layers
            %When the current max is greater than the stored max, we will
            %run this code.
            layers = numMax;
            %Record max(layers) is set to numMax.
        end
        numMax = 0;
        %Resets the numMax variable for future use.
    end
    sentence(end) = [];
    %We don't need the last space, so we clip it off.
end