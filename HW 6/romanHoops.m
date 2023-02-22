function [decryptedMessage decryptedWord] = romanHoops(encryptedMessage, keyWord, shiftNum)
    mask = keyWord>='A' & keyWord<='Z' | keyWord>='a' & keyWord<='z';
    %This masks out all characters outside of the alphabet.
    newWord = keyWord(mask);
    %This new word will omit characters outside of the alphabet using the
    %mask created above.
    mask2 = newWord>='A' & newWord<='Z';
    %This creates a second mask that identifies the upper case letters.
    newWord(mask2) = char(newWord(mask2) + 32);
    %Upper case letters have a special shifter to set them to lower case.
    %This is because the lower function is banned.
    decrypt = caesar2(newWord, shiftNum);
    %Use the second caesar shifter to unecrypt the word. 
    manipulatedWord = shifter(chopper(decrypt), encryptedMessage);
    %This utilizes two helper functions. First, decrypt is sent to the
    %chopper to remove repeated values. This value and encrypted Message is
    %then sent to the shifter for manipulation.
    decryptedMessage = manipulatedWord;
    %The output of the line above is then set to decryptedMessage.
    decryptedWord = chopper(decrypt);
    %The finalized word is sent to decryptedWord as an output.
end

function output = shifter(word, encrypt)
    %Helper function with keyword and encryptedMessage
    shiftA = abs(word(1) - word(end));
    %Finds the difference between the first and last characters in word.
    shiftB = abs(word(2) - word(end-1));
    %Finds the difference between the second and second to last characters
    %in word.
    if shiftA == 0
        shiftA = 1;
        %If the first shifter is zero, we'll set it to 1.
    end
    if shiftB == 0
        shiftB = 2;
        %If the second shifter is zero, we'll set it to 2.
    end
    word = 0 + word;
    %Converts word to a vector of numbers.
    charIndex = mode(word);
    %Finds the number of the most reoccuring number in the word vector.
    most = char(mode(word));
    %Converts this number to a character.
    if mod(charIndex,2) == 1 & most ~= 'a' & most ~= 'e' & most ~= 'i' & most~= 'o' & most ~= 'u' 
        %If the character is an odd character and isn't a vowel, we will
        %run the code below.
        decrypt1 = caesar(encrypt, shiftA);
        %The first decrypt value is found by shifting the encryped message
        %by shiftA.
        decrypt2 = caesar(encrypt, shiftB);
        %The second decrypt value is found by shifting the encrytped
        %message by shiftB.
        encrypt(1:2:end) = decrypt1(1:2:end);
        %Odd indecies are shifted by the values of shiftA.
        encrypt(2:2:end) = decrypt2(2:2:end);
        %Even indecies are shifted by shiftB
    elseif mod(charIndex,2) == 0 & most ~= 'a' & most ~= 'e' & most ~= 'i' & most~= 'o' & most ~= 'u'
        %Even characters that aren't vowels will use the following code.
        if mod(shiftA, 2) == 0 & mod(shiftB, 2) == 1
            %When shift A is even and shiftB is odd, we run the following
            %code.
            shiftB = shiftB.*2;
            %shiftB is multiplied by 2.
            decrypt1 = caesar(encrypt, shiftA);
            %decrypt1 is found by shifting the message by shiftA
            decrypt2 = caesar(encrypt, shiftB);
            %decrypt2 is found by shifting the message by shiftB
            maskOdd = mod(encrypt, 2) == 1;
            %This mask finds the odd characters in the encrypted message.
            maskEven = mod(encrypt, 2) == 0;
            %This mask finds the even characters in the encrypted message.
            encrypt(maskOdd) = decrypt1(maskOdd);
            %Odd characters will be shifted by shiftA.
            encrypt(maskEven) = decrypt2(maskEven);
            %Even characters are shifted by shiftB.
        elseif mod(shiftA,2) == 1 & mod(shiftB, 2) == 0
            %The following code is run when shiftA is odd and shiftB is
            %even.
            shiftA = shiftA.*2;
            %shiftA is multiplied by 2.
            decrypt1 = caesar(encrypt, shiftA);
            %The first decrypt is found by shifting the encrypted message.
            %by shiftA.
            decrypt2 = caesar(encrypt, shiftB);
            %The second decrypt is found by shifting the encrytped message.
            %by shiftA.
            maskOdd = mod(encrypt, 2) == 1;
            %This mask finds the odd characters in the encrypted message.
            maskEven = mod(encrypt, 2) == 0;
            %This mask finds the even characters in the encrytped message.
            encrypt(maskOdd) = decrypt1(maskOdd);
            %This shifts the values of odd characters by decrypt1.
            encrypt(maskEven) = decrypt2(maskEven);
            %This shifts the values of odd characters by decrypt2.
        else
            %When both shifters are even, this code will run.
            decrypt1 = caesar(encrypt, shiftA);
            %This shifts the message by shiftA.
            decrypt2 = caesar(encrypt, shiftB);
            %This shifts the message by shiftB.
            maskOdd = mod(encrypt, 2) == 1;
            %Masks out the odd characters.
            maskEven = mod(encrypt, 2) == 0;
            %Makes a mask of the even characters.
            encrypt(maskOdd) = decrypt1(maskOdd);
            %Uses decrypt1 on the odd characters in the message.
            encrypt(maskEven) = decrypt2(maskEven);
            %Uses decrytp2 on the even characters in the message.
        end
    else
        %This code runs for vowels.
        if mod(length(encrypt), 2) == 1
            %if the length of encrypt
            center = ceil(length(encrypt)./2);
            %This finds the center of the message.
            leftSide = 0+encrypt(center-1);
            %Finds the numerical value of the character to the left of
            %center.
            rightSide = 0+encrypt(center+1);
            %Finds the numerical value of the character to the right of
            %center.
            if leftSide>rightSide
                %When the leftSide is greater than the right side, run this
                %code.
                leftComp = caesar(encrypt(1:center),shiftA);
                %Shifts the left side by shiftA.
                rightComp = caesar(encrypt(center+1:end),shiftB);
                %Shifts the right side of the encrytped value by shiftB
                encrypt = [leftComp rightComp];
                %Concatenates the left and right side.
            else
                %Runs when right side is bigger than left side.
                leftComp = caesar(encrypt(1:center-1),shiftA);
                %Shifts the left side by shiftA.
                rightComp = caesar(encrypt(center:end),shiftB);
                %Shifts the right side by shiftB.
                encrypt = [leftComp rightComp];
                %Concatenates the left and right side.
            end
        else
           %Runs when the length of encrypt divided by two is even.
           center = length(encrypt)./2;
           %Takes the center of encrypt
           leftComp = caesar(encrypt(1:center),shiftA);
           %Finds the left side of the message by shifting by shiftA.
           rightComp = caesar(encrypt(center+1:end),shiftB);
           %Shifts by shiftB to find the right side of the message.
           encrypt = [leftComp rightComp];
           %Concatenates the left and right sides of the message.
        end
    end
    output = encrypt;
    %Sets the output to encrypt.
