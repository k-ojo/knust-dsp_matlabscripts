scale.keys = [ 40 42 44 45 47 49 51 52];
%----NOTES:    C  D   E  F  G  A  B  C

% key #40 is middle-c

scale.durations = 0.25 * ones(1, length(scale.keys));
fs = 11025;
xx = zeros(1, sum(scale.durations)*fs+length(scale.keys));

n1 = 1;

for kk = 1:length(scale.keys)
    keynum = scale.keys(kk);
    
    tone = key2note(10, keynum, scale.durations(kk));
    
    n2 = n1 + length(tone) - 1;
    xx(n1:n2) = xx(n1:n2) + tone;
    
    n1 = n2 + 1;
end

soundsc(xx, fs)