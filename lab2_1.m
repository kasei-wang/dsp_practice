% x1的四种DFT
N = 256;
x1 = lab2_define_x1;
xk = lab2_dft(x1, N);
figure(1);
lab2_show_xk(xk, N);


x1 = lab2_define_x1;
xk = lab2_ditfft(x1, N);
figure(2);
lab2_show_xk(xk, N);

x1 = lab2_define_x1;
xk = lab2_diffft(x1, N);
figure(3);
lab2_show_xk(xk, N);

x1 = lab2_define_x1;
xk = fft(x1, N);
figure(4);
lab2_show_xk(xk, N);
