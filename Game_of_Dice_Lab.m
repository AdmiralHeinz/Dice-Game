%Jakob Heinz

%Roll a 6 sided die and determine how many rolls are required to roll every
%value. Loop through this 100 times and take an average of the number of
%required rolls.

Trials = 0;%Count the number of trials completed.
Total = 0;%Record the total number of dice rolls.
Counter = 0;%Counter to tell the while loop when to stop.

while (Trials < 100)
    
    %Assign and reset flag values every trial.
    Flag1 = 0;
    Flag2 = 0;
    Flag3 = 0;
    Flag4 = 0;
    Flag5 = 0;
    Flag6 = 0;
    
    RollsCount = 0;%Count the number of rolls each trial.
    
while (Flag1*Flag2*Flag3*Flag4*Flag5*Flag6 == 0 )%Roll the die until all values are rolled.
    
    DiceValue = randi(6);%Pick a random interger between 1 and 6 to simulate a dice roll.
    
    %If statement to set the flag value to 1 if the dice number is rolled.
    if DiceValue == 1
        Flag1 = 1;
   
    elseif DiceValue == 2
        Flag2 = 1;
    
    elseif DiceValue == 3
        Flag3 = 1;
    
    elseif DiceValue == 4
        Flag4 = 1;
    
    elseif DiceValue == 5
        Flag5 = 1;
   
    elseif DiceValue == 6
        Flag6 = 1;
    end

    RollsCount = RollsCount + 1;%Count the number of rolls for each trial
    
end
Total = Total + RollsCount;%Add the number of rolls for a trial to the total.
Trials = Trials + 1;%Add one to trials.

end
disp("The average number of rolls for one hundred trials is " + Total/Trials)%Display the average number of rolls for 100 trials.