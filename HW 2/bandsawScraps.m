function [feetLeft,inchesLeft] = bandsawScraps(amountToCut)
    remainder = 120-amountToCut;
    %Finds remainder of wood after cutting amount required away.
    feetLeft = floor(remainder./12);
    %Divides remainder by 12 to find feet remaining.
    inchesLeft = mod(remainder,12);
    %Finds remaining inches of wood after accounting for feet remaining.
end