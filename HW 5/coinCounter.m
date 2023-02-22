function [money, topScore] = coinCounter(coin, type)
    monies = ones(1, length(type));
    %This creates a vector of ones with the length of type. 
    monies(type=='p') = 0.01;
    %Finds the index of pennies and sets it to 0.01
    monies(type=='q') = 0.25;
    %Finds the index of quarters and sets it to 0.25
    monies(type=='n') = 0.05;
    %Finds the index of nickles and sets it to 0.05
    monies(type=='d') = 0.1;
    %Finds the index of dimes and sets it to 0.1
    saver = coin;
    %Saves the original value of the coin.
    coin = coin.*monies;
    %multiplies the coin values by the monetary value. This uses the monies
    %vector that has the decimal values. 
    totals = sum(coin');
    %Calculates the sum of the columns. This is transposed so we can get
    %the totals of each individual. 
    saver = [saver totals'];
    %Concatenates the transpose of the totals to the saved values. This
    %gives us the totals of each row. 
    [top, index] = max(totals);
    %This gives the value and index of the highest paid employee
    topScore = sprintf('Employee number %d was the highest paid and made $%.2f in tips today.', index, top);
    %This is the sentence format with the employee number and tip amount
    %added in. 
    sort = sortrows(saver, 5, 'descend');
    %The rows of the saver function are sorted in descending order by row
    %5.
    money = sort';
    %The sorted array is then transposed to match the requirements of the
    %assignment.
    money = round(money,2);
    %Lastly, all values are rounded to two decimal points.
end