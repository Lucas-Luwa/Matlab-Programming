function sentence = majorLeagueStats(name, strength, agility, speed, handedness)
    totalSpeed = agility.*speed;
    %We obtain total speed by multiplying agility and speed.
    position = ' ';
    %This is a placeholder for position that will be changed in our switch
    %case function.
    switch handedness
        %We will be basing our cases off the values given in handedness.
        case 'right'
            %This first case looks for handedness that is 'right'
            if totalSpeed>=strength
                %If the speed is greater than or equal to strength, and the
                %person has right handed, they are an outfielder.
                position = 'outfielder';
                %Sets position to outfielder.
            else
                position = 'batter';
                %If not, this person is a batter. Again, this is within the
                %right handed group and catches values where
                %totalSpeed is less than strength.
            end
        case 'left'
            %This case looks for cases where the individual is left handed.
            if totalSpeed<strength
                position = 'pitcher';
                %If the total speed is less than strength, then their
                %position will be pitcher assuming they are left handed.
            else
                position = 'batter';
                %This else statement catches left handed players with total
                %speed greater than strength. These players are batters.
            end
        otherwise
           position = 'pitcher';
           %In the event that players can use either hand, they will be
           %pitchers.
    end
    
    switch position
        %Second switch statement that functions by position
        case 'batter'
            %First case only applies to batters. Keep in mind the position
            %value was assigned in the previous switch statement.
            if totalSpeed>=25000 | strength>=25000
                sentence = sprintf('CONGRATULATIONS! %s has been selected to play in Nationals as a(n) %s.',name,position);
                %If the person has a total speed greater than or equal to 25 thousand
                %or a strength greater than or equal to 25 thousand. These
                %batters are selected for the championship and have their
                %name and position embedded into the sentence
            else
                sentence = sprintf('%s was not qualified enough to play in Nationals as a(n) %s. Try again next year!',name,position);
                %If either of these cases aren't satisfied, the batter
                %doesn't make it and will receive a sentence with their
                %name and position.
            end
        case 'outfielder'
            %This case is for outfielders.
            if totalSpeed>=50000
                sentence = sprintf('CONGRATULATIONS! %s has been selected to play in Nationals as a(n) %s.',name,position);
                %Outfielders with a total speed greater than 50,000 will be
                %selected and receive a sentence with their name and
                %position.
            else
                sentence = sprintf('%s was not qualified enough to play in Nationals as a(n) %s. Try again next year!',name,position);
                %If this isn't satisfied, this outfielder will get a
                %sentence with their name and position stating that they
                %didn't make it.
            end
        case 'pitcher'
            %This case handles cases where the player is a pitcher.
            if isequal(handedness, 'both')
                sentence = sprintf('CONGRATULATIONS! %s has been selected to play in Nationals as a(n) %s.',name,position);
                %If they can use both hands, they are automatically
                %qualified for Nationals. The sentence will output this
                %with their name and position.
            elseif strength>=100000
                sentence = sprintf('CONGRATULATIONS! %s has been selected to play in Nationals as a(n) %s.',name,position);
                %If strength is greater than or equal to 100,000, that
                %person will be selected. The sentence will out put a
                %sentence with their name and position.
            else
                sentence = sprintf('%s was not qualified enough to play in Nationals as a(n) %s. Try again next year!',name,position);
                %If either of those aren't satisfied, this person will
                %receive a sad statement that they didn't make it. Of
                %course, name and position is mentioned.
            end   
    end
end