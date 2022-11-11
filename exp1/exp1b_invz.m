clc ; close all ; clear all;
z=[1,2,3,4];
p=[-1,-2,-3,-4];
k=1;

[nr,dr]=zp2tf(z',p,k);
sys=tf(nr,dr,1,'variable','z^-1');
[R,P,K] = residuez(nr,dr);
[H,T] = impz(nr,dr,10)