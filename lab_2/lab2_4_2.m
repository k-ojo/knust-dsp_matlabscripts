[xx, tt] = beat(1, 1, 2000, 32, 11025, 0.26);

figure;
plot(tt, xx);
title('Beat Signal');
xlabel('Time (s)');
ylabel('Amplitude');
xlim([0, 0.26]);
print('C:\Users\Freedom Academy\Documents\LAB\lab4.4.0_plot', '-dpng');

figure;
specgram(xx, 2048, fsamp);
colormap(1-gray(256));
title('with 2048 window size');
print('C:\Users\Freedom Academy\Documents\LAB\lab4_2_1', '-dpng');


figure;
specgram(xx, 16, fsamp);
colormap(1-gray(256));
title('with 16 window size');
print('C:\Users\Freedom Academy\Documents\LAB\lab4_2_2', '-dpng');
