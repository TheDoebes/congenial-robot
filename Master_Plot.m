%Making a master plot
figure
hold on
title('Master Plot: Every recording plotted in frequency domain')
zero1 = [zeros(1, 20000) audioread('zero.wav')'];
zero1 = zero1(end-19999:end);
plot(abs(fft(zero1)));
zero2 = [zeros(1, 20000) audioread('zero2.wav')'];
zero2 = zero2(end-19999:end);
plot(abs(fft(zero2)));
zero3 = [zeros(1, 20000) audioread('zero3.wav')'];
zero3 = zero3(end-19999:end);
plot(abs(fft(zero3)));
zero4 = [zeros(1, 20000) audioread('zero4.wav')'];
zero4 = zero4(end-19999:end);
plot(abs(fft(zero4)));
zero5 = [zeros(1, 20000) audioread('zero5.wav')'];
zero5 = zero5(end-19999:end);
plot(abs(fft(zero5)));
zero_avg = (zero1 + zero2 + zero3 + zero4 + zero5)./5;
plot(abs(fft(zero_avg)));
one1 = [zeros(1, 20000) audioread('one.wav')'];
one1 = one1(end-19999:end);
plot(abs(fft(one1)));
one2 = [zeros(1, 20000) audioread('one2.wav')'];
one2 = one2(end-19999:end);
plot(abs(fft(one2)));
one3 = [zeros(1, 20000) audioread('one3.wav')'];
one3 = one3(end-19999:end);
plot(abs(fft(one3)));
one4 = [zeros(1, 20000) audioread('one4.wav')'];
one4 = one4(end-19999:end);
plot(abs(fft(one4)));
one5 = [zeros(1, 20000) audioread('one5.wav')'];
one5 = one5(end-19999:end);
plot(abs(fft(one5)));
one_avg = (one1 + one2 + one3 + one4 + one5)./5;
plot(abs(fft(one_avg)))
two1 = [zeros(1, 20000) audioread('two.wav')'];
two1 = two1(end-19999:end);
plot(abs(fft(two1)));
two2 = [zeros(1, 20000) audioread('two2.wav')'];
two2 = two2(end-19999:end);
plot(abs(fft(two2)));
two3 = [zeros(1, 20000) audioread('two3.wav')'];
two3 = two3(end-19999:end);
plot(abs(fft(two3)));
two4 = [zeros(1, 20000) audioread('two4.wav')'];
two4 = two4(end-19999:end);
plot(abs(fft(two4)));
two5 = [zeros(1, 20000) audioread('two5.wav')'];
two5 = two5(end-19999:end);
plot(abs(fft(two5)));
two_avg = (two1 + two2 + two3 + two4 + two5)./5;
plot(abs(fft(two_avg)))
three1 = [zeros(1, 20000) audioread('three.wav')'];
three1 = three1(end-19999:end);
plot(abs(fft(three1)));
three2 = [zeros(1, 20000) audioread('three2.wav')'];
three2 = three2(end-19999:end);
plot(abs(fft(three2)));
three3 = [zeros(1, 20000) audioread('three3.wav')'];
three3 = three3(end-19999:end);
plot(abs(fft(three3)));
three4 = [zeros(1, 20000) audioread('three4.wav')'];
three4 = three4(end-19999:end);
plot(abs(fft(three4)));
three5 = [zeros(1, 20000) audioread('three5.wav')'];
three5 = three5(end-19999:end);
plot(abs(fft(three5)));
three_avg = (three1 + three2 + three3 + three4 + three5)./5;
plot(abs(fft(three_avg)))
four1 = [zeros(1, 20000) audioread('four.wav')'];
four1 = four1(end-19999:end);
plot(abs(fft(four1)));
four2 = [zeros(1, 20000) audioread('four2.wav')'];
four2 = four2(end-19999:end);
plot(abs(fft(four2)));
four3 = [zeros(1, 20000) audioread('four3.wav')'];
four3 = four3(end-19999:end);
plot(abs(fft(four3)));
four4 = [zeros(1, 20000) audioread('four4.wav')'];
four4 = four4(end-19999:end);
plot(abs(fft(four4)));
four5 = [zeros(1, 20000) audioread('four5.wav')'];
four5 = four5(end-19999:end);
plot(abs(fft(four5)));
four_avg = (four1 + four2 + four3 + four4 + four5)./5;
plot(abs(fft(four_avg)))
five1 = [zeros(1, 20000) audioread('five.wav')'];
five1 = five1(end-19999:end);
plot(abs(fft(five1)));
five2 = [zeros(1, 20000) audioread('five2.wav')'];
five2 = five2(end-19999:end);
plot(abs(fft(five2)));
five3 = [zeros(1, 20000) audioread('five3.wav')'];
five3 = five3(end-19999:end);
plot(abs(fft(five3)));
five4 = [zeros(1, 20000) audioread('five4.wav')'];
five4 = five4(end-19999:end);
plot(abs(fft(five4)));
five5 = [zeros(1, 20000) audioread('five5.wav')'];
five5 = five5(end-19999:end);
plot(abs(fft(five5)));
five_avg = (five1 + five2 + five3 + five4 + five5)./5;
plot(abs(fft(five_avg)))
six1 = [zeros(1, 20000) audioread('six.wav')'];
six1 = six1(end-19999:end);
plot(abs(fft(six1)));
six2 = [zeros(1, 20000) audioread('six2.wav')'];
six2 = six2(end-19999:end);
plot(abs(fft(six2)));
six3 = [zeros(1, 20000) audioread('six3.wav')'];
six3 = six3(end-19999:end);
plot(abs(fft(six3)));
six4 = [zeros(1, 20000) audioread('six4.wav')'];
six4 = six4(end-19999:end);
plot(abs(fft(six4)));
six5 = [zeros(1, 20000) audioread('six5.wav')'];
six5 = six5(end-19999:end);
plot(abs(fft(six5)));
six_avg = (six1 + six2 + six3 + six4 + six5)./5;
plot(abs(fft(six_avg)))
seven1 = [zeros(1, 20000) audioread('seven.wav')'];
seven1 = seven1(end-19999:end);
plot(abs(fft(seven1)));
seven2 = [zeros(1, 20000) audioread('seven2.wav')'];
seven2 = seven2(end-19999:end);
plot(abs(fft(seven2)));
seven3 = [zeros(1, 20000) audioread('seven3.wav')'];
seven3 = seven3(end-19999:end);
plot(abs(fft(seven3)));
seven4 = [zeros(1, 20000) audioread('seven4.wav')'];
seven4 = seven4(end-19999:end);
plot(abs(fft(seven4)));
seven5 = [zeros(1, 20000) audioread('seven5.wav')'];
seven5 = seven5(end-19999:end);
plot(abs(fft(seven5)));
seven_avg = (seven1 + seven2 + seven3 + seven4 + seven5)./5;
plot(abs(fft(seven_avg)))
eight1 = [zeros(1,20000) audioread('eight1.wav')'];
eight1 = eight1(end - 19999:end);
plot(abs(fft(eight1)))
eight2 = [zeros(1,20000) audioread('eight2.wav')'];
eight2 = eight2(end - 19999:end);
plot(abs(fft(eight2)))
eight3 = [zeros(1,20000) audioread('eight3.wav')'];
eight3 = eight3(end - 19999:end);
plot(abs(fft(eight3)))
eight4 = [zeros(1,20000) audioread('eight4.wav')'];
eight4 = eight4(end - 19999:end);
plot(abs(fft(eight4)))
eight5 = [zeros(1,20000) audioread('eight5.wav')'];
eight5 = eight5(end - 19999:end);
plot(abs(fft(eight5)))
eight_avg = (eight1 + eight2 + eight3 + eight4 + eight5)./5;
plot(abs(fft(eight_avg)))
nine1 = [zeros(1,20000) audioread('nine.wav')'];
nine1 = nine1(end-19999:end);
plot(abs(fft(nine1)))
nine2 = [zeros(1,20000) audioread('nine2.wav')'];
nine2 = nine2(end-19999:end);
plot(abs(fft(nine2)))
nine3 = [zeros(1,20000) audioread('nine3.wav')'];
nine3 = nine3(end-19999:end);
plot(abs(fft(nine3)))
nine4 = [zeros(1,20000) audioread('nine4.wav')'];
nine4 = nine4(end-19999:end);
plot(abs(fft(nine4)))
nine5 = [zeros(1,20000) audioread('nine5.wav')'];
nine5 = nine5(end-19999:end);
plot(abs(fft(nine5)))
nine_avg = (nine1 + nine2 + nine3 + nine4 + nine5)./5;
plot(abs(fft(nine_avg)))