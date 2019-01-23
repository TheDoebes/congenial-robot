%Takes in the name of an audio file, amplitude-normalizes it before and after a
%fourier transform
function y = ftavg(x)
    y = ftn(anorm(x));
end