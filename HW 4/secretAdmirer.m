function niceMessage = secretAdmirer(encoded, meaningfullness)
    meaningfullness = meaningfullness >= 6;
    %Detects if meaningfullness and uses logicals to indicate if the value
    %is above 6. Trues are represented by 1s and falses are representeded
    %by 0s
    niceMessage = lower(encoded(meaningfullness));
    %This next line essentially filters out the sections that are not as
    %meaningful. The phrase is then converted to lower case to make it more
    %aesthetically pleasing.
end