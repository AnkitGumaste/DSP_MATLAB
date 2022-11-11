clear all; close all; clc;

x = [1,2,3,4,5,6,7,8];

N=length(x);
X = zeros(1,N);
for k=0 : N-1
    %X(k+1)=0;
    for n=0:N-1
        X(k+1)=X(k+1)+x(n+1)*exp(-1j*2*pi*k*n/N);
    end
end

disp(X);
verify_X = fft(x)

