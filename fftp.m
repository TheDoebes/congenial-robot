function fftp(x)
    y = abs(fft(x(end-14000:end)'));
    plot(y./avg(y));
end