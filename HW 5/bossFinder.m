function boss = bossFinder(names)
    numArray = sum(names');
    %The ascii values of the transpose of the names are combined. This
    %creates a horizontal vector of individuals. 
    [val, index] = max(numArray);
    %This finds the maximum value of the combined ascii values and outputs
    %the value and index. 
    boss = names(index, :);
    %Lastly, we go back and use the index as the rows to find the boss'
    %name.
end