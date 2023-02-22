function sentence = passItOn(rink)
    [myx, myy] = find(rink == 10);
    %This line finds the location of me and outputs the x and y coordinates.
    %Keep in mind that I am denoted by the number 10 and that our team only
    %has one 10.
    mask = rink>0 & rink ~= 10;
    %This masks out all positive values that doesn't equal 10.
    partnerloc = rink(mask);
    %This finds the value of the partner. All values that aren't this
    %partner are masked out.
    cumulative = 10 + partnerloc;
    %This sums the score of myself(10) and my partner's score.
    [px, py] = find(rink == partnerloc);
    %We can now find the indecies of partnerloc by using the find function.
    pointer = direction(myx, myy, px, py);
    %This inputs my coordinates and my partners coordinates into the
    %direction helper function. The helper function outputs direction.
    rowmax = max(myx, px);
    %This finds the max row value between my value and my partner's value.
    rowmin = min(myx, px);
    %This finds the minimum row value between my value and my partner's
    %value
    colmax = max(myy, py);
    %This finds the maximum column value between my value and my parnter's
    %value
    colmin = min(myy, py);
    %This finds the minimum column value between my value and my partner's
    %value.
    minirink = rink(rowmin:rowmax,colmin:colmax);
    %This creates a mini rink that looks at the positions between me and my partner. 
    maskOpponents = minirink<0;
    %This creates a mask of our opponents. These are negative, since our
    %opponents are negative.
    opponentPower = sum(abs(minirink(maskOpponents)));
    %We then take the sum of the absolute values of our opponents. The mask
    %masks out our positive values and spits out only our opponents values.
    sentence = outcome(opponentPower, cumulative, pointer);
    %Our opponent's power, our power and the direction is then placed into
    %the second helper function to obtain the output statement. 
end

function output = outcome(opponentPower, myPower, direction)
    powerRating = myPower - opponentPower
    %This takes the difference between our team's power and our enemies'
    %power. 
    if powerRating>=10
        output = sprintf('I shot the puck to the %s with guaranteed success.', direction);
        %If we top our opponents by 10 or more points, we will have
        %guaranteed success. We output a sentence that includes the
        %direction.
    elseif powerRating > 0
        chance = powerRating.*10;
        %Being in this section means that we didn't have the 10 points
        %needed but still have a shot. Our chances are then calculated by
        %taking power rating and multiplying by ten. 
        output = sprintf('I shot the puck to the %s with a %d%% chance of success.', direction, chance);
        %We send out a sentence with direction and percent chance of
        %success.
    else
        output = sprintf('I chose not to shoot the puck to the %s.', direction);
        %Lastly, we output this output sentence with direction if we have no
        %chance at making the shot.
    end 
end

function orientation = direction(myx, myy, px, py)
    %Keep in mind rows are x and columns are y. Origin is top left corner -
    %Important information for the following information.
    if myx == px
        %Run this section of code if the rows for myself and my partner are
        %the same.
        if py>myy
            orientation = 'east';
            %When my partner has a greater column than mine, we can say
            %that the direction is east.
        else
            orientation = 'west';
            %Otherwise, my partner will have a smaller column value than
            %mine, which means direction will be west.
        end
    elseif myy == py
        %This section will run if the column values are the same. 
        if px>myx
            orientation = 'south';
            %We will output south when my partner has a larger row value
            %than mine.
        else
            orientation = 'north';
            %North will be outputted otherwise since my partner will have a
            %smaller row value than me.
        end
    elseif myy>py
        %This section runs when my column values are greater than my
        %partner's.
        if px>myx
            orientation = 'southwest';
            %When the row values of my partner are greater than mine, we
            %can say the direction is southwest.
        else
            orientation = 'northwest';
            %In the event that my partner has a lower row value, we can say
            %that the direction is northwest.
        end
    else
        %The last section runs when all other sections fail. This would
        %mean that I have a lesser column value than my partner.
        if px>myx
            orientation = 'southeast';
            %If my row value is lower than my partner's, we can say that
            %the orientation is southeast.
        else
            orientation = 'northeast';
            %If my partner has a smaller row value, the shot will be to the
            %northeast.
        end
    end
end