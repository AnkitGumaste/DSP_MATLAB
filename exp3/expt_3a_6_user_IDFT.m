clear all ; close all ; clc ;

x=[1 1 0 0];

X=fft(x);

[m,N]=idft_mtx();

x=(X*m)/N;

disp(x);