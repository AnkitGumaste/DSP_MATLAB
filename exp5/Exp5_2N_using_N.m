clear all; close all; clc;

for n=0:15
    x(n+1)=(-1)^n;
end

N = length(x);
x1 = x(1:2:end)
x2 = x(2:2:end)

W = exp(-1j*2*pi/N);

x_new = x1+1j*x2;
X_new = fft(x_new);

Xc = conj(X_new);
for k = 1:N/2-1
    Xc(k+1) = conj(X_new(N/2-k+1));
end

X1 = (X_new+Xc)/2
X2 = (X_new-Xc)/2j

for k = 0:N-1
    if k<(N/2)
        X(k+1) = X1(k+1)+(W^k)*X2(k+1);
    else
        X(k+1) = X1(k+1-N/2)+(W^k)*X2(k+1-N/2);
    end
end

X
verify_X=fft(x)
