% 产生x2
function [x2]=lab2_define_x2
Fs = 25000;
t = 1:1/Fs:2;
x2 = square(2*pi*1000*t);
