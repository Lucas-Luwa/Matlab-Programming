function sentence = jonasBrothers(initStructure, vecFans)
    joeLoc = initStructure.Joe;%Pulls the data from Joe in the structure.
    nickLoc = initStructure.Nick;%Pulls the data from Nick in the structure.
    kevinLoc = initStructure.Kevin;%Pulls the data from Kevin in the structure.
    frankieLoc = initStructure.Frankie;%Pulls the data from Frankie in the structure.
    plot(joeLoc(1), joeLoc(2), 'sr');%Plot Joe's position as a red square.
    hold on%Turns hold on to prevent future plots from being erased.
    plot(nickLoc(1), nickLoc(2), 'sg');%Plot Nick's position as a green square.
    plot(kevinLoc(1), kevinLoc(2), 'sb');%Plot Kevin's position as a blue square.
    plot(frankieLoc(1), frankieLoc(2), 'sk');%Plot Frankie's position as a black square.
    theta = linspace(0,2*pi, 100);%Find 100 theta values between 0 and 2pi.
    xVal = 10.*cos(theta);%Finds the x values using the equation r*cos(theta).
    yVal = 10.*sin(theta);%Finds the y values using the equation r*sin(theta).
    plot(joeLoc(1) + xVal, joeLoc(2) + yVal, '-r');%Plots a red circle with radius of 10 around Joe's location.
    plot(nickLoc(1) + xVal, nickLoc(2) + yVal, '-g');%Plots a green circle with radius of 10 around Nick's location.
    plot(kevinLoc(1) + xVal, kevinLoc(2) + yVal, '-b');%Plots a blue circle with radius of 10 around Kevin's location.
    plot(frankieLoc(1) + xVal, frankieLoc(2) + yVal, '-k');%Plots a black circle with radius of 10 around Frankie's location.
    axis([0,100,0,100]);%Sets the axis from 0 to 100 on both axis.
    joeDist = [sqrt((vecFans(1,:)-joeLoc(1)).^2+(vecFans(2,:)-joeLoc(2)).^2)];
    nickDist = [sqrt((vecFans(1,:)-nickLoc(1)).^2+(vecFans(2,:)-nickLoc(2)).^2)];
    kevinDist = [sqrt((vecFans(1,:)-kevinLoc(1)).^2+(vecFans(2,:)-kevinLoc(2)).^2)];
    frankieDist = [sqrt((vecFans(1,:)-frankieLoc(1)).^2+(vecFans(2,:)-frankieLoc(2)).^2)];
    combinedValues = [joeDist' nickDist' kevinDist' frankieDist'];%Concatenates all distances into one big vector. We rotate all vectors to be vertical in this line.
    [r,c] = size(combinedValues);%Finds the size of combinedValues.
    fanCount = [0 0 0 0];%Initializes the fanCount vector to 4 0s.
    superFanCount = [0 0 0 0];%Initializes the superFanCount to 4 0s.
    for x = 1:r%Runs till the end of rows in combined Values.
        [val, ind] = min(combinedValues(x,:));%Finds the minimum value to determine which brother is the closest.
        if ind == 1%Runs when indecie is 1.
            plot(vecFans(1,x), vecFans(2,x),'r.');%First, we plot the value as a red dot since Joe is red.
            fanCount(1) = fanCount(1)+1;%Next, we increment his fancount.
            if val<=10%If the value is equal to or below 10, we run the following.
                superFanCount(1) = superFanCount(1) + 1;%This line increments Joe's superFanCount.
            end
        elseif ind == 2%Runs when indecie is 2.
            plot(vecFans(1,x), vecFans(2,x),'g.');%First, we plot the value as a green dot since Nick is green.      
            fanCount(2) = fanCount(2)+1;%Fan count is incremented. 
            if val<=10%Runs if the value of distance is equal to or less than 10.
                superFanCount(2) = superFanCount(2) + 1;%This line increases superFanCount in section2.
            end            
        elseif ind == 3%Runs when indecie is 4.
            plot(vecFans(1,x), vecFans(2,x),'b.');%First, we plot the value as a blue dot since Kevin is blue.   
            fanCount(3) = fanCount(3)+1;%Increases the fanCount in indecie 3.   
            if val<=10%Runs if the value is 10 or less.
                superFanCount(3) = superFanCount(3) + 1;%Increases the superFanCount in indecie in 3.             
            end            
        elseif ind == 4%Runs when indecie is 4.
            plot(vecFans(1,x), vecFans(2,x),'k.');%First, we plot the value as a black dot since Frankie is black.    
            fanCount(4) = fanCount(4)+1;%Increases the fanCount for Frankie.
            if val<=10%Runs the following if the value is 10 or less.
                superFanCount(4) = superFanCount(4) + 1;%Increases the superFanCount for Frankie.             
            end            
        end
    end    
    axis square%Sets the axis to square.
    names = [{'Joe'} {'Nick'} {'Kevin'} {'Frankie'}];%Creates a cell array with each of the four Brother's names. This helps us find the most popular brother.
    [~,indOfPopular] = max(fanCount);%Finds the biggest value in fanCount to find the most popular Jonas Brother.
    sentence = sprintf('%s is the most popular Jonas Brother with a whopping %d fans and %d SUPER fan(s)!',names{indOfPopular},fanCount(indOfPopular),superFanCount(indOfPopular));%Creates the output sentence with the name of the most popular brother, the number of fans and the number of super fans.
end