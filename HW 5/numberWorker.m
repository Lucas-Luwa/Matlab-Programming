function [expectedInterest sentence] = numberWorker(loanAmount, interestRates, duration, goal)
    interestRates = interestRates./100;
    %First, we convert interest rates to a decimal. 
    interestEarned = interestRates.*duration.*loanAmount;
    %We then multiply interest rate, duration and loan amount. This is
    %given in the equation I = Prt. I is the interest.
    columns = round(sum(interestEarned),2);
    %We now sum up the columns of the interest array and round to two
    %decimals. 
    expectedInterest = columns;
    %ExpectedInterest will hold the original values of columns
    mask = columns>=goal;
    %This creates a mask where columns is greater than the goal.
    numQuart = sum(mask);
    %We can sum the values of mask to obtain the number of quarters where
    %we meet the goal.
    totalGoods = sum(expectedInterest);
    %This sums all the interest values.
    sentence = sprintf('The bank reached their goal %d quarters out of the year. The total expected interest is $%.2f.',numQuart, totalGoods);
    %This is the sentence equation that includes the number of quarters
    %where the goal was reached and the total interest.
end