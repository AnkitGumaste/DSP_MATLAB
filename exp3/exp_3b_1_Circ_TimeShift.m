clear all ; close all ; clc ;
x=[1 2 3 2];
l=input('Enter l : ');
N=length(x);
x_shift=circshift(x',l);
X1=fft(x);

for k=0:N-1
    X2(k+1)=X1(k+1)*exp(-1j*pi*k);
end

disp(X2);
verify_X2=fft(x_shift)