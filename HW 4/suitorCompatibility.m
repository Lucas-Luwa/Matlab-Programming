function ultimateSuitors = suitorCompatibility(names, levels)
    separatedNames = strsplit(names, ' ');
    %The names are split again based on the space between each word. 
    orderedNames = sort(separatedNames);
    %Names are sorted alphabetically using the sort function.
    orderedNames(1) = [];
    %The first index is always removed since it is just the dimensions of
    %the array. 
    filteredSet = levels>7;
    %From here, we use logicals to indicate values above 7.
    finalSet = orderedNames(filteredSet);
    %Lastly, we use the mask to filter out undesired names from our name
    %set.
    ultimateSuitors = ['And the ultimate suitors are... ' strjoin(finalSet) ' !!!'];
    %Lastly, we can now use this formulaic sentence and addin the names
    %into the sentence. Strjoin is used to combine the names. 
end