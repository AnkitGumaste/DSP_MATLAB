clear all; close all; clc;

x = [1,2,3,4,5,6,7,8];

X = fft(x);
N=length(X);

for n=0 : N-1
    x(n+1)=0;
    for k=0:N-1
        x(n+1)=x(n+1)+(X(k+1)*exp(1j*2*pi*k*n/N))/N;
        
    end
end

disp(x);
verify_x = ifft(X)

