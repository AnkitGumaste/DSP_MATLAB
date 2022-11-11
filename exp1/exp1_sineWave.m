clear all; clc; close all; 

n = -0.25:0.01:0.25;
f = 2;
y = sin(2*pi*f*n);
stem(n,y);
title('Sine Wave');
xlabel('n');
ylabel('Amplitude');

