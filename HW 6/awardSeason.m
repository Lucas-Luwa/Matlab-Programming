function sentence = awardSeason(playerA, playerB)
    sentence = ' ';
    loser = ' ';
    winner = ' ';
    %Placeholders are set for winner and loser to prevent any potentiall
    %errors from occuring. These aren't necessarily important to the
    %program's function.
    switch playerA
        %We will focus on the first player and compare it to the secont
        %player in our nested for loops. Cases will be activated based on
        %the value in playerA.
        %Winner will indicate the winner and loser indicates the loser.
        case 'Ronaldo'
            if strcmp(playerB, 'Kane')
                loser = 'Kane';
                winner = 'Ronaldo';
                %This is the result when Ronaldo plays Kane.
            elseif strcmp(playerB, 'Solo')
                loser = 'Ronaldo';
                winner = 'Solo';
                %This is the result when Ronaldo plays Solo.
            elseif strcmp(playerB, 'Messi')
                loser = 'Ronaldo';
                winner = 'Messi';
                %This is the result when Ronaldo plays Messi.
            else
                loser = 'Ronaldo';
                winner = 'Wambach';
                %This is the result when Ronaldo plays Wambach. Since it is
                %the final check, we can just put else instead of another
                %elseif.
            end    
        case 'Solo'
            if strcmp(playerB, 'Kane')
                loser = 'Solo';
                winner = 'Kane';
                %These are the results when Solo plays Kane. 
            elseif strcmp(playerB, 'Ronaldo')
                loser = 'Ronaldo';
                winner = 'Solo';
                %This is the result when Solo plays Ronaldo.
            elseif strcmp(playerB, 'Messi')
                loser = 'Messi';
                winner = 'Solo';
                %This is the result when Solo plays Messi.
            else
                loser = 'Solo';
                winner = 'Wambach';
                %this is the result when Solo plays Wambach. Remember that
                %this is the final statement, so we can just use else.
            end 
        case 'Messi'
            if strcmp(playerB, 'Kane')
                loser = 'Kane';
                winner = 'Messi';
                %This is the result when Messi plays Kane.
            elseif strcmp(playerB, 'Ronaldo')
                loser = 'Ronaldo';
                winner = 'Messi';
                %This is the result when Messi plays Ronaldo.
            elseif strcmp(playerB, 'Solo')
                loser = 'Messi';
                winner = 'Solo';
                %This is the result when Messi plays Solo
            else
                loser = 'Wambach';
                winner = 'Messi';
                %This is the result when Messi takes on Wambach. Again, the
                %else statement is use instead of elseif, since this is the
                %last check.
            end 
        case 'Kane' 
            if strcmp(playerB, 'Solo')
                loser = 'Solo';
                winner = 'Kane';
                %This is the result when Kane plays Solo.
            elseif strcmp(playerB, 'Ronaldo')
                loser = 'Kane';
                winner = 'Ronaldo';
                %When Kane takes on Ronaldo, this is the result.
            elseif strcmp(playerB, 'Messi')
                loser = 'Kane';
                winner = 'Messi';
                %Kane vs. Messi will result in the above.
            else
                loser = 'Wambach';
                winner = 'Kane';
                %When Kane plays Wambach, Kane wins and Wambach loses.
                %If the other statements aren't true, the last player must
                %be Wambach. Therefore, we use else.
            end 
        case 'Wambach'
            if strcmp(playerB, 'Kane')
                loser = 'Wambach';
                winner = 'Kane';
                %This is the result when Wambach plays Kane.
            elseif strcmp(playerB, 'Ronaldo')
                loser = 'Ronaldo';
                winner = 'Wambach';
                %As you can see, Wambach destroys Ronaldo in a match.
            elseif strcmp(playerB, 'Messi')
                loser = 'Wambach';
                winner = 'Messi';
                %Messi is declared the winner in the match agains Wambach.
            else
                loser = 'Solo';
                winner = 'Wambach';
                %Wambach wins against Solo. This assumes that the last
                %player is Solo.
            end 
            
    end
    if strcmp(playerA, 'Paul Johnson') | strcmp(playerB, 'Paul Johnson')
        sentence = sprintf('Paul Johnson does it again! He has won against the odds!');
        %If Paul Johnson appears as either player, the game automatically
        %goes to him.
    elseif strcmp(playerA, playerB)
        sentence = sprintf('This is just an ego boost for %s. This isn''t really the Ballon d''Or.',playerA);
        %If the players are the same, they will receive a sentence with
        %just their name in it.
    else
        sentence = sprintf('%s wins the specialty Ballon d''Or over %s! They destroyed the competition!',winner, loser);
        %If those two cases aren't true, the function will output this
        %generic program that factors in the winner and loser set above in
        %the previous test case.
    end
end