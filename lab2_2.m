% x2的四种DFT
N = 256;
x2 = lab2_define_x2;
xk = lab2_dft(x2, N);
figure(1);
lab2_show_xk(xk, N);


x2 = lab2_define_x2;
xk = lab2_ditfft(x2, N);
figure(2);
lab2_show_xk(xk, N);

x2 = lab2_define_x2;
xk = lab2_diffft(x2, N);
figure(3);
lab2_show_xk(xk, N);

x2 = lab2_define_x2;
xk = fft(x2, N);
figure(4);
lab2_show_xk(xk, N);
