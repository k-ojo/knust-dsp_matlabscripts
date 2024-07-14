function xx = key2note(X, keynum, dur)
%%KEY2NOTE Producea sinusoidal waveform corresponding to
%        given piano key number
fs = 11025;
tt = 0:(1/fs):dur;
%% using the A440 as reference
freq = 440 * pow2((keynum-49)/12);
xx = real(X*exp(j*2*pi*freq*tt));

end