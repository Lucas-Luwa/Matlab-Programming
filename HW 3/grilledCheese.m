function stats = grilledCheese(myScores, buddy1, buddy2)
    avg = sum(myScores)./length(myScores);
    %Calculates the average of the scores by using the sum function and
    %dividng by the number of scores in the vector.
    avg = round(avg, 1);
    %Rounds average to one decimal place.
    center = sort(buddy1, 'descend');
    %Sorts buddy1's scores in descending order
    center = center(ceil(end/2));
    %Finds the median of first friend's scores by taking the center value of the
    %vector sorted in descending order. We round up end/2 to account for
    %the fact that vectors start at 1.
    common = mode(buddy2);
    %Uses mode function to find mode of scores for second friend.
    stats = [avg center common];
    %Adds the average, median and mode into one vector.
    stats = sort(stats, 'descend');
    %Sorts this vector of statistics by largest to smallest.
end