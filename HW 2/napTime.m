function [positionHand,positionMinute] = napTime(hourHand, minuteHand, direction)
    totalTime = hourHand.*60 + minuteHand + direction;
    %Finds current time in minutes by combining the minute value of inputs.
    %hours are multiplied by 60.
    handHolder = totalTime./60;
    %This finds the hours in decimals.
    totalTime = totalTime - 60.*floor(handHolder);
    %This is used later on - but it essentially finds the minutes left.
    %We remove the positionHand value from the total to find minutes left.
    handHolder = mod(handHolder,12);
    %Ensures hours is not over 12 by using modulus.
    positionHand = floor(handHolder);
    %Drops decimal for the hour hand.
    positionMinute = totalTime;
end