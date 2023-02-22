function [statement, wiltCount] = flowerPicking(type, assortment, dayStored)
    flowerCount = assortment(1:end) == type;
    %Using masking to find the values that equal the type of flower
    %desired.
    tempDay = dayStored(flowerCount);
    %This will then filter out the unnecessary day storage values for
    %flowers that we don't care about. 
    deadFlowers = dayStored(flowerCount(1:end))>=15;
    %This function then goes through each day stored for the flowers that
    %we desire. Those 15 or over will be added to the deadFlowers vector.
    statement = ['There are/is ' num2str(length(tempDay)) ' of the right flower(s) in the flower shop']; 
    %This statement is a template to indicate the number of flowers we have
    %available. This finds the length of tempDay, which has the number of
    %flowers we have available. The number is then converted to a string to
    %ensure no problems occur with the output.
    deadCount = deadFlowers(1:end) == 0;
    %deadCount indicates true for flowers that are not dead.
    wiltCount = length(deadCount(deadCount));
    %We can then use mask of deadCount against itself to delete undesired
    %values and find the length of the resulting vector. This will provide
    %the number of unwilted flowers.
end