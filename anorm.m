function [x] = anorm(y)
    z = audioread(y);
    x = z'./avg(z);
end