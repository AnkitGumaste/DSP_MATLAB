clear all ; close all ; clc ;

x=[1 2 1 -1];
h=[1 2 3 1];

p=length(x);
q=length(h);
N=p+q-1;

x=[x,zeros(1,N-p)];
h=[h,zeros(1,N-q)];


for n=0:(N-1)
    Y(n+1)=0;
    for k=0:p-1
        if(n-k)>=0
            Y(n+1)=Y(n+1)+x(k+1).*h(n+1-k);
        end    
    end
end

disp(Y);
verify_Y=conv(x,h)