

clear all;close all;clc;

fc=100;
fm=2;
t=0:0.005:1;

u=1;


m=cos(2*pi*fm*t);
subplot(411);
plot(t,m);
title('Message Signal');
xlabel('Time');
ylabel('Amplitude');

c=cos(2*pi*fc*t);
subplot(412);
plot(t,c);
title('Carrier Signal');
xlabel('Time');
ylabel('Amplitude');

AM=c.*(1+(u*m));
subplot(413);
plot(t,AM);
title('AM Signal');
xlabel('Time');
ylabel('Amplitude');

DSBSC=AM-c;
subplot(414);
plot(t,DSBSC);
title('DSBSC Signal');
xlabel('Time');
ylabel('Amplitude');