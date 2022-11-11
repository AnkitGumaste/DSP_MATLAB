clc ; close all ; clear all;
z=[1,2,3,4];
p=[-1,-2,-3,-4];
k=1;

[nr,dr]=zp2tf(z',p,k);

[R,P,K] = residuez(nr,dr)