clear all; close all; clc;

x1=[-1 -1 1 1 1 -1 -1 -1];
N=length(x1);

for n=0:7
    x2(n+1)=sin(3*pi*n/8)
end

x=x1+1j*x2
X=fft(x)
Xc=conj(X);

for k=1:N-1
    Xc(k+1)=conj(X(N-k+1));
end

X1=(X+Xc)/2
X2=(X-Xc)/2j

X1_verify=fft(x1)
X2_verify=fft(x2)
