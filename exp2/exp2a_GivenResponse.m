clear all; close all; clc;

Nr = [1,0,-0.8];
Dr = [1,-0.2,0.9];
n=0:4;
a=0.5;  
given=a.^n;
Response_given=filter(Nr,Dr,given)
stem (n,given);
