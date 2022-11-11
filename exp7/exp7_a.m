clear; close all;clc;

fp=500; Wp=2*pi*fp;
Ap=-3;

fs=1000; Ws=2*pi*fs;
As=-40;

%Butterworth Filter
N=ceil(log10((10^(-0.1*Ap)-1)/(10^(-0.1*As)-1))/(2*log10(Wp/Ws)))

fc=(fs)/(10^(-0.1*As)-1)^(1/(2*N));
Wc=2*pi*fc

for m=0:N-1
    s(m+1)=fc*2*pi*exp((1j*pi*(1+N+2*m))/(2*N));
end

[n,Wn] = buttord(Wp,Ws,Ap,As,'s')

[num,den]=butter(N,Wc,'s')
[h,w]=freqs(num,den);
mag=20*log10(abs(h));
plot(w,mag); grid on;
