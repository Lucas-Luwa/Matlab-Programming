function sentence = luckyCharms(order, invoices)
    [~,c] = size(invoices);%Finds the columns in the invoices input value.
    [~,c1] = size(order);%Finds the columns in the invoices input variable.
    z = 0;%Initializes z to 0.
    holder = [];%Initializes the holder vector to an empty vector.
    for x = 1:c%Runs through each of the columns in the invoices.
        for y = 1:c1%Runs through each of the columns in the order.
            init = order{y};%Starts off with the first value in the order.
            if invoices(x).(init{1}) == order{y}{2}%Checks to see if the invoice value is the same as the order at that specific column.
                holder = [holder true];%If yes, a true is concatenated onto the holder vector.
            else
                holder = [holder false];%If not, a false is concatenated onto the holder vector.
            end
        end
        if all(holder)%If all values are true, we will run the following code.
            z = x;%z is set to x if all values are true.
        end
        holder = [];%Holder is reset for the next run.
    end
    num = invoices(z).Order;%We can then set the number to the order number at the index we found above(z).
    sentence = sprintf('This customer is here to pick up Order Number %d!', num);%This outputs the sentence complete with the order number.
end