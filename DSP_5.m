x=input('enter value for x=');
y=input('enter value for y=');
N1=length(x);
N2=length(y);
Rxy=xcorr(x,y);
Ryx=xcorr(y,x);
disp(Rxy);
n=-(N1-1):1:(N1-1);
figure(1);
subplot(211);
stem(n,Rxy)
title('Rxy seq');
xlabel('n-->');
ylabel('Rxy-->');
subplot(212);
stem(n,Ryx)
title('Ryx seq');
xlabel('n-->');
ylabel('Ryx-->');

energy=((sum(x.^2)+sum(y.^2))./2);
center_index=ceil(length(Rxy)/2);
Rxy_0=Rxy(center_index);
if Rxx_0<=energy;
    disp('prop 1 proved');
else
    disp('prop 1 not proved');
end
a=fliplr(Ryx);
if a==Rxy;
    disp('prop 2 proved')
else
    disp('prop 2 not proved');
end
Rxy_right=Rxy(center_index+1:1:length(Rxx));
Rxy_left=Rxy(center_index-1:-1:1);
if (Rxy_right)==(Rxy_left);
    disp('prop 3 proved');
else
    disp('prop 3 not proved');
end
