function [updated outcome] = geoffCollins(field)
    [x,y] = find(field == 'R');
    %This finds the locations of the receivers in the field. 
    [qX, qY] = find(field == 'Q');
    %This finds the location of the quarterback.
    [sentence field2]= potentialLOC(qX,qY, field);
    %The location of the quarterback and the field is sent to a helper
    %function for processing. The helper function outputs the sentence and
    %updated field.
    updated = field2;
    %This sets the updated field to the field obtained in the helper
    %function above.
    if ~strcmp(sentence, 'NOT GOOD')
        outcome = sentence;
        %Sentences are set equal to outcome when they're not set to 'NOT
        %GOOD'
    else
        outcome = 'Even Paul Johnson can''t face impossible odds.';
        %This results if the sentence given is 'NOT GOOD'. This means that
        %there are no ways to proceed, which is explained in further detail
        %below.
    end
end

function [sentence field] = potentialLOC(qX,qY, field)
    %qX - row of the quarterback.
    if field(qX+4,qY-4) == 'R'
        %Checks the location of the left diagonal to see if there is a
        %receiver there. This will be donated as an 'l' if true.
        finDirection = 'l';
    elseif field(qX+4, qY+4) == 'R'
        %Checks the location of the right diagonal to see if there is a
        %receiver there. This will be donated as an 'r' if true.
        finDirection = 'r';
    else
        finDirection = 'c';
        %If either of those is not true, a 'c' will be set as the
        %direction.
    end    
    block = 'successful';
    %Start off by setting the block variable to successful.
    indexOfQ = find(field == 'Q');
    %Finds index of quarterback.
    if finDirection == 'l'
        %This code is run if the direction is 'l'
        indecies = [indexOfQ:-4:indexOfQ-16];
        %Finds indecies of diagonal.
        field(indecies) = 'X';
        %Sets indecies of diagonal to X.
        if  field(qX+4, qY-5) == 'D'
            %Checks value left of receiver to see if defender is there. If
            %so, then block will be set to blocked.
            block = 'blocked';
        end
        if field(qX+3, qY-4) == 'D'
            %Checks value above receiver to see if defender is there. If
            %so, then block will be set to blocked.
            block = 'blocked';
        end
        if field(qX+4, qY-3) == 'D'
            %Checks value to right of receiver to see if defender is there.
            %If so, block will become 'blocked'
            block = 'blocked';
        end
        sentence = sprintf('The quarterback threw the ball and the play was %s.', block);
        %The sentence is then set with the value of block.
    elseif finDirection == 'r'
        %The following code is run if the direction is 'r'.
        indecies = [indexOfQ:6:indexOfQ+24];
        %Indecies of the right diagonal is found.
        field(indecies) = 'X';
        %X's are placed on these spots in the diagonal.
        if  field(qX+4, qY+5) == 'D'
            %Checks value right of receiver to see if defender is there. If
            %so, then block will be set to blocked.
            block = 'blocked';
        end
        if  field(qX+3, qY+4) == 'D'
            %Checks value above receiver to see if defender is there. If
            %so, then block will be set to blocked.
            block = 'blocked';
        end
        if field(qX+4, qY+3) == 'D'
            %Checks value left of receiver to see if defender is there. If
            %so, then block will be set to blocked.
            block = 'blocked';
        end
        sentence = sprintf('The quarterback threw the ball and the play was %s.', block);
        %Sentence is set based on the value of block.
    elseif field(qX+1, qY) ~= 'D'
        %This next section runs if the value directly below the quarterback
        %is not a defender.
        if field(qX+2, qY) == 'D'
           numMax = indexOfQ+1;
           block = 'blocked';  
           %This checks for a defender 2 tiles below the quarterback. If
           %there is a defender there, the index of the defender is set and
           %block is set to blocked.
        elseif field(qX+3, qY) == 'D'
           %This checks for a defender 3 tiles below the quarterback. If
           %there is a defender there, the index of the defender is set and
           %block is set to blocked.
           numMax = indexOfQ+2;
           block = 'blocked';           
        elseif field(qX+4, qY) == 'D'
           %This checks for a defender 4 tiles below the quarterback. If
           %there is a defender there, the index of the defender is set and
           %block is set to blocked.
           numMax = indexOfQ+3;
           block = 'blocked';                     
        else
           numMax = indexOfQ+4;
           %If none of the above are triggered, numMax will be set the max
           %value possible.
        end
        indecies = [indexOfQ:numMax];
        %Indecies of the tiles travled by the quarterback are recorded.
        field(indecies) = 'X';
        %Lastly, these indecies are set to 'X'
        sentence = sprintf('The quarterback ran the ball and the play was %s.', block);
        %Sentence is set based on the avlue of block.
    else
        field(indexOfQ) = 'X';
        %Q is set to X as specified by the problem.
        sentence = 'NOT GOOD';
        %If none of the paths are open, 'NOT GOOD' is sent out and will be
        %dealt with above.
    end  
end