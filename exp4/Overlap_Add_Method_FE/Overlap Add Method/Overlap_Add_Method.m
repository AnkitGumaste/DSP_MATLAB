
clc;
clear all;
Xn=input('Enter 1st Sequence X(n)= ');
Hn=input('Enter 2nd Sequence H(n)= ');
L=input('Enter length of each block L = ');

% Code to perform Convolution using Overlap Add Method
NXn=length(Xn);
M=length(Hn);
M1=M-1;
R=rem(NXn,L);
N=L+M1;
Xn=[Xn zeros(1,L-R)];
Hn=[Hn zeros(1,N-M)];
K=floor(NXn/L);
y=zeros(K+1,N);
z=zeros(1,M1);
for k=0:K
Xnp=Xn(L*k+1:L*k+L);
Xnk=[Xnp z];
y(k+1,:)=mycirconv(Xnk,Hn); %Call the mycirconv function.
end
p=L+M1;
for i=1:K
y(i+1,1:M-1)=y(i,p-M1+1:p)+y(i+1,1:M-1);
end
z1=y(:,1:L)';
y=(z1(:))'
