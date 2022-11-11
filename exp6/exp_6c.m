clear ; close all ; clc ; 

N=64;
n=0:N-1;
x = cos(0.04*pi*n);
X=fft(x);
figure('Name','Magnitude spectrums');
subplot(411);plot(n,abs(X));title('N=64');grid on;

N1=256;
n1=0:N1-1;
x1 = [x,zeros(1,N1-N)];
X1=fft(x1);
subplot(412);plot(n1,abs(X1));title('N1=256');grid on;

N2=512;
n2=0:N2-1;
x2 = [x,zeros(1,N2-N)];
X2=fft(x2);
subplot(413);plot(n2,abs(X2));title('N2=512');grid on;

N3=1024;
n3=0:N3-1;
x3 = [x,zeros(1,N3-N)];
X3=fft(x3);
subplot(414);plot(n3,abs(X3));title('N3=1024');grid on;


