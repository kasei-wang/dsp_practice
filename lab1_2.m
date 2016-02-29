% 正余弦信号
% 0 <= n <= 100
n = 0:100;
% x3[n] = sin(pi*n/16)
x3 = sin(pi*n/16);
figure(1);
subplot(3, 1, 1), stem(n, x3);
title('x3[n] = sin(pi*n/16)');
% x4[n] = sin(n/2)
x4 = sin(n/2);
subplot(3, 1, 2), stem(n, x4);
title('x4[n] = sin(n/2)');
% x5[n] = cos(pi*n/12) + cos(3*pi*n/8)
x5 = cos(pi*n/12) + cos(3*pi*n/8);
subplot(3, 1, 3), stem(n, x5);
title('x5[n] = cos(pi*n/12) + cos(3*pi*n/8)');
