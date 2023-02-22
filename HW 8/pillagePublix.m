function [publicInventory, sentence] = pillagePublix(publicInventory, myList)
    items = [];%Initializes items to an empty vector.
    quantity = [];%Initializes the quantity vector to an empty vector.
    mask = myList == ',';%Creates a mask and finds the number of commas in the list.
    len = sum(mask) + 1;%This finds the number of items in our list. This will end up being one more than the sum of the commas.
    groceryItem = [];%Initializes groceryitem to an empty vector.
    quantities = [];%Initializes quantities to an empty vector.
    feeder = myList;%Initializes feeder to myList input value.
    for x = 1:len
        %Runs for each item in our list.
        [word,rem] = strtok(feeder, '-');
        %Separates the word from the number provided to us.
        [word2,rem2] = strtok(rem, ',');
        %Takes in the remainder and separates by the comma to find the
        %number associated with the grocery item.
        feeder = rem2;
        %Feeder is the remaining items and quantities in the list.
        mask2 = word == ',';
        %This finds the comma remaining in the word.
        word(mask2) = [];
        %Cuts off the comma in the word.
        groceryItem = [groceryItem {word}];
        %Adds the grocery item to the existing cell array of items.
        word2(1) = [];
        %Since we know the first item will be a - in front of the number,
        %we can safely chop this section off.
        quantities = [quantities {word2}];   
        %Add this number to the quantities cell array. We use curly braces
        %to do this.
    end
    [row, ~] = size(publicInventory);
    %Finds the number of rows in the public Inventory.
    [~, col] = size(groceryItem);
    %Finds the number of columns in our grocery list.
    totalCost = 0;%Initializes totalCost variable to 0.
    for x = 1:col
        %Runs till the end of the groceryItem list. 
        for y = 1:row
            %Runs till the end of the items in the public Inventory.
            if strcmpi(groceryItem(1, x), publicInventory(y,1))
                %We want to compare each column item in our grocery list to
                %the first row value in the public inventory. 
                totalCost = totalCost + str2num(quantities{1,x}).*publicInventory{y,3};
                %If the above is true, we can calculate the totalCost by
                %adding the quantities*inventory cost to the current
                %totalCost variable.
                publicInventory(y,2) = {publicInventory{y,2} - str2num(quantities{1,x})};
                %Lastly, we need to adjust the remaining inventory by
                %subtracting the amount we took from the store.
            end
        end
    end    
    sentence = sprintf('My total is $%.2f.', totalCost);
    %Outputs a sentence that integrates the total cost of our order. This
    %is rounded to two decimals.
end