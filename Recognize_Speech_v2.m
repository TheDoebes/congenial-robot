%Speech Recognition
reg = [0]; %This is where the system will record what it is guessing
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
refs = [one_ref two_ref three_ref four_ref five_ref six_ref seven_ref eight_ref nine_ref zero_ref];
len = [length(one_ref) length(two_ref) length(three_ref) length(four_ref) length(five_ref)...
    length(six_ref) length(seven_ref) length(eight_ref) length(nine_ref) length(zero_ref)];
word_in = transpose(audioread('word_in.wav'));
word_in_original = word_in;
% word_in  = eight_ref;
%Begin the guessing
t=0;
i = 1;
while (t<length(word_in))
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


spikes = [find(one_corr == max(one_corr)) find(two_corr == max(two_corr)) find(three_corr == max(three_corr))...
    find(four_corr == max(four_corr)) find(five_corr == max(five_corr)) find(six_corr == max(six_corr))...
    find(seven_corr == max(seven_corr)) find(eight_corr == max(eight_corr))...
    find(nine_corr == max(nine_corr)) find(zero_corr == max(zero_corr))]; %This vector is a list of the location of the correlation spike for each of the ten words
match = find(spikes == min(spikes)); %the number here is the *_corr which occurrs first

reg(i) = match; %store the guess
i = i+1;

word_in = word_in(t + len(match):length(word_in));
t = t + len(match); %prep starting point

if(length(t:length(word_in)) < min(len))
    break
end
end
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