% 2ASK 2FSK 2PSK
a=[1,0,1,1,0,0,1];
subplot(2, 2, 1) ,stem(a, '-*');
title('二进制');
%2ASK
for i = 1:length(a)
    t = i-1:0.01:i;
    if (a(i) == 1)
        s = sin(2*pi*t);
    end
    if (a(i) == 0)
        s = 0;
    end
    hold on;
    subplot(2, 2, 2);
    plot(t, s);
    title('2ASK');
end
%2FSK
for i = 1:length(a)
    t = i-1:0.01:i;
    if (a(i) == 1)
        s = sin(2*pi*t);
    end
    if (a(i) == 0)
        s = sin(4*pi*t);
    end
    hold on;
    subplot(2, 2, 3);
    plot(t,s);
    title('2FSK');
end
%2PSK
for i = 1:length(a)
    t = i-1:0.01:i;
    if (a(i) == 1)
        s = sin(2*pi*t);
    end
    if (a(i) == 0)
        s = sin(2*pi*t+pi);
    end
    hold on;
    subplot(2, 2, 4);
    plot(t, s);
    title('2PSK');
end
