function cleanedUp = piThonSux(input)
    [row, col] = size(input);%Finds the rows and columns of the input value.
    addons = cell(row,2);%Create a empty cell section that has 2 columns and the number of rows in the input.
    newInput = [input addons];%Concatenate the cell array we created to the existing input section.
    newInput(1,4) = {'Category'};%Set the title of the fourth column to Category.
    newInput(1,5) = {'Adjusted Score'};%Set the title of the fifth column to Adjusted Score.
    indexes = locator(newInput);%Uses the locator helper function to find the indexes needed in the next line.
    newArr = category(newInput, indexes);%Uses the category helper function and sends in the input and indecies needed.
    newArr2 = cell2mat(newArr(2:row,5));%Sets the second new array to the value found from converting the cell to a matrix. We only grab the second to the end of the row since we the first row is for categorization purposes.
    [out, index] = sort(newArr2, 'd');%Sorts the array found above and outputs the value and indecies.
    index = [1;index+1];%We add on a 1 to the start since we need to include the header.
    finArr = newArr(index,:);%Now, we can reorder the array we found above.
    cleanedUp = finArr;%The output is set to the array we found one line above.
end
function [newCellArr] = category(input, indecies)
    %Placeholders for Score, Name, Type in this specific order.
    [row,~] = size(input);%Finds the rows in the input.
    for x = 2:row%Runs from the second to the last row.
        temp = input{x,indecies(1)};%Sets the temporary value to the value located at the row number and at the index.
        if iscell(input{x, indecies(1)})%Detects if the value is a cell.
            temp = deSheller(temp);%If so, we will need to send the value to the deSheller helper function.
        end
        if ischar(temp)%detects if the value of the temporary value is a char.
            temp = str2num(temp);%If so, we will convert this value from a string to number.
        end
        [mult, adjustment, category] = multiplier(input, x, indecies);%Sends the input, row number and indecies to the multiplier helper function.
        if mult == 0 %If the multplier is 0, we will assume there are adjustments.
            temp2 = round(temp+adjustment,2);%We will round the value found from adding the adjustment to the value in the temporary value. Rounds to 2 decimals.
        else
            temp2 = round(temp.*mult,2);%If not, we will be multiplying the value with the multiplier, and round it to two decimals.
        end
        input(x,5) = {temp2};%Sets the fifth value to the number we found previously.
        input(x,4) = {category};%Sets the value to the category found in line 26.
    end
    newCellArr = input;%Sets the output to the adjusted input value.
end

function [mult booster category] = multiplier(input, index, indecies)%Multiplier function designed to help find multiplier value needed to boost or demote certain scores.
    booster = 0;%Initializes booster to 0.
    mult = 0;%Initializes multiplier value to 0.
    word = lower(input{index, indecies(3)});%Since we will be looking at one word at a time, we can set the second value to the indecies(3), which gives the column with the name. 
    %Next, we can set the row value to index and make the word lower case.
    switch word%Switch case based on the word variable.
        case {'apple','cherry','blueberry'}%Runs if name equals one of these.
            booster = .5;%Sets booster to increase by .5.
            category = 'Fruit';%Sets category to 'Fruit.
        case 'chicken pot pie'%Runs if chicken pot pie is the name.
            mult = 1.2;%Multiplier is 20 percent.
            category = 'Savory';%Category of this is savory.
        case {'key lime','pecan'}%These three will trigger this case.
            booster = -.3;%Since these are boring, we will need to subtract .3 points from their score.
            category = 'Classic';%Next, we will need to set the category to Classic.
        case {'french silk','nutella'}%These two will trigger this case.
            mult = 1.2;%Multiplier bonus is 20 percent.
            category = 'Dessert';%Category is set to Dessert.
        otherwise%Runs if the above are not present.
            mult = .85;%Reduces score by 15 percent.
            category = 'Other';%Categorizes these values as other.
    end
end

function value = deSheller(value)%Helper function that removes shells from values.
    while iscell(value)%Runs if the value inputted is a cell.
        value = value{1};%We pull the value located in the shell. We may need to do this many times.
    end
end
function holder = locator(input)%Helper function that finds the indecies 
    holder = zeros(1,3);%Creates a holder vector of zeros.
    %Placeholders for Score, Name, Type in this specific order.
    for x = 1:3%Runs three times.
        if strcmpi(input(1,x), 'Score')%Checks the value to see if this first value is the Score. If so, we set the first value to the iteration number.
            holder(1) = x;
        elseif strcmpi(input(1,x), 'Name')%Checks the value to see if this is equal to 'Name'.
            holder(2) = x;%If so, we will set the row iteration number to the second value in holder.
        elseif strcmpi(input(1,x), 'Type')%Checks to see if the value is equal to 'Type'.
            holder(3) = x;%If this is the case, we will set the final value to the the row iteration number.
        end
    end
end