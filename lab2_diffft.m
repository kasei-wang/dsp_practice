% DIFFFT
function [xk]=lab2_diffft(xn,N);
M=log2(N);
for m=0:M-1
    Num_of_Group=2^m;
    Interval_of_Group=N/2^m;
    Interval_of_Unit=N/2^(m+1);
    Cycle_Count=N/2^(m+1)-1;
    Wn=exp(-j*2*pi/Interval_of_Group);
    for g=1:Num_of_Group
        Interval_1=(g-1)*Interval_of_Group;
        Interval_2=(g-1)*Interval_of_Group+Interval_of_Unit;
        for r=0:Cycle_Count;
            k=r+1;
            xn(k+Interval_1)=xn(k+Interval_1)+xn(k+Interval_2);
            xn(k+Interval_2)=[xn(k+Interval_1)-xn(k+Interval_2)-xn(k+Interval_2)]*Wn^r;
        end
    end
end
n1=fliplr(dec2bin([0:N-1]));
n2=[bin2dec(n1)];
for i=1:N
    xk(i)=xn(n2(i)+1);
end
