
clear all ; clc ; close all;

n=-20:20;

y=[zeros(1,20), 1, zeros(1,20)];
subplot(2,1,1);
stem(n,y);
title('Step sequence');
xlabel('n');
ylabel('Amplitude');

z=[zeros(1,20), 1, ones(1,20)];
subplot(2,1,2);
stem(n,z);