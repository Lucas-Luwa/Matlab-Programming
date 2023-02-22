function sentence = blender(list, ingredient)
    ingredientRev = list(end:-1:1);
    %Goes through the vector backwards to reverse the order of the vector.
    location = strfind(ingredientRev, '!');
    %Finds indecies of '!' character and adds them to a vector.
    ingredientRev(location(1:1:end)) = [];
    %Deletes '!' by going through the vector and deleting characters at the
    %indecies specified by the location vector created above.
    value = strfind(lower(ingredientRev), ingredient);
    %Starts by setting the reveresed string to lower case, since this is
    %case sensitive.
    %Finds the location of the ingredient within the string using strfind.
    sentence = ['I need to buy ' num2str(value) ' '  ingredient '(s).']; 
    %Formulaic sentence with inputs for number of ingredient and ingredient
    %name.
    %Ingredient is given as an input variable.
    %We convert the number of the ingredient to a string to prevent the
    %program from converting the entire sentence into a bunch of numbers.
end