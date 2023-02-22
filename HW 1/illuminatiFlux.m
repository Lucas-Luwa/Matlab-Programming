function B = illuminatiFlux(distance)
    mu = 4.*pi.*10.^-7; %Calculates portion of flux equation
    numerator = mu.*9; %Takes previously calculated number and multiplies by (3)^2
    denominator = 2.*pi.*distance;%Calculates denominator of flux equation.
    B = numerator/denominator;%Dividing numerator by denominator
    B = round(B,2);%Round to two decimals.

end