clear all; close all; clc;

x=[1 2+j 3 2-j];
X=fft(x);
N=length(x);

xc=conj(x);
Xc=conj(X);

sumLHS = 0;
sumRHS = 0;

for n=0:N-1
    sumLHS = sumLHS + x(n+1)*xc(n+1);
end

for k=0:N-1
    sumRHS=sumRHS+(X(k+1)*Xc(k+1))/N;
end

sumLHS
sumRHS