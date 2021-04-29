%Recheck the Code


%Multi tone sinusoidal wave
f1=[100 300 400];
A=[1 2 1];
T=1/min(f1);
Fs=15*max(f1);
Ts=1/Fs;
t=0:Ts:3*T;
N=length(t);
xt=0;
for i=1:length(f1);
    xt=xt+A(i)*sin(2*pi*f1(i)*t);
end

%Spectrum of multi tone sinusoidal waves in frequency domain
plot(fre,abs(xf),'Linewidth',2);
xlabel('Frequency(Hz)');
ylabel('Amplitude');
grid on;

%Spectrum of multi tone sinusoidal waves in time domain
plot(t,xt,'Linewidth',2);
xlabel('Time(s)');
ylabel('Amplitude');
grid on;

%In the form of samples in Time domain
stem(t,xt,'Linewidth',2);
xlabel('Time(s)');
ylabel('Amplitude');
grid on;

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
