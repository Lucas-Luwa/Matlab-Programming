function angle  = cosineCalculator(a,b,c)
    angle = -c.^2+a.^2+b.^2;%Calculates first portion of cosine equation
    angle = angle/2;%Divides current angle holder value by 2
    angle = angle/(a.*b);%takes previous angle value and divides by a multiplied by b
    angle = acosd(angle);%now we need to get rid of cosine by using cosd
    angle = round(angle,2);%Lastly, round to two decimals
end