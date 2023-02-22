function missing = piEcesOfPie(initData)
    [row, ~] = size(initData);
    %Finds the rows of the input value.
    missing = initData;
    %Sets the missing variable to the input value. 
    for x = 1:row
        %Runs to the last row of the input value. 
        if strcmp(initData{x,1}, 'V')
            %We check the first spot of each row to see if there is a
            %variable there for us to fill in. 
            newVal = pi.*(initData{x,2}.^2).*initData{x,3};
            %This sets newVal to the result of the calculation V = pi*R^2*h
            %This equation is given in the starter pdf. Remember that the R
            %value is in the second slot and the h value is in the third
            %spot.
            newVal = round(newVal, 2);
            %We round the value we find to 2 decimals.
            missing{x,1} = newVal;
            %Sets the missing value to the value found above.
        end
        if strcmp(initData{x,2}, 'R')
            %This runs if the second spot in each row has a placeholder
            %variable 'R'.
            newVal = (initData{x,1}./(pi.*initData{x,3})).^.5;
            %We set the new value to fit the equation V = pi*R^2*h. We will
            %need to manipulate this equation to be root(v/(pi*h)).
            %Remember that V is the first value and h is the third value. 
            newVal = round(newVal, 2);
            %Rounds the value we found to two decimals. 
            missing{x,2} = newVal;
            %We set the missing value to the value we found above. 
        end
        if strcmp(initData{x,3}, 'h')
            %This final section runs if the third value has a placeholder
            %'h'.
            newVal = initData{x,1}./(pi.*initData{x,2}.^2);
            %Again, we need to manipulate the equation V = pi*R^2*h to
            %solve for h. This results in V/(pi*R^2) = h. Keep in mind the
            %V is the first value and R is the second value. 
            newVal = round(newVal, 2); 
            %Round the value we find to 2 decimals.
            missing{x,3} = newVal;
            %This sets the third value to the value we found above.
        end
    end  
end