function specialSum = cookieCounter(cookieCal)
setter = false;
%Set setter to false to initialize it.
    while setter == false
        %Runs until the perfect value is found.
        for x = 1:length(cookieCal)
            %First loop runs through each potential value. This is the
            %first value we look for.
            for y = x+1:length(cookieCal)
                %The second value will start from x+1 since we don't want
                %to add the same number to itself.
                for z = y+1:length(cookieCal)
                    %The third value will start from y+1 to avoid overlaps.
                    sum = cookieCal(x) + cookieCal(y) + cookieCal(z);
                    %This sums all the values of the indexed values.
                    if sum == 1371
                        %This runs if we obtain the magic # of 1371!
                        setter = true;
                        %Sets setter to true and cuts off the loop.
                        specialSum = [cookieCal(x) cookieCal(y) cookieCal(z)];
                        %Concatenates the combination needed to get 1371.
                    end
                end
            end
        end
    end
    specialSum = sort(specialSum, 'd');
    %Sorts the vector in descending order.
end