clear all; close all; clc;

x = [1,2,3,4,5,6,7,8];

N = length(x);
n = 0:N-1;
X = fft(x)

subplot(211);
stem(n,abs(X)); grid on;
title('Magnitude Spectrum');


subplot(212);
stem(n,angle(X)*180/pi); grid on;
title('Phase Spectrum');