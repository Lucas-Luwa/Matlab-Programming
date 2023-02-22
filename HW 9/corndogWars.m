function [outcome, updatedA, updatedB] = corndogWars(statsA, statsB)
    [aAttack, bDefense] = warStats(statsA, statsB);%Sends the statistics of both A and B to the helper function warStats find the attack of a and the defense of b.
    [bAttack, aDefense] = warStats(statsB, statsA);%Sends the statistics of both a and b to the helper function warStats find the attack of b and the defense of a.
    aDamage = damage(aAttack, bDefense, statsA);%Calculates the damage done by a by sending the required data to the damage helper function.
    bDamage = damage(bAttack, aDefense, statsB);%Calculates the damage done by b by sending the required data to the damage helper function.
    [outcome, updatedA, updatedB] = war(aDamage, bDamage, statsA, statsB);%Send the information needed to the war helper function to find the 3 necessary outputs.
end

function [winner, statsA, statsB] = war(aDam, bDam, statsA, statsB)%war helper function that outputs updated statistics and the winner statement.
    aHealth = statsA.Health;%Sets the health of a to the original health value of a.
    bHealth = statsB.Health;%Sets the health of b to the original health value of b.
    turn = 0;%Initializes the turn counter to 0.
    while aHealth>0 & bHealth>0%Will continue to run as long as both health values are above 0.
        if mod(turn, 2) == 0%Runs for even turns.
            bHealth = bHealth - aDam;%Runs attack for A and updates b's Health.
        else
            aHealth = aHealth - bDam;%If the turn is odd, run the attack for B and remove this value from a's health.
        end
        turn = turn+1;%Increase the turn count.
    end
    if aHealth<0%Checks to see if the A health is below 0.
        aHealth = 0;%If yes, set it to 0.
    end
    if bHealth<0%Checks to see if the B health is below 0.
        bHealth = 0;%If yes, set it to 0.
    end
    statsA.Health = aHealth;%Set the health value in stats for a to the new a health.
    statsB.Health = bHealth;%Set the health value in stats for b to the new b health.
    if aHealth~=0%If a's health isn't zero, run the following.
        winner = sprintf('%s destroyed %s to become the 2021 Corndog Champion!',statsA.Name, statsB.Name);%Uses both names to write a statement declaring b's victory.
    else%Otherwise, we will run this to declare a's victory.
        winner = sprintf('%s destroyed %s to become the 2021 Corndog Champion!',statsB.Name, statsA.Name);%Uses both names to write a statement declaring a's victory.
    end
end

function totDam = damage(attack, damage, stats)%Damage helper function.
    aOverD = attack./damage;%Calculates the first part of the damage equation by dividing attack by damage.
    totDam = round(aOverD.*stats.Level.^2);%round the result of the above multiplied by level squared.
end

function [aPow, bPow] = warStats(statsA, statsB)%Helper function for finding power of each stat.
    afield = fieldnames(statsA);%Pull the fieldnames from statsA.
    bfield = fieldnames(statsB);%Pull the fieldnames from statsB
    maskA = strfind(afield, 'Attack');%Find the field that contains attack in it.
    aLoc = 0;%Initializes aLoc to 0.
    maskB = strfind(bfield, 'Defense');%Finds the field that contains defense in it.
    bLoc = 0;%Initializes bLoc to 0.
    for x = 1:5%Runs five times since there are only 5 fields.
        if maskA{x} ~= 0%Checks to see if the specific mask value is not 0.
            aLoc = x;%If true, we will set the location of a to x.
        end
        if maskB{x} ~= 0%Checks to see if the specific mask value isn't 0.
            bLoc = x;%If true, we will set the location of b to x.
        end
    end
    aPow = statsA.(afield{aLoc});%Sets the power of a to the value of the field name that is located at aloc position found previously.
    bPow = statsB.(bfield{bLoc});%Sets the power of b to the value of the field name that is located at bloc position found previously.
end
