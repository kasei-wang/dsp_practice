% 指数复数信号
% 0 <= n <= 30
n = 0:30;
% x6[n] = 0.2 * (0.8.^n)
x6 = 0.2 * (0.8.^n);
figure(1);
stem(n, x6, '.');
title('x6[n] = 0.2 * (0.8.^n)');
% x7[n] = exp((-1/12 + j*pi/6)*n)
x7 = exp((-1/12 + j*pi/6)*n);
figure(2);
subplot(2, 2, 1);
A=real(x7);
plot(n, A);
title('x7[n]实部');
subplot(2, 2, 2);
B=imag(x7);
plot(n, B);
title('x7[n]虚部');
subplot(2, 2, 3);
C=abs(x7);
plot(n, C);
title('x7[n]幅度');
subplot(2, 2, 4);
D=angle(x7);
plot(n, D);
title('x7[n]相角');
