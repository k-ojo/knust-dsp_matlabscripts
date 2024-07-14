x.Amp = 7;
x.freq = 100;
x.phase = -pi/2;
x.fs = 11025;
x.timeInterval = 0:(1/x.fs):0.05;
x.values = x.Amp*cos(2*pi*(x.freq)*(x.timeInterval) + x.phase);
x.name = 'My Signal';
x
plot(x.timeInterval, x.values);
title(x.name)
