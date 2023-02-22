function bigTimeRush(velocityData, timeData)
    position = cumtrapz(timeData, velocityData);%Finds the integral of the velocity to find the position data.
    acceleration = diff(velocityData)./diff(timeData);%Finds the derivative of the velocity data. We need to do dv/dt
    subplot(3,1,1);%Creates the first subplot.
    plot(timeData, position, 'b-o');%Plots the position vs. time graph with a blue line and circles.
    xlabel('Time');%Sets the xlabel to Time.
    ylabel('Position');%Sets the ylabel to Position.
    hold on%This will ensure future plots are not erased.
    subplot(3,1,2);%Creates the second subplot.
    plot(timeData, velocityData, 'm*:');%Plots the velocity vs. time graph with a dotten magenta line with stars.
    xlabel('Time');%Sets the xlabel to Time.
    ylabel('Velocity') ;%Sets the ylabel to Velocity.
    subplot(3,1,3);%Creates the third subplot.
    plot(timeData(1:end-1), acceleration, 'xr--');%Plots the acceleration vs. time graph with a red dashed line and cross markers.
    xlabel('Time');%Sets the xlabel to Time.
    ylabel('Acceleration');%Sets the ylabel to Acceleration.
end