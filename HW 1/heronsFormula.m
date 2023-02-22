function [s, area] = heronsFormula(Aside,Bside,Cside)
    s = (Aside+Bside+Cside)./2;%Calculates herons formula by adding sides and dividing by 2
    area = s.*(s-Aside).*(s-Bside).*(s-Cside);%Proceeds to perform calculation to find area
    area = sqrt(area);%Takes root of area for final area calculation
    area = round(area,2)%Rounds to two decimals
end
