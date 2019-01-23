one_ref = transpose(audioread('one2.wav'));
two_ref = transpose(audioread('two2.wav'));
three_ref = transpose(audioread('three2.wav'));
four_ref = transpose(audioread('four2.wav'));
five_ref = transpose(audioread('five2.wav'));
six_ref = transpose(audioread('six2.wav'));
seven_ref = transpose(audioread('seven2.wav'));
eight_ref = transpose(audioread('eight4.wav'));
nine_ref = transpose(audioread('nine2.wav'));
zero_ref = transpose(audioread('zero2.wav'));

zero_in = audioread('zero3.wav')';
one_in = audioread('one3.wav')';
two_in = audioread('two3.wav')';
three_in = audioread('three3.wav')';
four_in = audioread('four3.wav')';
five_in = audioread('five3.wav')';
six_in = audioread('six3.wav')';
seven_in = audioread('seven3.wav')';
eight_in = audioread('eight3.wav')';
nine_in = audioread('nine3.wav')';
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
zero_ref = [zeros(1,11000) zero_ref];
one_ref = [zeros(1,11000) one_ref];
two_ref = [zeros(1,11000) two_ref];
three_ref = [zeros(1,11000) three_ref];
four_ref = [zeros(1,11000) four_ref];
five_ref = [zeros(1,11000) five_ref];
six_ref = [zeros(1,11000) six_ref];
seven_ref = [zeros(1,11000) seven_ref];
eight_ref = [zeros(1,11000) eight_ref];
nine_ref = [zeros(1,11000) nine_ref];

zero_rf = zero_ref(end-24999:end);
one_rf = one_ref(end-24999:end);
two_rf = two_ref(end-24999:end);
three_rf = three_ref(end-24999:end);
four_rf = four_ref(end-24999:end);
five_rf = five_ref(end-24999:end);
six_rf = six_ref(end-24999:end);
seven_rf = seven_ref(end-24999:end);
eight_rf = eight_ref(end-24999:end);
nine_rf = nine_ref(end-24999:end);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
zero_in = [zeros(1,10000) zero_in];
one_in = [zeros(1,10000) one_in];
two_in = [zeros(1,10000) two_in];
three_in = [zeros(1,10000) three_in];
four_in = [zeros(1,10000) four_in];
five_in = [zeros(1,10000) five_in];
six_in = [zeros(1,10000) six_in];
seven_in = [zeros(1,10000) seven_in];
eight_in = [zeros(1,10000) eight_in];
nine_in = [zeros(1,10000) nine_in];

zero_f = zero_in(end-24999:end);
one_f = one_in(end-24999:end);
two_f = two_in(end-24999:end);
three_f = three_in(end-24999:end);
four_f = four_in(end-24999:end);
five_f = five_in(end-24999:end);
six_f = six_in(end-24999:end);
seven_f = seven_in(end-24999:end);
eight_f = eight_in(end-24999:end);
nine_f = nine_in(end-24999:end);




figure
title('Comparing reference sounds to zero_in in the frequency domains');
subplot(2,5,1)
plot(abs(fft(one_f)))
hold on
plot(abs(fft(zero_rf)))
axis([0,1200,0,100])
title('Vs zero ref')
subplot(2,5,2)
plot(abs(fft(one_f)))
hold on
plot(abs(fft(one_rf)))
axis([0,1200,0,100])
title('Vs one ref')
subplot(2,5,3)
plot(abs(fft(one_f)))
hold on
plot(abs(fft(two_rf)))
axis([0,1200,0,100])
title('Vs two ref')
subplot(2,5,4)
plot(abs(fft(one_f)))
hold on
plot(abs(fft(three_rf)))
axis([0,1200,0,100])
title('Vs three ref')
subplot(2,5,5)
plot(abs(fft(one_f)))
hold on
plot(abs(fft(four_rf)))
axis([0,1200,0,100])
title('Vs four ref')
subplot(2,5,6)
plot(abs(fft(one_f)))
hold on
plot(abs(fft(five_rf)))
axis([0,1200,0,100])
title('Vs five ref')
subplot(2,5,7)
plot(abs(fft(one_f)))
hold on
plot(abs(fft(six_rf)))
axis([0,1200,0,100])
title('Vs six ref')
subplot(2,5,8)
plot(abs(fft(one_f)))
hold on
plot(abs(fft(seven_rf)))
axis([0,1200,0,100])
title('Vs seven ref')
subplot(2,5,9)
plot(abs(fft(one_f)))
hold on
plot(abs(fft(eight_rf)))
axis([0,1200,0,100])
title('Vs eight ref')
subplot(2,5,10)
plot(abs(fft(one_f)))
hold on
plot(abs(fft(nine_rf)))
axis([0,1200,0,100])
title('Vs nine ref')
