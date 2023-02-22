function sentence = finalPredict(points, captains, myCaptain)
    indecies = [1; 2; 3; 4; 5];
    %Since we know the max number of captains is 5, we can do this. If this
    %weren't the case, we would length(captains). Keep in mind each item
    %needs to be on it's own line so we need to use the semicolon.
    mask = captains == myCaptain;
    %Find the mask of our team Captain.
    newmask = mask(1:end, 1);
    %Now, we can change our mask from a 1x5 vector to a 5x1 array.
    index = indecies(newmask);
    %This next line eliminates the items that aren't the correct indecies
    %and spits out the correct index.
    points = sum(points(index,:));
    %we now sum the points of that particular index. We sum the specific
    %row in the points array.
    name = captains(index, :);
    %Now, we can find the name of our captain by finding the row that it is
    %located in. 
    if points<100
        sentence = sprintf('Better luck next year, %s''s team has only %d points :(', name, points);
        %If points are less than 100, we will print out this line and
        %insert name and points into the sentence.
    elseif points==100
        sentence = sprintf('%s''s gotta work for their spot!', name);
        %If points are equal to 100, we will print this one with just the
        %name of the individual. 
    else
        sentence = sprintf('Congratulations!! You''re definitely going to see %s and team in the finals!', name);
        %This else statement covers the instances that are outside the
        %above. We will print this out with the team's name.
    end
end