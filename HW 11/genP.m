function genP(genNum)
    st = dir;%Gathers the data from the directory.
    ca = {};%Initializes the ca cell array to an empty cell array.
    for x = 3:length(st)%Runs from the 3rd row to the end.
        fn = st(x).name;%Grabs the name data at the index number.
        [~, ext] = strtok(fn, '.');%Removes the front end of the file name.
        [front, ~] = strtok(fn, '_');%Finds the first segment of the file section, excluding the text after the underscore.
        if strcmp(ext,'.txt') & strcmp(front, 'PokemonCard')%Checks to see if the file type is text and that the front section is PokemonCard
            ca = [ca {fn}];%If true, we will concatenate the name of the file to the cell array.
        end
    end
    name = {};%Initializes the name cell array to an empty cell array.
    hPointSet = {};%initializes the hPointSet cell array to an empty cell array.
    for x = 1:length(ca)%Runs for all the values in the ca cell array.
        killSwitch = true;%Always sets the killSwitch to true until it is switched off a few lines below.
        myFile = fopen(ca{x});%Opens the file by extracting the filename from the ca cell array.
        init = fgetl(myFile);%Pulls the first line off myFile without adding the /n.
        [~,rest] = strtok(init, ' ');%Removes the identifier off the first line to expose the number.
        num = strtok(rest, ' ');%This is performed a second time to remove the remaining space.
        if str2num(num) == genNum%Runs if the number is equal to the generation number input.
           [~,rest] = strtok(ca{x},'_');%If so, we will need to look for the section after the underscore and store it in rest.
           [center,~] = strtok(rest, '.');%Next, we remove the .txt segment and output the middle section of the name.
           name = [name; {center(2:end)}];%Lastly, we concatenate the name onto the back of the name vector. Keep in mind we will need to move the content to the next line.
           killSwitch = false;%Set the killSwitch to false and move on.
        end
        while ischar(init) & ~killSwitch%Checks to see that init is made up of characters and that killSwitch is false.
            [starter, rest] = strtok(init);%If the above is true, we will remove the first word and send the rest to be processed in a second pass.
            num = strtok(rest);%This removes the number that exists after the first word.
            if strcmp(starter, 'HP:')%Runs when the identification for the data is HP.
                hPointSet = [hPointSet; {str2num(num)}];%Concatenates the number after HP to a new line in hPointSet.
            end
            init = fgetl(myFile);%Sets init to the next line in the file.
        end    
        fclose(myFile);%Closes the file.
    end
    [~,inds] = sort(name);%Sorts the items in the name vector.
    output = [name(inds) hPointSet(inds)];%Uses the indecies found above to modify the two data collection vectors. Then these vectors are combined into a single cell array. 
    fileName = ['generation' num2str(genNum) '.xlsx'];%Constructs the file name needed for making the excel file.
    writecell(output, fileName);%Writes the output to the appropriate fileName found above.
end