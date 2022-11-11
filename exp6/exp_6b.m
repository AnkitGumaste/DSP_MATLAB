clear ; close all ; clc ; 

N=512;
L=300;
n=0:L-1;
k=0:N-1;
wk=2*pi*k/N;

x = cos(0.2*pi*n)+cos(0.22*pi*n)+cos(0.6*pi*n);

for i=0:L-1
    w(i+1)=1;
end
for i=0:L-1
    wh(i+1)=0.5*(1-cos(2*pi*i/(L-1)));
end

xc1 = x.*w;
xc2 = x.*wh;

xc1 = [xc1,zeros(1,N-L)];
xc2 = [xc2,zeros(1,N-L)];

Xc1 = fft(xc1);
Xc2 = fft(xc2);

figure('Name','Magnitude spectrums');
subplot(211);plot(wk,abs(Xc1));title('Rectangular window');grid on;
subplot(212);plot(wk,abs(Xc2));title('Hanning window');grid on;