function std = kPop(structure)
    xVal = [];%Initialized xVal to an empty vector.
    yVal = [];%Initialized yVal to an empty vector.
    for x = 1:length(structure)%Loops through the number of items in structure.
        yVal = [yVal structure(x).Height];%Concatenates the structure heights into yVal.
        xVal = [xVal x];%Grabs all the x values and concatenates them to xVal.
    end
    maxVal = max(yVal);%Finds the maximum yValue and outputs the value.
    minVal = min(yVal);%Finds the minimum yValue and outputs the value.
    plot(xVal, yVal, 'm.');%Plots the x and y data with magenta dots.
    axis([xVal(1) xVal(end) minVal maxVal]);%Sets the axis to the first x value, last x value and the min and max of y found above.
    avg = mean(yVal);%Finds the average of all values in yVal.
    nValue = length(yVal);%Finds the length of yVal and sets it to nValue.
    total = 0;%Initializes total to 0.
    for x = 1:nValue%Loops until nValue is hit.
        total = total + (yVal(x)-avg).^2;%Adds the difference between the current y value and the average y value squared to total.
    end
    std = round((total/(nValue-1)).^.5,2);%Divides total by nValue-1 squared to find the standard deviation. Additionally, we round this value to 2 decimals.
end