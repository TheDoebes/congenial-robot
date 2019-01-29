%RECOGNIZE SPEECH v5
%STEP-BY-STEP METHOD
word_in = [zeros(1, 20000) audioread('one9.wav')'];
word_in = word_in(end-19999:end);
word_in = abs(fft(word_in));
match = 4; %init
% First: check for six. If the input is six, it will have a heavy presence in the 2000 to 2800 range. 
%     Once we know if it is six or not, we can ignore six in the plot.
if(sum(word_in(2000:2800)) > 600)
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
elseif(sum(word_in(734:863)) + sum(word_in(1206:1367)) > 240)
   match = 3; 
% Next: Check one:  max at 389 to 449 and min at 644 to 864.
elseif(sum(word_in(389:449)) > 140 && sum(word_in(644:864)) < 40)
    match = 1;
% Next: Check four:  Four will have a minimal presence on the range 1022 to 1163
elseif(sum(word_in(1022:1163)) < 30)
   match = 4;
% Next: Check zero: minimal in the range 630 to 1770
elseif(sum(word_in(630:1770)) < 390)
    match = 0;
% Next: Check seven
elseif(sum(word_in(1:324)) > 2e+03)
    match = 7;
% If input fails all of the above checks, it is five.
else
    match = 5;
end
disp(match)
%Anticipated conflicts:  
% 
% 
% 
% 
%