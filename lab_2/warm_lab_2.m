dt = 1/11025;
tt = 0:dt:1;
N = ceil(0.1/dt);


%%x1 = real(exp(j*(1600*pi*tt-pi/3)));
x1 = 100*cos(2*10000*pi*tt - pi/3);

%%soundsc(x1, 11025);
x2 = 80 * cos(2*pi*1200*tt + pi/4);
%%soundsc(x2, 11025);

xx = [x1, zeros(1,N), x2];

tt = (1/11025)*(1:length(xx)); plot(tt, xx);

soundsc(xx, 11025);