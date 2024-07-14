f1 = 3000;
f2 = -2000;
dur = 3;
fsamp = 11025;

[xx, tt] = mychirp(f1,f2, dur, fsamp);
soundsc(xx, fsamp);


figure;
specgram(xx, 2048, fsamp);
colormap(1-gray(256));
title('Chirp 4.4');
print('C:\Users\Freedom Academy\Documents\LAB\lab4.4', '-dpng');
