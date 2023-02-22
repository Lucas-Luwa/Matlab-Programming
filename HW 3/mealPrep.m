function message = mealPrep(message)
    message(1:3:end) = message(1:3:end)+2;
    %Shifts every third letter up by 2 on the ASCII chart.
    underscoreLocations = strfind(message, '_');
    %Finds indexes of '_' character and places them in a vector.
    message(underscoreLocations(1:1:end)) = 32;
    %Replaces '_' with a space by going through the locations of each '_'
    %character.
    underscoreLocations(end+1) = 0;
    %Adds on 0 to indexes of underscore locations
    %Underscore indecies are now being reused to capitalize words. Since
    %words are after the spaces(which were once underscores), we can
    %repurpose this vector.
    message(underscoreLocations(1:1:end)+1) = upper(message(underscoreLocations(1:1:end)+1));
    %Capitalizes each word by using underscore indecies+1. 
    %Finds location of word and uses upper function to capitalize each
    %word.
    %The 0 becomes a 1, which is why this works. 
end