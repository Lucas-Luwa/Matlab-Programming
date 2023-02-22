function newVec = pastrySales(everyOtherProfit)
    newVec = everyOtherProfit(1);
    %We start by starting from the first index of the given vector.
    for x = 1:length(everyOtherProfit)-1
        %This for loop starts from the first index but ends one from the end to
        %prevent an index out of bounds error.
        avg = (everyOtherProfit(x) + everyOtherProfit(x+1))./2;
        %The average will take the current index and the index of the next
        %value to find the mean. This value is summed and divided by 2 to
        %accomplish this goal.
        newVec = [newVec avg everyOtherProfit(x+1)];
        %We can concatenate the current vector with the avg value and the
        %next value in the vector. This allows us to essentially only add
        %the average and the next value each time. 
    end
end