%%%%%%%%%%%%%%%
fourier_in = base;%ftavg('eight_ref.wav');

figure
title('Comparing reference sounds to fourier_in in the frequency domains');
subplot(2,5,1)
plot(fourier_in)
hold on
plot(zero)
axis([0,1200,0,100])
title('Vs zero ref')
subplot(2,5,2)
plot(fourier_in)
hold on
plot(one)
axis([0,1200,0,100])
title('Vs one ref')
subplot(2,5,3)
plot(fourier_in)
hold on
plot(two)
axis([0,1200,0,100])
title('Vs two ref')
subplot(2,5,4)
plot(fourier_in)
hold on
plot(three)
axis([0,1200,0,100])
title('Vs three ref')
subplot(2,5,5)
plot(fourier_in)
hold on
plot(four)
axis([0,1200,0,100])
title('Vs four ref')
subplot(2,5,6)
plot(fourier_in)
hold on
plot(five)
axis([0,1200,0,100])
title('Vs five ref')
subplot(2,5,7)
plot(fourier_in)
hold on
plot(six)
axis([0,1200,0,100])
title('Vs six ref')
subplot(2,5,8)
plot(fourier_in)
hold on
plot(seven)
axis([0,1200,0,100])
title('Vs seven ref')
subplot(2,5,9)
plot(fourier_in)
hold on
plot(eight)
axis([0,1200,0,100])
title('Vs eight ref')
subplot(2,5,10)
plot(fourier_in)
hold on
plot(nine)
axis([0,1200,0,100])
title('Vs nine ref')