% DFT1024
x1 = lab2_define_x1;
N = 256;
xk = zeros(1, 4*N);
for l1 = 0:4*N-1
    for l2 = 0:N-1
    xk(l1+1) = xk(l1+1) + x1(l2+1)*exp((-j*2*pi*l2*l1)/N);
    end
end

k = N*2/256
subplot(2,1,1);
stem(k, abs(xk), '.');
title('幅值图');
xlabel('频率系数k');
ylabel('幅值');
subplot(2,1,2);
stem(k, angle(xk), '.');
title('相位图');
xlabel('频率系数k');
ylabel('相位');
