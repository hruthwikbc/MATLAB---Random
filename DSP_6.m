% computation of impulse response of a given system
N = input('Desired impulse response length N =');
b = input('Coefficient of x(n)----->b =');
a = input('Coefficient of y(n)----->a =');
len=impzlength(b,a);
disp(len);
h=impz(b,a,N);
disp('impulse response of the system');
disp(h);
n=0:1:N-1;
stem(n,h);
xlabel('Time index');
ylabel('Amplitude');
title('Impulse response h(n)');