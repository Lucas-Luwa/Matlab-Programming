function kerchoo(filename)
    myFile = fopen(filename);%Open the file that is given as an input.
    [name,~] = strtok(filename, '.');%Use strtok to extract the name of the file and leave off the .txt portion of the input value.
    filename2 = [name '_fixed.txt'];%Use the previously extracted name and add on the required segment onto the back of the new file. This is the file that will be created since we are using write permissions.
    myFile2 = fopen(filename2, 'w');%Creates a new file using the previously created name.
    init = fgets(myFile);%Starts with a single line from the original file.
    starterStack = [];%Initializes the starterstack to an empty vector.
    initalier = [];%Initializes the initial values to an empty vector.
    while ischar(init)%Runs as long as the input value is a character.
        starterStack = [starterStack {init}];%Starts by adding the input value to the starterstack cell array.
        [num,~] = strtok(init);%Extracts the number from the front of the line.
        initalier = [initalier str2num(num)];%Converts the number from a string to a number and places it in the initializer vector.
        init = fgets(myFile);%Pulls the next line from the file. Notice that we still include the \n for formatting purposes.
    end   
    [~,inds] = sort(initalier);%Sorts the initializer vector.
    newMessage = starterStack(inds);%Reorders the lines based on the order found above.
    newMessage2 = [];%Initializes the newMessage2 vector
    for x = 1:length(newMessage)%Runs until the end of the message.
        newMessage2 = [newMessage2 char(newMessage(x))];%Concatenates the segments back into a single vector of chars.
    end
    fprintf(myFile2,newMessage2);%Adds the above message to the file.
    fclose(myFile);%Closes the original file.
    fclose(myFile2);%Closes the new file.
end