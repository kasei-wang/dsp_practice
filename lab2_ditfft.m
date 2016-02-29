% DITFFT
function [xk]=lab2_ditfft(xn1,N)
for k=0:N-1;
    xn(k+1)=xn1(k+1);
end
M=nextpow2(N);
for m = 0:N/2-1;
    WN(m+1)=exp(-j*2*pi/N)^m;
end
A=[xn,zeros(1,N-length(xn))];
disp(A);
J=0;
for I=0:N-1;
    if I<J;
        T=A(I+1);A(I+1)=A(J+1);A(J+1)=T;
    end
    K=N/2;
    while J>=K;
        J=J-K;
        K=K/2;
    end
    J=J+K;
end
disp(A);
for L=1:M;
    disp(L);
    B=2^(L-1);
    for R=0:B-1;
        P=2^(M-L)*R;
        for K=R:2^L:N-2;
            T=A(K+1)+A(K+B+1)*WN(P+1);
            A(K+B+1)=A(K+1)-A(K+B+1)*WN(P+1);
            A(K+1)=T;
        end
    end
    disp(A);
end
xk=A;
