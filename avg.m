function [z] = avg(x)
    z = sum(x) ./ length([x]);
end