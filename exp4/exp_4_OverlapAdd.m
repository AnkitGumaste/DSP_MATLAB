clear all ; close all ; clc ;

x = [1 2 1 -1 2 -2 3 4 0 1 -1 -2 -3 0 1 -2 3 2];
h = [1 -1 1];

Ls = length(x);
M = length(h);
N = input('Enter block length N : ');
L = N-M+1;

%{
n = 0:(N-1);
x1=[x(1:L),zeros(1,M-1)]
x2=[x(L+1:2*L),zeros(1,M-1)]
x3=[x(2*L+1:3*L),zeros(1,M-1)]
x4=[x(3*L+1:Ls),zeros(1,M-1),zeros(1,M-1)]


h = [h, zeros(1,L-1)]

y1 = cconv(h,x1, max(length(h),length(x1)))
y2 = cconv(h,x2, max(length(h),length(x2)))
y3 = cconv(h,x3, max(length(h),length(x3)))
y4 = cconv(h,x4, max(length(h),length(x4)))

y = [y1(1:N-M+1),y1(N-M+2:N)+y2(1:M-1),y2(M:N-M+1),y2(N-M+2:N)+y3(1:M-1),y3(M:N-M+1),y3(N-M+2:N)+y4(1:M-1),y4(M:N)]
%}

n = ceil(Ls/L);

xp = [x,zeros(1,2*N)];
hp = [h, zeros(1,L-1)];

for k=0:n
    xn = [xp(k*L+1:(k+1)*L),zeros(1,M-1)];
    y(k+1,:)=cconv(xn,h,N);
end

for i=1:N
    y(i+1,1:M-1)= y(i,L+1:N)+y(i+1,1:M-1);
end

z=y(:,1:L)';
y=z(1:Ls+M-1)

verify_y = conv(x,h)