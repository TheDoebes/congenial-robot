%RECOGNIZE SPEECH v5
%STEP-BY-STEP METHOD
word_in = [zeros(1, 20000) audioread('.wav')'];
word_in = word_in(end-19999:end);
word_in = abs(fft(word_in));
match = 4; %init
% First: check for six. If the input is six, it will have a heavy presence in the 2000 to 2800 range. 
%     Once we know if it is six or not, we can ignore six in the plot.
if(sum(word_in(2000:2800)) > 500)
    match = 6;
% Next: Check eight. Greatest values from 1165 to 1265. (~1 to 2.8) Take area on this range.
elseif(sum(word_in(1199:1265)) > 60)
   match = 8; 
% Next: Check two:  Two is now the only significant presence in the range 1350 to 1600
elseif(sum(word_in(1350:1600)) > 276)
   match = 2; 
% Next: Check nine:  High area in the range 620 to 690 AND will be very low (<.1) from 3000 to 3500
elseif(sum(word_in(620:690)) > 160 && sum(word_in(3000:3500)) < 70)
   match = 9; 
% Next: Check three:  Add together the area across ranges 734 to 874 and 1206 to 1367.  Three will be highest
elseif(sum(word_in(734:874)) + sum(word_in(1206:1367)) > 230)
   match = 3; 
% Next: Check five: In the range 500 to 580, five should be the highest.
elseif(sum(word_in(500:580)) > 115)
   match = 5; 
% Next: Check seven:  Seven is significantly greater than the remaining options in the range 582 to 1153.
elseif(sum(word_in(582:1153)) > 450)
   match = 7; 
% Next: Check zero: ranges 549 to 637 and 813 to 983
elseif(sum(word_in(549:637)) + sum(word_in(813:983)) > 120)
    match = 0;
% Next: Check one:  Add together the area across ranges 368 to 500 and 1421 to 1774.
elseif(sum(word_in(368:500)) + sum(word_in(1421:1774)) > 300)
    match = 1;
% If input fails all of the above checks, it is four.
else
    match = 4;
end
disp(match)
%Anticipated conflicts:  
%input 'four' mistaken for seven, 
%input zero mistaken for five,
%input five mistaken for seven,
%