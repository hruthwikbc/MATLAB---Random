n=0:100;
%impulse response of system 1
B1=[1 0 0];
A1=[1 -6 -8];
h1=impz(B1,A1,n);
%impulse response of system 2
B2=[1 0 0];
A2=[1 4 -3];
h2=impz(B2,A2,n);
%combination of two systems
h=conv(h1,h2);
%plot
nh=0:length(h)-1;
stem(nh,h),grid;
axis([0,11,0,10^7]);


n=0:300;
B1=[1 0 0];
A1=[1 -6 -8];
h1=impz(B1,A1,n);
grid on
stem(n,h1)


n=0:500;
B2=[1 0 0];
A2=[1 4 -3];
h2=impz(B2,A2,n);
stem(n,h2),grid on;


n=0:100;
B1=[1 0 0];
A1=[1 -6 -8];
h1=impz(B1,A1,n);
B2=[1 0 0];
A2=[1 4 -3];
h2=impz(B2,A2,n);
h=conv(h1,h2);
stem(h)
grid on;
axis([0,11,0,10^7]);

