%Store wavs
zero_ref = anorm('zero_ref.wav');
one_ref = anorm('one_ref.wav');
two_ref = anorm('two_ref.wav');
three_ref = anorm('three_ref.wav');
four_ref = anorm('four_ref.wav');
five_ref = anorm('five_ref.wav');
six_ref = anorm('six_ref.wav');
seven_ref = anorm('seven_ref.wav');
eight_ref = anorm('eight_ref.wav');
nine_ref = anorm('nine_ref.wav');

hold on

% fftp(zero_ref);
% fftp(one_ref);
% fftp(two_ref);
% fftp(three_ref);
% fftp(four_ref);
% fftp(five_ref);
sum_ref = zero_ref(end-14000:end) + one_ref(end-14000:end) + ...
    two_ref(end-14000:end) + three_ref(end-14000:end) + ...
    four_ref(end-14000:end) + five_ref(end-14000:end) + ...
    six_ref(end-14000:end) + seven_ref(end-14000:end) + ...
    eight_ref(end-14000:end) + nine_ref(end-14000:end);
% fftp(sum_ref);
% fftp(zero_ref(end-14000:end) - sum_ref);
% plot(xcorr(ftn(zero_ref(end-14000:end) - sum_ref), ftn(zero_ref)));

% legend('0','1','2','3','4','5');