
clear ; close all ; clc ; 

N=512;


% For L=25
L=25;
n=0:L-1;
k=0:N-1;
wk=2*pi*k/N;

x = cos(0.04*pi*n)+ cos(0.02*pi*n);
for i=0:L-1
    w(i+1)=1;
end

xc = x.*w;
xc = [xc,zeros(1,N-L)];
Xc = fft(xc);
figure('Name','Magnitude spectrums');
subplot(421);plot(wk,abs(Xc));title('L=25');grid on;
subplot(422);plot(k,abs(xc));title('L=25');grid on;

% For L=50
L=50;
n=0:L-1;
k=0:N-1;
wk=2*pi*k/N;

x = cos(0.04*pi*n)+ cos(0.02*pi*n);
for i=0:L-1
    w(i+1)=1;
end

xc = x.*w;
xc = [xc,zeros(1,N-L)];
Xc = fft(xc);
subplot(423);plot(wk,abs(Xc));title('L=50');grid on;
subplot(424);plot(k,abs(xc));title('L=50');grid on;

% For L=100
L=100;
n=0:L-1;
k=0:N-1;
wk=2*pi*k/N;

x = cos(0.04*pi*n)+ cos(0.02*pi*n);
for i=0:L-1
    w(i+1)=1;
end

xc = x.*w;
xc = [xc,zeros(1,N-L)];
Xc = fft(xc);
subplot(425);plot(wk,abs(Xc));title('L=100');grid on;
subplot(426);plot(k,abs(xc));title('L=100');grid on;

% For L=200
L=200;
n=0:L-1;
k=0:N-1;
wk=2*pi*k/N;

x = cos(0.04*pi*n)+ cos(0.02*pi*n);
for i=0:L-1
    w(i+1)=1;
end

xc = x.*w;
xc = [xc,zeros(1,N-L)];
Xc = fft(xc);
subplot(427);plot(wk,abs(Xc));title('L=200');grid on;
subplot(428);plot(k,abs(xc));title('L=200');grid on;

