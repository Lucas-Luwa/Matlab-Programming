function output = magneticFlux(resistance, sideLength, current)
    %Uses V = IR in first operation
    v = resistance.*current;
    a = sideLength.^2;
    %Calculates A = Length^2
    output = v/a;
    %Finds dBdt by dividing V by A and rounding to 2 decimals
    output = round(output,2);
end