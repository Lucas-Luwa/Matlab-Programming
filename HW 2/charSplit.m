function [letterStart, letterEnd] = charSplit(value)
    holderValue = str2num(value);
    %Converts given string to a number
    firstNum = floor(holderValue);
    %Rounds down to find first number and first character.
    secondNum = ceil(holderValue);
    %Rounds up to find the second number and second character.
    letterStart = char(firstNum+64);
    letterEnd = char(secondNum+64);
end