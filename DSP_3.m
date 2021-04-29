%linear convolution in time domain 
x=input('Enter the first sequence x(n)=');
h=input('Enter the second sequence h(n)=');
Xlen=length(x);
Hlen=length(h);
n=0:1:Xlen-1;
subplot(4,1,1);
stem(n,x,'filled');
title('input sequence');
xlabel('n--->');
ylabel('x(n)--->');
grid on
n=0:1:Hlen-1;
subplot(4,1,2);
stem(n,h,'filled');
title('impulse sequence');
xlabel('n--->');
ylabel('h(n)--->');
grid on
%linear convolution in time domain
y=conv(h,x);
disp(y);
Ylen=Xlen+Hlen-1;
n=0:1:Ylen-1;
subplot(4,1,3);
stem(n,y,'filled');
title('Linaer convolution of x(n)*h(n)');
xlabel('n--->');
ylabel('y(n)--->');
grid on


%linear convolution using DFT and IDFT
x=input('Enter the first sequence x(n)=');
h=input('Enter the second sequence h(n)=');
N1=length(x);
N2=length(h);
N=N1+N2-1;
newx=[x zeros(1,N-N1)]; %padding zeros to make equal length(N) of x and y;
newh=[x zeros(1,N-N2)]; %padding zeros of 1 row X(N1-1) columns
xdft=fft(newx);%discrete fourier transform of x
hdft=fft(newh);%discrete fourier transform of h
ydft=(xdft.*hdft);%multiplication in freq domain
y=ifft(ydft);%inverse discrete fourier transform of y
disp(y);
figure(1);
subplot(3,1,1);
n=0:N1-1;
stem(n,x);%plotting discrete sequence of x
title('x(n) sequence');
xlabel('n--->');
ylabel('amplitude');
grid on
subplot(3,1,2);%plotting discrete sequence of h
n=0:N2-1;
stem(n,h);
title('h(n)sequence');
xlabel('n--->');
ylabel('amplitude');
grid on
subplot(3,1,2);%plotting discrete sequence of h
n=0:N2-1;
stem(n,y);
title('y(n)sequence');
xlabel('n--->');
ylabel('amplitude');
grid on