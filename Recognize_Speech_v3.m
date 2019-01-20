%Speech Recognition
output = [0]; %This is where the system will record what it is guessing
%Store wavs
one_ref = transpose(audioread('one_ref.wav'));
two_ref = transpose(audioread('two_ref.wav'));
three_ref = transpose(audioread('three_ref.wav'));
four_ref = transpose(audioread('four_ref.wav'));
five_ref = transpose(audioread('five_ref.wav'));
six_ref = transpose(audioread('six_ref.wav'));
seven_ref = transpose(audioread('seven_ref.wav'));
eight_ref = transpose(audioread('eight_ref.wav'));
nine_ref = transpose(audioread('nine_ref.wav'));
zero_ref = transpose(audioread('zero_ref.wav'));
%put one back in
len = [length(one_ref) length(two_ref) length(three_ref) length(four_ref) length(five_ref)...
    length(six_ref) length(seven_ref) length(eight_ref) length(nine_ref) length(zero_ref)];
word_in = transpose(audioread('word_in.wav'));
word_in_original = word_in;
% word_in  = eight_ref;
%Begin the guessing

i = 1;
while (length(word_in)>min(len))
[one_corr, onelags] = xcorr(word_in, one_ref);
[two_corr, twolags] = xcorr(word_in, two_ref);
[three_corr, threelags] = xcorr(word_in, three_ref);
[four_corr, fourlags] = xcorr(word_in, four_ref);
[five_corr, fivelags] = xcorr(word_in, five_ref);
[six_corr, sixlags] = xcorr(word_in, six_ref);
[seven_corr, sevenlags] = xcorr(word_in, seven_ref);
[eight_corr, eightlags] = xcorr(word_in, eight_ref);
[nine_corr, ninelags] = xcorr(word_in, nine_ref);
[zero_corr, zerolags] = xcorr(word_in, zero_ref);

match_loc = [find(one_corr == max(one_corr) & one_corr > 3) find(two_corr == max(two_corr) & two_corr > 3)...
    find(three_corr == max(three_corr) & three_corr > 3) find(four_corr == max(four_corr) & four_corr >3)...
    find(five_corr == max(five_corr) & five_corr > 3) find(six_corr == max(six_corr) & six_corr > 3)...
    find(seven_corr == max(seven_corr) & seven_corr > 3) find(eight_corr == max(eight_corr) & eight_corr > 3)...
    find(nine_corr == max(nine_corr) & nine_corr > 3) find(zero_corr == max(zero_corr) & zero_corr > 3)];
%match_loc is the locations of the valid correlation spikes
if(one_corr(min(match_loc)) > 3)
    match = 1;
elseif(two_corr(min(match_loc)) > 3)
    match = 2;
elseif(three_corr(min(match_loc)) > 3)
    match = 3;
elseif(four_corr(min(match_loc)) > 3)
    match = 4;
elseif(five_corr(min(match_loc)) > 3)
    match = 5;
elseif(six_corr(min(match_loc)) > 3)
    match = 6;
elseif(seven_corr(min(match_loc)) > 3)
    match = 7;
elseif(eight_corr(min(match_loc)) > 3)
    match = 8;
elseif(nine_corr(min(match_loc)) > 3)
    match = 9;
elseif(zero_corr(min(match_loc)) > 3)
    match = 10;
end
output(i) = match; %store the guess
i = i+1;

word_in = word_in(len(match):length(word_in));

if(length(0:length(word_in)) < min(len))
    break
end
end
disp(output);


%Showing plots (debugging)
[autocorr, autolags] = xcorr(word_in_original,word_in_original);
subplot(3,2,1)
plot(1:length(word_in_original),word_in_original)
title('Input voice from user')
subplot(3,2,5)
plot(1:len(4),four_ref)
title('Reference "Four" soundbyte')
subplot(3,2,3)
plot(1:len(9),nine_ref)
title('Reference "Nine" soundbyte')
subplot(3,2,4)
plot(ninelags,nine_corr)
title('Correlation of input against "Nine"')
subplot(3,2,2)
plot(autolags, autocorr)
title('Correlation of input with itself')
subplot(3,2,6)
plot(fourlags,four_corr)
title('Correlation of input against "Four"')