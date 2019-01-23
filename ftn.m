%Truncates and fourier transforms, then normalizes an audio file. 
function y = ftn(x)
    x = [zeros(1,11000) x];
    y = abs(fft(x(end-24999:end)'));
    y = y./avg(y);
end