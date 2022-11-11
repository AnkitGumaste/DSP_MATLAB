clear all ; close all ; clc ;

x=[1 2 0 1];
h=[2 2 1 1];

N=length(max(x,h));

y=cconv(x,h,N);
Y=fft(y)

X=fft(x)
H=fft(h)

verify_Y=X.*H

