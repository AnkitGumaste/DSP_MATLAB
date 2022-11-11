clear all; clc; close all; 

n = -5:5;
a = -2;
b = -0.5;


y = a.^n;
subplot(2,1,1);
stem(n,y);
title('Exponential rise wave');
xlabel('Time');
ylabel('Amplitude');

z = b.^n;
subplot(2,1,2);
stem(n,z);
title('Exponential decay wave');
xlabel('Time');
ylabel('Amplitude');