A1 = 22;
M = 1;
D = 24;
T = 1/4000;
A2 = 1.2*A1;
tm1 = (37.2 / M)*T;
tm2 = -(41.3/D)*T;
t = -T:2*T/70:T;
x1 = A1*cos(8000*pi*(t-tm1));
x2 = A2*cos(8000*pi*(t-tm2));
x3 = x1 + x2;


%plot of A2cos(2pi(4000)(t-tm2);
subplot(3, 1, 1);
plot(t, x1, 'b-'), grid on;
xlabel('t/s'), ylabel('x(t)'), title('A1cos(2pi(4000)(t-tm1)');

%plot of x2
subplot(3,1,2);
plot(t, x2, 'r-'), grid on;
xlabel('t/s'), ylabel('x(t)'), title('A2cos(2pi(4000)(t-tm2)');

%plot of x3
subplot(3, 1, 3);
plot(t, x3, 'g-'), grid on;
xlabel('t/s'), ylabel('x(t)'), title('x3 = x2 + x1');



