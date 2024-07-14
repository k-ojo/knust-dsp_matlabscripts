A1 = 100;
A2 = 80;
dt = 1/11025;
tt = 0:dt:1;
N = ceil(0.1/dt);  %%calculating N

psi1 = 2*pi*800*tt -pi/3;
psi2 = 2*pi*1200*tt + pi/4;

x1 = real(A1*exp(j*psi1));
x2 = real(A2*exp(j*psi2));

xx = [x1, zeros(1, N), x2];
soundsc(xx, 8000);
disp(xx);

tt = (1/11025)*(1:length(xx)); plot(tt, xx);