%Truncates and fourier transforms, then normalizes an audio file. 
function y = ftn(x)
    y = abs(fft(x(end-14000:end)'));
    y = y./avg(y);
end