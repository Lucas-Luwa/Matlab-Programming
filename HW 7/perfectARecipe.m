function numTweaks = perfectARecipe(numIssues)
    numErrors = 0;
    %We start by initializing numErrors to 0.
    while numIssues>1
       %This while loop wiill run as long as numIssues is greater than 1.
       %Once numIssues is set to anumber less than 1, it will stop.
       if mod(numIssues, 2) == 0
           %We check to see if we have an even value in this if statement.
           numIssues = numIssues./2;
           %Next, we will divide by 2 as requested by the instructions.
       else
           numIssues = numIssues.*3+1;
           %For odd numbers, we will multiply by 3 and add one to them.
       end
       numErrors =  numErrors+1;
       %We need to keep track of the number of errors we are correcting, so
       %we will add 1 each time we run the loop.
    end
    numTweaks = numErrors;
    %At the end of the while loop, we will set the numTweaks output
    %variable to our numErrors variable.
end