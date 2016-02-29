% 显示频域图像
function lab2_show_xk(xk,N)
k = 0:N-1;
subplot(2,1,1);
stem(k*2/256, abs(xk), '.');
title('幅值');
subplot(2,1,2);
stem(k*2/256, angle(xk), '.');
title('相位');
