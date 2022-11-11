clear all ; close all ; clc ;

x=[1 2 3 2];
N=length(x);
l=2;

for n=0:N-1
    X1(n+1)=x(n+1).*exp(1j*2*pi*l*n/N)
end

X2=fft(X1)

x1=fft(x)
X2_verify=circshift(x1',l)




