clear all; close all; clc;

Nr = [1,0,-0.8];
Dr = [1,-0.2,0.9];

[h,t]=impz(Nr,Dr,-20:100)

n=-20:100;
impulse=[1,zeros(1,4)];
imp=filter(Nr,Dr,impulse)