end

function decrypt = caesar2(newWord, shiftNum)
    %Helper function for caesar shift
    intermediate1 = newWord-mod(shiftNum, 26);
    %Clips the shifter by 26 to prevent excessive problems. This is then
    %subtracted from the current numerical values in newWord
    mask = intermediate1<97;
    %Finds values lower than 97.
    intermediate1(mask) = intermediate1(mask)+26;
    %Repairs said numbers by adding on 26 to them.
    decrypt = char(intermediate1);
    %Sets decrypt to the char value of intermediate1.
end

function newWord = caesar(newWord, shiftNum)
    %Helper function that shifts encrypted message.
    maskUpper = newWord >= 'A' & newWord <= 'Z';
    %Masks out the uppercase characters in the message.
    maskLower = newWord >= 'a' & newWord <= 'z';
    %Masks out the lowercase characters in the message.
    decrypt = newWord;
    %Sets decrypt to the input value newWord.
    decrypt(maskUpper) = char(mod(newWord(maskUpper)-shiftNum, 90));
    %Shifts the uppercase values in the message.
    decrypt(maskLower) = char(mod(newWord(maskLower)-shiftNum, 122));
    %Shifts the lowercase values in the message.
    mask1 = newWord >= 'A' & newWord <= 'Z' & decrypt < 65;
    %Masks uppercase values that are also lower than 65
    mask2 = newWord >= 'a' & newWord <= 'z' & decrypt < 97;
    %Masks lowercase values that are also lower than 97
    decrypt(mask1) = 90 - abs(65 - decrypt(mask1))+1;
    %Corrects the uppercase letters lower than 65 by using the mask above.
    decrypt(mask2) = 122 - abs(97 - decrypt(mask2))+1;
    %Corrects the lowercase letters lower than 97 by using the second mask
    %created above.
%     xupper = mod(newWord(maskUpper)-shiftNum, 90) - Function Test 1
%     xlower = mod(newWord(maskLower)-shiftNum, 122) - Function Test 2
    newWord = decrypt;
    %Sets newWord to the decrypted message processed in the function.
end

function word = chopper(word)
    %Chopper function that removes duplicates from function.
    mask = word(1:end-1) == word(2:end);
    %Finds instances of duplicate values.
    word(mask) = [];
    %Eliminates values that are duplicates.
end
