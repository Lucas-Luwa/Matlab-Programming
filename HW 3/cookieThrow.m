function finalV = cookieThrow(velocity, acceleration, time)
    accelByTime = acceleration.*time; 
    %Calculating increase in velocity by multiplying acceleration and time
    finalV = velocity + accelByTime; 
    %Calculating final velocity by adding initial velocity with acceration*time
    %(a*T calculated in line above)
end
