%Single tone sinusoidal wave
f1=100;
A=1;
T=1/f1;
Fs=15*f1;
Ts=1/Fs;
t=0:Ts:3*T;
N=length(t);
xt=A*sin(2*pi*f1*t);
xf=(1/N)*fftshift(fft(xt));
fre=linspace(-Fs/2,Fs/2,N);

%Spectrum of single tone sinusoidal waves in frequency domain
figure;
plot(fre,abs(xf),'Linewidth',2);
xlabel('Frequency(Hz)');
ylabel('Amplitude');
grid on;

%Spectrum of single tone sinusoidal waves in time domain 
figure;
plot(t,xt,'Linewidth',2);
xlabel('Time(s)');
ylabel('Amplitude');
grid on;

%In the form of samples in Time domain
figure;
stem(t,xt,'Linewidth',2);
xlabel('Time(s)');
ylabel('Amplitude');
grid on

%real part of the signal
subplot(2,1,1);
plot(fre,real(xf),'Linewidth',2);
xlabel('Frequency(Hz)');
ylabel('Amplitude');
title('real Part');
axis([-Fs/2 Fs/2 -1 1]);
grid on;

%Imaginary part of the signal
subplot(2,1,2);
plot(fre,imag(xf),'Linewidth',2);
xlabel('Frequency(Hz)');
ylabel('Amplitude');
title('Imaginary Part');
axis([-Fs/2 Fs/2 -1 1]);
grid on;
