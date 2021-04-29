x=[30 60 90 120 150 180 210 240 270 300 330 360];
x=(pi/180)*x;% only if theta is in terms of degree, not required otherwise
y=[2.34 3.01 3.68 4.15 3.69 2.20 0.83 0.51 0.88 1.09 1.19 1.64];
syms t
T=2*pi;
w=2*pi/T;
h=3;
a0=2*mean(y);
HS=a0/2;
for i=1:h
    a(i)=2*mean(y.*cos(i*w*x));
    b(i)=2*mean(y.*sin(i*w*x));
    HS=HS+a(i)*cos(i*w*t)+b(i)*sin(i*w*t);
end
HS=vpa(HS,5);
disp(HS)
t=x(1):0.1:x(end);
z=eval(HS);
plot(x,y,'*',t,z,'r')