% DFT
function [xk]=lab2_dft(xn,N)
xk = zeros(1, N);
for l1 = 0:N-1
    for l2 = 0:N-1
    xk(l1+1) = xk(l1+1) + xn(l2+1)*exp((-j*2*pi*l2*l1)/N);
    end
end
