function cupsOfSugar = secretFormula(numVec, base, shift, encStr,quantVec) 
    conversion = base10(numVec, base);
    %Uses the base10 helper function from below. 
    %Inputs vector of numbers(numVec) and base number.
    clipped = chopper(encStr, conversion);
    %Uses the chopper helper function from below. 
    %Inputs encryped string(encStr) and conversion value necessary to run the
    %function.
    caesarShift = shifter(clipped, shift);
    %Uses the shifter helper function from below. 
    %Inputs shortened vector of characters(clipped) and shift value needed to
    %perform the caesar shift.
    numberOfCups = finalSum(caesarShift, quantVec);
    %Uses the finalSum helper function from below. 
    %Inputs vector of numbers(quantVec) and shifted character
    %vector(caesarShift)
    cupsOfSugar = "The secret formula needs " + numberOfCups + " cups of sugar!"
    %Uses formulaic sentence as an output.
    %Adds numberOfCups in the middle of the formulaic sentence to complete
    %the secret formula. 
end

function value = base10(numVec, base2)
    value = numVec(1:1:end).*base2.^(length(numVec)-1:-1:0);
    %Converts number to base10 using a set equation. Multiplies number in index spot by the base
    %to the index power. We count down since the vector is read from right
    %to left and not left to right. 
    value = sum(value);
    %Sums the values in the vector to complete the conversion to base 10.
end

function subString = chopper(encrypted, MaxVal)
    subString = encrypted(1:1:MaxVal);
    %Cuts the encrypted string to size. We use base10 value to determine
    %when to cut the encrypted string.
end

function subUnEncrypted = shifter(chopped, shiftValue)
    movement = mod(shiftValue, 26);
    %Converts shift value to something within 1 to 26 by using mod
    %function. This is because some values of shift can be over 26.
    intermediate = (chopped(1:end)+movement)-96;
    %This shifts each character in the shortened encrypted string. 
    %96 is removed since this is the value of one before lower case a.
    resized = mod(intermediate, 26);
    %The excess past 96 is resized back to a value within the alphabet.
    subUnEncrypted = char(96+resized(1:1:end));
    %96 is added back to the resized character list and converted into a
    %vector of characters.
end

function cups = finalSum(partialEncryption, longNumSet)
    indecies = double(partialEncryption);
    %Converts the shifted characters of the caesar shift to a vector of
    %numbers.
    coreValues = longNumSet(indecies(1:1:end));
    %The vector of numbers above are used to pull values from longNumSet,
    %which contains numbers needed to find the number of cups of sugar.
    cups = sum(coreValues);
    %Summing the values in the vector of numbers found above provides us
    %the number of cups of sugar in the secret formula.
end


