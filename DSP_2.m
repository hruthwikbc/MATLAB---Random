%impulse response
x=input('enter value for x=');
y=input('enter value for y=');
N=length(x);
L=length(y);
M=L-N+1; %length of the impulse function
[h,r]=deconv(y,x); %using long division method, returnn h quotient &remainder r
disp('the impulse response is:');
disp(h);
m=0:M-1; %use (m=0:1:M-1) also
stem(m,h);
title('Impulse Response');
xlabel('n-->');
ylabel('Amplitude');

