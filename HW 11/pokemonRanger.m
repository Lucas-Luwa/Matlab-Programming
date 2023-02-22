function pokemonRanger(pokemonLocations)
    pokeData = readcell(pokemonLocations);%Read the data from the input excel file name and store it in pokeData.
    [row, col] = size(pokeData);%Finds the rows and columns of the cell array extracted from the file.
    for x = 2:row%runs for each row except the top identifier row.
        if strcmp(pokeData{x,2}, 'Fire')%If the type is Fire, we will run the following.
            subplot(1,3,2);%Creates the second subplot. 
            plot(pokeData{x,3},pokeData{x,4}, 'rp')%Plots the position of the star on the graph.
            hold on %Turns on hold to prevent content from being erased.
            adjSize = pokeData{x,5}./2;%Takes the given length value and divides it by 2.
            xData = pokeData{x,3};%Finds the x position of the marker.
            yData = pokeData{x,4};%Finds the y position of the marker.
            xContents = [xData-adjSize xData-adjSize xData+adjSize xData+adjSize xData-adjSize];%Creates a set of x positions based on the original position and the length/2 to help create the square.
            yContents = [yData-adjSize yData+adjSize yData+adjSize yData-adjSize yData-adjSize];%Creates a set if y positions based on the original position and the length/2 to help create the square.
            hold on%Ensure hold is still on.
            plot(xContents,yContents,'-r')%Plot the contents in red.
            axis equal%Sets the axis to equal.
        elseif strcmp(pokeData{x,2}, 'Grass')%Runs if the type is grass.
            subplot(1,3,1);%Creates the first subplot.
            plot(pokeData{x,3}, pokeData{x,4}, 'g*')%Marks the location of the center with an asterisk.
            hold on%Ensures that hold is on to prevent content from being erased.
            theta = linspace(0,2*pi,100);%Creates 100 values that are between 0 and 2pi.
            r = pokeData{x,5};%Finds the r value of the circle.
            xData = pokeData{x,3} + r.*cos(theta);%Adds on r*cos(theta) value to the x component.
            yData = pokeData{x,4} + r.*sin(theta);%Adds on r*sin(theta) value to the y component.
            plot(xData,yData,'-g')%Plots the data with a solid green line.
            axis equal%Sets the axis to equal.
        else
            subplot(1,3,3)%Creates the third plot of the program.
            plot(pokeData{x,3}, pokeData{x,4}, 'b.')%Sets the marker to the center of the object. The marker is a period.
            hold on%Ensures that hold is on to prevent content from being deleted.
            shortY = tand(30).*pokeData{x,5}./2;%This finds the value of tan(30)*r/2. This is the value of the distance between the center of the triangle and the bottom of the equilateral triangle.
            longY = pokeData{x,5}./2.*tand(60) - shortY;%This finds the value of tan(60)*x/2 - shortY. This is the value of the distance between the center of the triangle and the top of the triangle.
            halfLength = pokeData{x,5}./2;%Calculates the length of half of the length value given.
            xData = pokeData{x,3};%Finds the initial x position of the object.
            yData = pokeData{x,4};%Finds the initial y position of the object.
            xContent = [xData-halfLength xData+halfLength xData xData-halfLength];%Creates the x position data needed for the plot.
            yContent = [yData-shortY yData-shortY yData+longY yData-shortY];%Creates the y position data needed for the plot. 
            plot(xContent,yContent,'-b')%Plots the data with a solid blue line.
            axis equal%Sets the axis to equal.
        end
    end
end