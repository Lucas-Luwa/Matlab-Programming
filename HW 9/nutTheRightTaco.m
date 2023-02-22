function updatedStruct = nutTheRightTaco(originalStruct)
    names = fieldnames(originalStruct)';%Finds the names of each of the fields. This is transposed to create a horizontal vector.
    [~,c] = size(names);%Finds the number of values 
    axer = false;%Initializes the axer logical variable to false.
    for x = 1:c%Runs through each of the values in fieldnames. 
        contents = originalStruct.(names{1,x});%Pulls the names from the original structure and adds it to contents.
        if any(strcmpi(contents, 'peanut butter'))%Checks to see if there are any peanut butter items in the contents of the taco.
            originalStruct = rmfield(originalStruct, names{1,x});%If yes, we will remove that item.
        end
        axer = false;%Reset axer to false in preparation for another run. 
    end
    updatedStruct = originalStruct;%Sets the updated structure to the orginial structure with the changes.
end