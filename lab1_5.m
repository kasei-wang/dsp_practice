% DTMF产生
FL = [697, 770, 852, 941];
FH = [1209, 1336, 1477, 1633];
str = ['1', '2', '3', 'A'
       '4', '5', '6', 'B'
       '7', '8', '9', 'C'
       '*', '0', '#', 'D']';
N = 800;
fs = 120000;
k = 0:1:N-1;
figure;
for i = 1:1:4
    for j = 1:1:4
        % 低频高频幅度比应在0.7至0.9
        x = sin(2*pi*FL(i)*k/fs) + 0.8*sin(2*pi*FH(j)*k/fs);
        no = (i-1)*4 + j;
        subplot(4, 4, no);
        plot(k, x, '.');
        title(str(no));
    end
end
