function loveMatch = cupidStats(skillLevels, seconds, scores)
    skillCapped = skillLevels>=1700 & seconds<60 & scores>100000;
    %To be a love match, skills need to be at least 1700. Cooking time must
    %be lower than 60 seconds and Guitar Hero scores should be greater than
    %100K. The line above checks all these and returns logical values.
    indexer  = [1 2 3 4 5];
    %Since we know that there will always be 5 indexes, we can use this
    %line to help with determining the loveMatch.
    loveMatch = indexer(skillCapped);
    %We then use the skillCapped vector combined with the indexer to filter
    %out indexes that aren't desired. This should leave 1 index remaining,
    %which is the loveMatch.
end
