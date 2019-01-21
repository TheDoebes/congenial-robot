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
len = [length(zero_ref) length(one_ref) length(two_ref) length(three_ref) length(four_ref) length(five_ref)...
    length(six_ref) length(seven_ref) length(eight_ref) length(nine_ref)];
%word_in = transpose(audioread('test_input.wav'));
word_in  = [zero_ref one_ref three_ref four_ref five_ref six_ref seven_ref eight_ref nine_ref];
word_in_original = word_in;
%Begin the guessing

i = 1;
while (length(word_in)>min(len))
    if(length(word_in) < min(len))
    break
    elseif(length(word_in) > max(len))
[one_corr, onelags] = xcorr(word_in(1:len(2)), one_ref);
[two_corr, twolags] = xcorr(word_in(1:len(3)), two_ref);
[three_corr, threelags] = xcorr(word_in(1:len(4)), three_ref);
[four_corr, fourlags] = xcorr(word_in(1:len(5)), four_ref);
[five_corr, fivelags] = xcorr(word_in(1:len(6)), five_ref);
[six_corr, sixlags] = xcorr(word_in(1:len(7)), six_ref);
[seven_corr, sevenlags] = xcorr(word_in(1:len(8)), seven_ref);
[eight_corr, eightlags] = xcorr(word_in(1:len(9)), eight_ref);
[nine_corr, ninelags] = xcorr(word_in(1:len(10)), nine_ref);
[zero_corr, zerolags] = xcorr(word_in(1:len(1)), zero_ref);
    else %When the remaining word in is not longer than all references but not shorter than them all either
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
    end

spike_loc = [find(zero_corr == max(zero_corr)) find(one_corr == max(one_corr))...
    find(two_corr == max(two_corr)) find(three_corr == max(three_corr))...
    find(four_corr == max(four_corr)) find(five_corr == max(five_corr))...
    find(six_corr == max(six_corr)) find(seven_corr == max(seven_corr))...
    find(eight_corr == max(eight_corr)) find(nine_corr == max(nine_corr))];
%match_loc is the locations of the **potentially** valid correlation spikes
centerness = [abs(spike_loc(1) - len(1)), abs(spike_loc(2) - len(2)), abs(spike_loc(3) - len(3)),...
            abs(spike_loc(4) - len(4)), abs(spike_loc(5) - len(5)), abs(spike_loc(6) - len(6)),...
            abs(spike_loc(7) - len(7)), abs(spike_loc(8) - len(8)) abs(spike_loc(9) - len(9)),...
            abs(spike_loc(10) - len(10))];
%centerness is a vector containing a measure of how close to 'center' the
%correlation for each reference is.  The closer to center their spike is,
%the better the match.  Ideally, a perfect match will have a spike
%perfectly in the center.

match = find(centerness == min(centerness)) -1;

output(i) = match; %store the guess
i = i+1;

word_in = word_in(len(match+1):length(word_in));


end
disp(output);


%Showing plots (debugging)
% [autocorr, autolags] = xcorr(word_in_original,word_in_original);
% subplot(3,2,1)
% plot(1:length(word_in_original),word_in_original)
% title('Input voice from user')
% subplot(3,2,5)
% plot(1:len(4),four_ref)
% title('Reference "Four" soundbyte')
% subplot(3,2,3)
% plot(1:len(9),nine_ref)
% title('Reference "Nine" soundbyte')
% subplot(3,2,4)
% plot(ninelags,nine_corr)
% title('Correlation of input against "Nine"')
% subplot(3,2,2)
% plot(autolags, autocorr)
% title('Correlation of input with itself')
% subplot(3,2,6)
% plot(fourlags,four_corr)
% title('Correlation of input against "Four"')