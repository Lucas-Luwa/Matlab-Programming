function carsCarsCars(fileName)
    myFile = fopen(fileName);%Start by opening the input file.
    [name, ~] = strtok(fileName, '.');%Takes the name of the original input file.
    filename2 = [name '_corrected.txt'];%Adds on the necessary ending segment of the new file.
    newFile = fopen(filename2, 'w');%Creates a new file under the name found above and allows writing permissions.
    init = fgetl(myFile);%Grabs the first line of the original file. Notice that we don't want the \n this time.
    initializer = [];%Initializes the initializer vector.
    while ischar(init)%Loop runs until there are no more lines to check.
        init = [init ' '];%Adds a space after the end of each line. This is for strfind purposes.
        loc2 = strfind(init, 'Cars2 ');%Checks to find the location of Cars2 within the line.
        for x = 1:length(loc2)%Runs for each instance of Cars2 found in the line.
            init = [init(1:loc2(x)-1) 'Cars Cars' init(loc2(x)+5:end)];%Removes the Cars2 and replaces it with the necessary content.
            if x+1 <= length(loc2);%If there are multiple items in the vector, compensate for the adjustments.
                loc2 = loc2 + 4;%Compensated by 9 because of the change.
            end
        end
        loc3 = strfind(init, 'Cars3 ');%Look for instances of Cars3 available in the string.
        for y = 1:length(loc3)%Runs for the number of Cars3 found in the line.
            init = [init(1:loc3(y)-1) 'Cars Cars Cars' init(loc3(y)+5:end)];%Removes the Cars3 and replaces it with the necessary content.
            if y+1 <= length(loc3);%If there are multiple items in the vector, we compensate for the adjustment in the length of the line.
            loc3 = loc3 + 9;%Adds on 11 as compensation for change.
            end
        end
        init(end) = [];%Removes the space we added in above.
        initializer = [initializer init '\n'];%Tacks on \n for file writing purposes.
        init = fgetl(myFile);%Moves on to the next line in the file.
    end
    fprintf(newFile, initializer);%Prints the new content to the new file.
    fclose(myFile);%Closes the original file.
    fclose(newFile);%Closes the new file.
end