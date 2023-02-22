function letter = shiftCode(input)
    shifterValue = mod(input, 26);
    %Takes in number input and uses modulus to get a number between 1-26
    letter = char(shifterValue+64);
    %Then takes number from above and shifts it by 64 to obtain upper case
    %letters
end