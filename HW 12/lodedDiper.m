function lodedDiper(xValues, yValues)
    plot(xValues,yValues, 'ro');%Plots the current x and y values with red circles.
    newXVals = linspace(min(xValues),max(xValues));%Creates a set of data with evenly spaced values between the smallest and largest x values. There will be 100 of these.
    coeffOrigin = polyfit(xValues,yValues,1);%Finds the coefficient of the first polyfit line.
    hold on%Turns hold on to ensure future plots are not erased.
    newy = polyval(coeffOrigin, newXVals);%Finds the newy values using the coefficients of the equation found above.
    newy2 = polyval(coeffOrigin, xValues);%Finds the newy values using the coefficients of the equation found above. However, this one will have the original xValues since we need to ensure that we have something to compare to when calculating the r squared value.
    plot(newXVals, newy,'-b');%Plot the y and x values we calculated recently.
    r2 = 1 - sum((yValues-newy2).^2)./sum((yValues-mean(yValues)).^2);%Calculate the r squared value using the equation 1 - sum((y-newy)^2))/sum(y-avg(y)).
    orderNum = 2;%Set the order to 2 to start off.
    while r2 < 0.9%Keep iterating as long as the r2 value is below .9.
        coeff = polyfit(xValues,yValues,orderNum);%Finds new coefficients based on the x and y values as well as orderNum.
        newy = polyval(coeff, newXVals);%Calculates the newy with the updated x Values.
        newy2 = polyval(coeff, xValues);%Calculates a newy(which is used for calculating r squared values).
        r2 = 1 - sum((yValues-newy2).^2)./sum((yValues-mean(yValues)).^2);%Calculates the r squared value a second time for furthur processing and for the conditional in the while loop.
        if r2 < 0.9%If the value is still below .9, run the following.
            plot(newXVals, newy,'-b');%Plots the lines as a blue line.
        else%If not, we know this is the final plot.
            plot(newXVals, newy,'-g');%Plots the final line as a green line.
        end
        orderNum = orderNum + 1;%Increase the orderNum after each pass.
    end
end