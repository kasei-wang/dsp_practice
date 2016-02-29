% 单位采样信号和单位阶跃信号
% -20 <= n <= 20
n =  -20:20;
% 单位采样序列x1[n]
k = 1;
for n1 = -20:20
    if n1 == 0;
        x1(k) = 1;
    else
        x1(k) = 0;
    end
    k = k+1;
end
figure(1);
subplot(2, 2, 1),stem(n, x1);
title('单位采样序列x1[n]');
xlabel('n'), ylabel('x1[n]');
% 单位阶跃序列x2[n]
k = 1;
for n1 = -20:20
    if n1 >= 0;
        x2(k) = 1;
    else
        x2(k) = 0;
    end
    k = k+1;
end
subplot(2, 2, 2), stem(n, x2);
title('单位阶跃序列x2[n]');
xlabel('n'), ylabel('x2[n]');
% y1[n] = x1[n+5]
for k = 1:41;
    if k <= 36
        y1(k) = x1(k+5);
    else
        y1(k) = 0;
    end
end
subplot(2, 2, 3), stem(-20:20, y1);
title('y1[n] = x1[n+5]');
xlabel('n'), ylabel('y1[n]');
% y2[n] = x2[n-8]
for k = 1:41;
    if k >= 28
        y2(k) = x2(k-8);
    else
        y2(k) = 0;
    end
end
subplot(2, 2, 4), stem(-20:20, y2);
title('y2[n] = x2[n-8]');
xlabel('n'), ylabel('y2[n]');
