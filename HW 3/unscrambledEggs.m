function recipe2 = unscrambledEggs(pattern, scrambled) 
    recipe = scrambled(pattern);
    %Finding first half of recipe by using pattern(vector of numbers with
    %index numbers to unscramble "scrambled". This moves through all
    %numbers within pattern and pulls the corresponding letter from
    %"scrambled"
    section2 = scrambled(end./2+1:1:end);
    %This line splits the scrambled characters into two(as specified in the
    %instructions)
    word2 = section2(pattern);
    %Similar to before, we need to pull characters from the second half of
    %the scrambled characters by going through the pattern.
    recipe2 = [recipe word2];
    %We concatenate the first and second half of the unscrambled word.
end