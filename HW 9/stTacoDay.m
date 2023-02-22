function nameToppings = stTacoDay(ingredients)
    runs = length(ingredients);%Finds the number of items in the ingredients input.
    name = ' ';%Initializes the name variable to a space.
    toppings = [];%Initializes the toppings vector to an empty vector.
    saver = ' ';%Initializes the saver variable to a space. 
    for x = 1:runs%Loops through the number of ingredients.
        topping = ingredients(x).topping;%Sets topping to the first topping available in ingredients.
        nextItem = ingredients(x).nextTopping;%Creates the next item as the value in next topping.
        while ~isempty(nextItem)%Runs as long as the next item isn't empty.
            toppings = [toppings topping ', '];%Concatenates each topping into the vector and adds a comma.
            topping = nextItem.topping;%Sets the next topping to the next item's topping.
            nextItem = nextItem.nextTopping;%Sets the next item to the next topping within the next item.
        end
        toppings = [toppings topping ','];%Adds on the last topping left in the list.
        mask = strfind(toppings, 'meat');%Finds instances of meat within the toppings list.
        if sum(mask) == 0%If no items exist, this is a vegetarian order.
            name = ingredients(x).name;%We will set the name to the person who has the vegetarian order.
            saver = toppings;%Toppings are saved for later use.
        end
        toppings = [];%Toppings are cleared in preparation for another loop.
    end
    nameToppings = sprintf('%s is vegetarian. They got %s on their taco!', name, saver);%Outputs the vegetarian's name and order.
end