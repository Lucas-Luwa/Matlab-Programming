function message = sweetHeart(fragmentMessage, yayOrNay, potentialWords)
    yesOrNo = yayOrNay(1:4:end) == 'Y'
    holder = ones(1,length(yayOrNay))
    holder(1:4:end) = yesOrNo
    holder(2:4:end) = yesOrNo
    holder(3:4:end) = yesOrNo
    holder(4:4:end) = yesOrNo
    L = logical(holder)
    combo = potentialWords(L)
    message2 = [fragmentMessage ' ' combo]
    message2(end) = [];
    message = message2;
end
% function message = sweetHeart(fragmentMessage, yayOrNay, potentialWords)
%     potentialWords2 = strsplit(potentialWords, ' ');
%     %Splits the original string into small segments based on the space
%     %placed between each word.
%     yayes = yayOrNay(1:4:end) == 'Y';
%     %Checkes the yayOrNay string for the yays and gives a 1 for each one
%     %found. Note that we don't need to look through every letter and only
%     %need to check the first capitalized letter of each word. 
%     returner = potentialWords2(yayes);
%     %The mask is then applied to the potential words that can be used and
%     %the undesired ones are filtered out. 
%     message = [fragmentMessage ' ' strjoin(returner)];
%     %Concatenation and strjoin is used to create the sentence. Strjoin
%     %combines the cell array used above. 
% end
