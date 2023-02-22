function stalkTheBoys(fileName)
    myFile = fopen(fileName);%Opens the input file.
    content = {};%Initializes the content to an empty cell array.
    init = fgetl(myFile);%Sets the initial value to the first line in myFile.
    while ischar(init)%Keeps running as long as the line is still a char.
        mask = init >='A' & init<='Z' | init>='a' & init<='z';%Finds the indecies where there is a character.
        init(mask) = [];%Removes all characters from the line.
        [item, rest] = strtok(init, ',');%Splits the string based on , in the line.
        while ~isempty(item)%Runs this section if item is not empty. This will help us where some cases have many commas in a row.
            content = [content {item}];%Concatenates the item to the content cell array.
            [item, rest] = strtok(rest, ',');%Pulls the next value from the line and continues the while loop.
        end
        init = fgetl(myFile);%Pulls the next line from the file.
    end
    xValues = content(1:2:end);%Pulls the odd values for the xValues.
    yValues = content(2:2:end);%Pulls the even values for the yValues.
    maskx = strcmp(xValues, '?');%Finds instances where xValues are '?'.
    masky = strcmp(yValues, '?');%Finds instances where yValues are '?'.
    xValue = xValues(masky);%Finds value of '?' if it exists.
    yValue = yValues(maskx);%Finds the value of '?' if it exists.
    xValues(maskx) = [];%Removes the x value if there is a '?'.
    xValues(masky) = [];%Removes the x value if there is a '?'.
    yValues(maskx) = [];%Removes the y value if there is a '?'.
    yValues(masky) = [];%Removes the y value if there is a '?'.
    finXValues = [];%Initializes the finXValues to an empty vector.
    finYValues = [];%Initializes the finYValues to an empty vector.
    for x = 1:length(xValues)%Runs till the end of length(xValues)
        finYValues = [finYValues str2num(yValues{x})];%Converts all y values to a number and concatenates them to finYValues.
        finXValues = [finXValues str2num(xValues{x})];%Converts all x values to a number and concatenates them to finXValues.
    end
    plot(finXValues,finYValues, 'kd');%Plots the final x and y values with black diamonds.
    hold on%Switches hold on to prevent plots from being erased.
    if isempty(yValue)%If the yValue is empty, run the following.
        newY = spline(finXValues, finYValues, str2num(xValue{1}));%Finds the newY value using the spline function and the xValue we are seeking.
        plot(str2num(xValue{1}), round(newY,2), 'g*');%Plots the value found above rounded to two decimals as a green star.
    elseif isempty(xValue)%If the xValue is empty, run the following.
        newX = spline(finYValues, finXValues, str2num(yValue{1}));%Finds the newX value using the spline function and the yValue we are seeking.
        plot(round(newX,2), str2num(yValue{1}), 'g*');%Plots the value found above rounded to two decimals with a green star.
    end  
    fclose(myFile);%Closes the file.
end