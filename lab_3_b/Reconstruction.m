p = 3;

load lighthouse.mat

%%down sample by 3
ww3 = ww(1:p:end,1:p:end);

xr1 = (-2).^(0:6);
L = length(xr1);
nn = ceil((0.999:1:4*L)/4); %<-- Round up to the integer part
xr1hold = xr1(nn);

%%plot
plot(xr1);
title('original');
plot(xr1hold);
title('interpolated')

