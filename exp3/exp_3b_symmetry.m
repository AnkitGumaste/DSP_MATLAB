clear all ; close all ; clc ;

%Real and Even
x1 = [1 2 3 2]
X1 = fft(x1)
disp('For real and even sequence x1. Its DFT is real and even sequence X1');

%Real and Odd
x2 = [0 1 0 -1]
X2 = fft(x2)
disp('For real and odd sequence x2. Its DFT is imaginary and odd sequence X2');

%Imaginary and Even
x3 = [1j 2j 3j 2j]
X3 =fft(x3)
disp('For imaginary and even sequence x3. Its DFT is imaginary and even sequence X3');

%Imaginary and Odd
x4 = [0 1j 0 -1j]
X4 = fft(x4)
disp('For imaginary and odd sequence x4. Its DFT is real and odd sequence X4');














%{
xr=real(x)
xi=imag(x)

N=length(x);
X=0;

for n=0:N-1
    for k=0:N-1
        X(k+1)= X(k+1)+xr.*cos(2*pi*k*n/N)+xi.*sin(2*pi*k*n/N)-1j*(xr.*sin(2*pi*k*n/N)-xi.*cos(2*pi*k*n/N));
    end
end

X
%}