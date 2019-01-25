clear, clc, close all
% load an audio file
[x1,Fs]=audioread('one_ref.wav',[1 4096]);   % load an audio file
x1 = x1(:, 1);  % get the first channel
% perform spectral analysis
N = length(x1);   
w = hanning(N, 'periodic');
[Xamp, f] = periodogram(x1, w, N, Fs, 'power');
Xamp = 20*log10(sqrt(Xamp)*sqrt(2));
% spectral envelope extraction
Xenv = specenv(Xamp, f);
% plot the spectrum
%plot(f, Xamp)
grid on
hold on
plot(f, Xenv, 'g', 'LineWidth', 1.5)
xlim([0 max(f)])
set(gca, 'FontName', 'Times New Roman', 'FontSize', 14)
xlabel('Frequency, Hz')
ylabel('Magnitude, dB')
title('Amplitude spectrum of the signal and its envelope')
legend('Original spectrum', 'Spectral envelope')


[x2,Fs]=audioread('one.wav',[1 4096]);   % load an audio file
x2 = x2(:, 1);  % get the first channel
% perform spectral analysis
N = length(x2);   
w = hanning(N, 'periodic');
[Xamp, f] = periodogram(x2, w, N, Fs, 'power');
Xamp = 20*log10(sqrt(Xamp)*sqrt(2));
% spectral envelope extraction
Xenv = specenv(Xamp, f);
% plot the spectrum
%plot(f, Xamp)
grid on
hold on
plot(f, Xenv, 'r', 'LineWidth', 1.5)
xlim([0 max(f)])
set(gca, 'FontName', 'Times New Roman', 'FontSize', 14)
xlabel('Frequency, Hz')
ylabel('Magnitude, dB')
title('Amplitude spectrum of the signal and its envelope')
legend('Original spectrum', 'Spectral envelope')





function Xenv = specenv(Xamp, f)
% function: Xenv = specenv(Xamp, f)
% Xamp - amplitude spectrum of the signal
% f - frequency vector, Hz
% Xenv - envelope of the amplitude spectrum
% spectral envelope extraction via shape-preserving
% piecewise cubic interpolation of the spectral peaks
% and moving average filtration of the result (span = 5)
[Xpks, pksind] = findpeaks(Xamp+eps);
fpks = (pksind-1)*(f(2) - f(1));
Xenv = interp1(fpks, Xpks, f, 'pchip');
Xenv = smooth(Xenv);
end