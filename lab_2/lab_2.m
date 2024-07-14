fsamp = 11025;
dt = 1/fsamp;
dur = 1.8;
tt = 0 : dt : dur;
psi = 2*pi*(100 + 200*tt + 500*tt.*tt);
xx = real( 7.7*exp(j*psi) );
plot(tt, xx);
soundsc( xx, fsamp );

%calculating the number of samples
%(a)total duration is defined as dur
nos = dur/dt;
disp(length(tt));
disp(nos);

% (b)from the above the tn is 
n = 0: 1: 8;
tn = dt * n;
disp(tn);