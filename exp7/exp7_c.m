clear; close all;clc;

Wp=20; Ap=-2;
Ws=40; As=-10;

%{
N=ceil(log10((10^(-0.1*ap)-1)/(10^(-0.1*as)-1))/(2*log10(Wp/Ws)))

Wc=(Ws)/(10^(-0.1*as)-1)^(1/(2*N))


for m=0:N-1
    s(m+1)=Wc*exp((1j*pi*(1+N+2*m))/(2*N));
end
%}

%Butterworth Filter
[n,Wn] = buttord(Wp,Ws,Ap,As,'s')
[num,den]=butter(n,Wn,'high','s')
[h,w]=freqs(num,den);
mag=20*log10(abs(h));
figure;
subplot(211); plot(w,mag); title('Butterworth Response'); grid on;

%Chebyshev Filter
[nc,Wnc] = cheb1ord(Wp,Ws,Ap,As,'s')
[numc,denc]=cheby1(nc,abs(Ap),Wnc,'high','s')
[hc,wc]=freqs(numc,denc);
magc=20*log10(abs(hc));
subplot(212); plot(wc,magc); title('Chebyshev Response'); grid on;