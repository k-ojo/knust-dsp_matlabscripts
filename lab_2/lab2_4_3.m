f1 = 5000;
f2 = 300;
dur = 3;
fsamp = 11025;

[xx, tt] = mychirp(f1,f2, dur, fsamp);
soundsc(xx, 11025);


figure;
specgram(xx, 2048, fsamp);
colormap(1-gray(256));
title('Chirp 4.3');
print('C:\Users\Freedom Academy\Documents\LAB\lab2_4_3', '-dpng');
