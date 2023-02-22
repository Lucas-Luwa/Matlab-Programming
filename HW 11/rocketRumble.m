function outputArr = rocketRumble(myPokemon, myUnworthyFoe)
    holder1 = readcell(myPokemon);%Pulls the data from the myPokemon file.
    holder2 = readcell(myUnworthyFoe);%Pulls the data from the myUnworthyFoe file.
    comboHolder = [holder1; holder2(2:end,:)];%Combines the two sets of data into one cell array. We also remove the titles from the second cell array to prevent issues.
    [updatedCell, originalTop, attack, defense, name, type] = sorter(comboHolder);%Sends the combined cell array to the sorter to obtain values needed to continue the operations.
    [row, col] = size(updatedCell);%Finds the row and column size of the new cell array.
    totalScore = 0;%Initialied the totalScore value to 0.
    for x = 2:row%Runs from the second row to the last row.
       if mod(updatedCell{x,attack}, 2) == 0%If the attack value is even, we will run the following code.
           totalScore = totalScore + updatedCell{x,attack}.*2;%The total score will equal total score with the attack score times 2 added on to it.
       else%Otherwise, run the following.
           totalScore = totalScore + updatedCell{x,attack}.*1.5;%The total score in this case will equal the totalScore plus the attack score times 1.5.
       end
       if  updatedCell{x,defense} >= 50%When the defense is at least 50 run this code.
           totalScore = totalScore + updatedCell{x,defense};%In this case, we will add the defense value to totalScore.
       else%Otherwise run this section.
           totalScore = totalScore - 10;%This outputs a totalScore with a deduction of 10 points.
       end
       if strcmp(updatedCell{x,type}, 'Fire')%Runs the following if the type is Fire.
           totalScore = totalScore + 25;%If this is true, we will add 25 points to the total score.
       elseif strcmp(updatedCell{x,type}, 'Water')%Runs the following if the tyep is Water.
           totalScore = totalScore./2;%Divides total score by 2.
       else
           totalScore = totalScore.^(1/2);%Runs for the grass type. This will take the squared root of total score.
       end
       updatedCell(x,5) = {round(totalScore, 2)};%Changes the last column value from 0 to the total score rounded to 2 decimals.
       totalScore = 0;%Initializes the totalScore to 0 for the next iteration.
    end
    toSort = cell2mat(updatedCell(2:end,5));%Converts the data in the 5th column of the cell array exclulding the first row to an array.
    [~, inds] = sort(toSort ,'d');%Sort the values in the fifth column in descending order and extract the indecies.
    inds = inds + 1;%Increase the indecies by 1 to account for the header that doesn't need to be sorted.
    sortedNames = updatedCell(inds,name);%Sort the names by the indecies found above.
    updatedCell = updatedCell(inds,:);%Update the entire cell by using the indecies found above. 
    updatedCell = [originalTop; updatedCell];%Adds the originaltop to the top of the updated cell array.
    [section1, ~] = strtok(myPokemon, '.');%Removes the name of the file given to us.
    name = [section1 '_updated.xlsx'];%Adds the necessary components to make it a valid excel file name.
    writecell(updatedCell, name);%Write the updated cell array to the name of the excel file name created above.
    outputArr = sortedNames(1:3)';%Output the first three values of the sortedNames vector found above.
end

function [newCellArr, originalTop, attackLoc, defenseLoc, nameLoc, typeLoc] = sorter(cellArr)%Sorter intended to reorder the columns for easy access in the future.
    firstRow = cellArr(1,:);%Pulls the first row off the cell array.
    attackLoc = strcmp(firstRow, 'Attack') * [1; 2; 3; 4];%Finds the indecie of the attack column by using masking and multiplication.
    defenseLoc = strcmp(firstRow, 'Defense') * [1; 2; 3; 4];%Finds the location of the defense column by using masking and multiplication.
    nameLoc = strcmp(firstRow, 'Name') * [1; 2; 3; 4];%Finds the location of the name column using masking and multiplication.
    typeLoc = strcmp(firstRow, 'Type') * [1; 2; 3; 4];%Finds the location of the type column using masking and multiplication.
    [row,col] = size(cellArr);%Finds the rows and columns of the given cell array.
    newCol = [{'Total Score'}; num2cell(zeros(row-1,1))];%Creates a column with the Total Score title and a bunch of zeros to fill in the space.
    newCellArr = [cellArr newCol];%Concatenates the new column onto the new cell array.
    originalTop = [cellArr(1,1:end) 'Total Score'];%One of the outputs that provides the originalTop needed for reverting changes.
end