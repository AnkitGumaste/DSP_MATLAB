clear all ; close all ; clc ;

x=[1 2 3 2];
m=dft_mtx();
X=x*m;

disp(X);