clear all; close all; clc;

Nr = [1,0,-0.8];
Dr = [1,-0.2,0.9];

sys=tf(Nr,Dr,1,'variable','z^-1');
n=0:4;

[s,t]=step(sys,4)

step=[ones(1,5)];
verify_step=filter(Nr,Dr,step)
