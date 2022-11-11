function [W,N]=idft_mtx(N)
 %taking N from the user

N=input('Enter N : ');

for k=0:N-1
    for n=0:N-1
        W(k+1,n+1)=exp(1i*2*pi*(k)*(n)/N);
    end
end
end
