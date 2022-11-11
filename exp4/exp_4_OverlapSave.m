clear ; close all; clc;

x = [1 2 1 -1 2 -2 3 4 0 1 -1 -2 -3 0 1 -2 3 2];
h = [1 -1 1];

Ls = length(x)
M = length(h)
N = input('Enter block length N : ');
L = N-M+1
%{
n = 0:(N-1);

x1=[zeros(1,M-1),x(1:L)]
x2=[x1(N-1:N),x(L+1:(2*L))]
x3=[x2(N-1:N),x(2*L+1:3*L)]
x4=[x3(N-1:N),zeros(1,N-(M-1))]

h = [h, zeros(1,L-1)]

y1 = cconv(h,x1, max(length(h),length(x1)))
y2 = cconv(h,x2, max(length(h),length(x2)))
y3 = cconv(h,x3, max(length(h),length(x3)))
y4 = cconv(h,x4, max(length(h),length(x4)))

y = [y1(M:N),y2(M:N),y3(M:N),y4(M:N)]
%}

n = ceil(Ls/L);

xp = [zeros(1,M-1),x,zeros(1,2*N)];
hp = [h, zeros(1,L-1)];

for k=0:n
    xn = xp(k*L+1:k*L+N)
    y(k+1,:)=cconv(xn,h,N)
end

y = y(:,M:N)';
y = y(1:(Ls+M-1))

verify_y = conv(x,h)
