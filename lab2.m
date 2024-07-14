[xx, tt] = beat(10, 10, 1000, 10, 11025, 0.2);

figure;
plot(tt, xx);
title('Beat Signal');
xlabel('Time (s)');
ylabel('Amplitude');

x_env = abs(hilbert(xx));

[pks, locs] = findpeaks(x_env, tt);
hold on;
plot(locs, pks, 'ro');

env_intervals = diff(locs);

env_period = mean(env_intervals);
env_freq = 1/env_period;

annotationText = ['Envelope frequency: ', num2str(env_freq), 'Hz'];
text(tt(end)/2, max(pks), annotationText, 'Fontsize', 12, 'Color', 'blue', 'HorizontalAlignment', 'center');