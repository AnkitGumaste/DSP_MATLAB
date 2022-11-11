clear all; close all; clc;

Nr = [1,0,-0.8];
Dr = [1,-0.2,0.9];
%sys=tf(Nr,Dr,1);

%[h,t]=impz(Nr,Dr,4)
[z,p,k]=tf2zp(Nr,Dr)
zplane(z,p)

if abs(p)<1
    disp('System is Stable');
else
    disp('System is unstable');
end
