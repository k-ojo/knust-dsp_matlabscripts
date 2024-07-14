[xx, tt] = beat(1, 1, 2000, 32, 11025, 0.26);

figure;
plot(tt, xx);
title('Beat Signal');
xlabel('Time (s)');
ylabel('Amplitude');