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


%Spectrum of single tone sinusoidal waves in time domain
plot(t,xt,'Linewidth',2);
xlabel('Time(s)');
ylabel('Amplitude');
grid on;