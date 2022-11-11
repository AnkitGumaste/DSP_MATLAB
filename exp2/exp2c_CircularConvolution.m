clear all ; close all ; clc ;

x=[1 2 1 -1];
h=[1 2 3 1];

p=length(x);
q=length(h);
N=max(p,q);

x=[x,zeros(1,N-p)];
h=[h,zeros(1,N-q)];

for n=0:(N-1)
    Y(n+1)=0;
    for m=0:(N-1)
        if(n-m)>=0
            Y(n+1)=Y(n+1)+x(m+1).*h(n-m+1);
        else
            Y(n+1)=Y(n+1)+x(m+1).*h(N+n-m+1);
        end    
    end
end

disp(Y);
verify_Y=cconv(x,h,N)