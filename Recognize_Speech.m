%Speech Recognition
%Store wavs
one_ref = audioread('one_ref.wav');
one_len = length(one_ref);
two_ref = audioread('two_ref.wav');
two_len = length(two_ref);
three_ref = audioread('three_ref.wav');
three_len = length(three_ref);
four_ref = audioread('four_ref.wav');
four_len = length(four_ref);
five_ref = audioread('five_ref.wav');
five_len = length(five_ref);
six_ref = audioread('six_ref.wav');
six_len = length(six_ref);
seven_ref = audioread('seven_ref.wav');
seven_len = length(seven_ref);
eight_ref = audioread('eight_ref.wav');
eight_len = length(eight_ref);
nine_ref = audioread('nine_ref.wav');
nine_len = length(nine_ref);
zero_ref = audioread('zero_ref.wav');
zero_len = length(zero_ref);
refs = [one_ref two_ref three_ref four_ref five_ref six_ref seven_ref eight_ref nine_ref zero_ref];
len = [one_len two_len three_len four_len five_len six_len seven_len eight_len nine_len zero_len];
word_in = audioread('word_in.wav');

t=0;
while (t<length(word_in))
one_corr = xcorr(word_in, one_ref);
two_corr = xcorr(word_in, two_ref);
three_corr = xcorr(word_in, three_ref);
four_corr = xcorr(word_in, four_ref);
five_corr = xcorr(word_in, five_ref);
six_corr = xcorr(word_in, six_ref);
seven_corr = xcorr(word_in, seven_ref);
eight_corr = xcorr(word_in, eight_ref);
nine_corr = xcorr(word_in, nine_ref);
zero_corr = xcorr(word_in, zero_ref);


spikes = [find(max(one_corr)) find(max(two_corr)) find(max(three_corr)) find(max(four_corr))...
    find(max(five_corr)) find(max(six_corr)) find(max(seven_corr)) find(max(eight_corr))... 
    find(max(nine_corr)) find(max(zero_corr))];
match = find(min(spikes)); %the number here is the *_corr which occurrs first
t = t + len(match);
word_in = word_in(t + len(match):length(word_in));




end