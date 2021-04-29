% 1. Impulse function spectrum

sigx=[zeros(1,5),1,zeros(1,500)];
N=length(sigx);
Fs=2000;
t=0:1/Fs:(N-1)/Fs;
plot(t,sigx,'Linewidth',2);
SigX=fftshift(fft(sigx));
fr=linspace(-Fs/2,Fs/2,N);

figure
plot(fr,abs(SigX),'Linewidth',2);
xlabel('Frequency(Hz)');
ylabel('Magnitude');
grid on

% 2.Rectangular pulse

M=20;
sigx=[ones(1,10),1,zeros(1,1000)];
N=length(sigx);
Fs=2000;
t=0:1/Fs:(N-1)/Fs;   %note the pulse width= 10/Fs
plot(t,sigx,'Linewidth',2);
axis([0 0.05 -1 2]);
SigX=fftshift(fft(sigx));
fr=linspace(-Fs/2,Fs/2,N);

figure
plot(fr,abs(SigX),'Linewidth',2);
xlabel('Frequency(Hz)');
ylabel('Magnitude');
grid on

% 3.Chirp Waveform

load chirp;
sigx=y;
N=length(y);
t=0:1/Fs:(N-1)/Fs;  
plot(t,sigx,'Linewidth',2);
xlabel('Samples');
ylabel('Amplitude');
grid on

SigX=(1/N)*fftshift(fft(sigx));
fr=linspace(-Fs/2,Fs/2,N);
plot(fr,abs(SigX),'Linewidth',2);
xlabel('Frequency(Hz)');
ylabel('Magnitude');
grid on
sound(y,Fs)

% 4. Periodic pulse signal(Square wace of 20 periods, repetation frequency of 100Hz)

M=20;
unitx=[ones(1,10),1,zeros(1,10)];
sigx=repmat(unitx,1,M);
N=length(sigx);
Frep=100;
Trep=1/Frep;
t=linspace(0,M*Trep,N);
Fs=20*Frep;
plot(t,sigx,'Linewidth',2);
SigX=(1/N)*fftshift(fft(sigx));
fr=linspace(-Fs/2,Fs/2,N);
figure
plot(fr,abs(SigX),'Linewidth',2);
xlabel('Frequency(Hz)');
ylabel('Magnitude');
%axis([-500 500 0 0.5]);
grid on


