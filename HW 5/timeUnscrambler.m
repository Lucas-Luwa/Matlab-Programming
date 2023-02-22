function fixed = timeUnscrambler(scrambled)
    scrambled  = abs(scrambled);
    %The absolute value of the scrambled array is obtained.
    holder = scrambled;
    %We use a holder array to save the old data in scrambled.
    [row, col] = size(scrambled);
    %This finds the row and columns of the scrambled array.
    max = min(row^2, row*col);
    %Takes the minimum of the rows squared and row times columns to find
    %the max value we need to index to.
    values = scrambled(1:row+1:max);
    %Find the values from scrambled that need to be reversed.
    values = values(end:-1:1);
    %Reverse the order of the values we found above.
    scrambled(1:row+1:max) = values;
    %Addes the reversed diagonal values back into the scrambled array.
    sorted = sortrows(scrambled,1, 'ascend');
    %This sorts the first row of scrambled in ascending order.
    [row, col] = size(sorted);
    %This finds the rows and columns of the new sorted array.
    [hours, minutes] = compTime(sorted(1:1:row));
    %We can use the compTime helper function to find hours and minutes
    fixed = [hours' minutes' sorted(:, 2:1:end)];
    %Lastly, we find the transpose of the hours and minutes vectors and
    %concatenate them to the sorted array. Note that we deleted the first
    %column in sorted by starting from 2.
end

function [hour, mins] = compTime(time)
    %Helper function to split time into hours and minutes
    hour = floor(time./60);
    %Calculates number of hours in time. Floor ensures we don't
    %accidentally round up hours.
    mins = mod(time, 60);
    %The remaining time will be minutes. This is essentially any part that
    %isn't evenly divided by 60.
end