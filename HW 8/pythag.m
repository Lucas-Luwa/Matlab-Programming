function b = pythag(a,c)
    b = c.^2-a.^2;%Calculating b side of pythagorean theorum
    b = sqrt(b);%Calculating squaring both sides of equation
    b = round(b,3);%Rounding to three decimal places
end