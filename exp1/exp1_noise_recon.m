clear all;close all;clc;

fc=10;
fm=1;
t=0:0.01:10;

u=1;

s=cos(2*pi*fm*t);
subplot(411);
plot(t,s);
title('Original Signal');
xlabel('Time');
ylabel('Amplitude');

r=randn(1,length(s));
subplot(412);
plot(t,r);
title('Random Signal');
xlabel('Time');
ylabel('Amplitude');

n = s+0.1*r;
subplot(413);
plot(t,n);
title('Noise Signal');
xlabel('Time');
ylabel('Amplitude');

recon = n - 0.1*r;
subplot(414);
plot(t,recon);
title('Reconstructed Signal');
xlabel('Time');
ylabel('Amplitude');