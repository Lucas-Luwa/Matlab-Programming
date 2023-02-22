function pokemonGO(timeStamps, positions, chloeStealsPhone)
    mask = timeStamps<=chloeStealsPhone;%Finds the instances where the timeStamp is less than the time when my sister steals my phone.
    timeStamps(~mask) = [];%Removes the indecies that are past that time in timeStamps.
    positions(~mask) = [];%Does the same for the positions vector. This ensures we do not have any mismatched data.
    plot(timeStamps, positions, '-md');%Plots the timeStamps and positions on a graph. The values after indicate diamonds on a solid magenta line.
    axis square;%Makes the plot a square.
    title('pokemonGO');%Labels the title of the plot to pokemonGo.
    xlabel('timestamps');%Labels the x axis title to timestamps.
    ylabel('positions');%Labels the y axis title to positions.
end