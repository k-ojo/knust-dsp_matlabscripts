%%load bach_fugue.mat binary file
load bach_fugue.mat;

% definnig the beat rate as a global variable
%unit is beats per minute
bpm = 120;

%beats per second
bps = bpm/60;
spb = 1/bps;
spp = spb/4;   %seconds per pulse

xx = zeros(length(theVoices), sum(scale.durations)*fs+length(scale.keys));

for i = 1:length(theVoices)
    xx(i) = zeros(1, sum(theVoices(i).durations)*fs+length(theVoices.noteNumbers));
    for kk = 1:length(theVoices(i).noteNumbers)
      keynum = scale.theVoice.noteNumbers(kk);
      tone = key2note(100, keynum, theVoices.durations(kk));
      n2 = n1 + length(tone) - 1;
      xx([i,n1:n2]) = xx([i,n1:n2]) + tone;
      n1 = n2 + 1;
    end
end
    

