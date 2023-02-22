function mistakes = graphcmp(barGraph, misformat)
    [row, col] = size(barGraph);
    %We find the rows and columns of the given bar graph
    newMisFormat = reshape(misformat, [row, col]);
    %The misformatted array is reshaped into the dimensions of barGraph
    mask = newMisFormat == ' ' & barGraph == ' ' | newMisFormat ~= ' ' & barGraph ~= ' ';
    %Now, we find the values where the misformmated graph is equal to the
    %correct bar graph. Note that we only use space or not space since the
    %bar graph with errors can contain any character.
    numErrors = sum(mask,1) ~=row;
    %We now take the sum of the columns of the mask and compare it to the rows. If the correct
    %values aren't equal to rows, it will give a logical true.
    numErrors = sum(numErrors);
    %We can sum the errors found above to get the total bar graphs that
    %need to be fixed
    mistakes = sprintf('My boss'' graph has %d bars that need fixed!', numErrors);
    %This is the sentence structure with the number of errors added in.
end