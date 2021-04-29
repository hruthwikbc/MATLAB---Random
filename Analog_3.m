% Standard AM and DSB SC Modulated Signals and Spectra

%1. AM
fm=500;    %Messge freq
Fc=5000;   %Carrier freq
Ac=1;      %Amplitude od carrier
Mod_ind=0.5; % u=ka*Am is this item % change this for under,over and perfect modulation
T=1/fm;
Fs=10*max(fm,Fc);  %or just 10*Fc
t=0:1/Fs:5*T;
N=length(t); 
sigx=cos(2*pi*fm*t);     %message signal
ct=Ac*cos(2*pi*Fc*t);    %carrier signal
sigxm=(1+Mod_ind*sigx).*ct; %standard AM 

figure
subplot(2,1,1);
plot(t,sigx,'r','Linewidth',2);
xlabel('Time');
ylabel('Message signal amplitude');
grid on

subplot(2,1,2);
plot(t,sigxm,'Linewidth',2);
xlabel('Time');
ylabel('Modulated signal amplitude');
grid on

%to plot spectrum

SigX=(1/N)*fftshift(fft(sigxm));
fr=linspace(-Fs/2,Fs/2,N);
figure
plot(fr/1000,abs(SigX),'Linewidth',2);
xlabel('Frequency(kHz)');
ylabel('Magnitude spectrum');
grid on
xlim([2,7]) %use this for a close view


%2. For DSB SC  (change only in line 53)

fm=500;    %Messge freq
Fc=5000;   %Carrier freq
Ac=1;      %Amplitude od carrier
Mod_ind=0.5; % u=ka*Am is this item % change this for under,over and perfect modulation
T=1/fm;
Fs=10*max(fm,Fc);  %or just 10*Fc
t=0:1/Fs:5*T;
N=length(t); 
sigx=cos(2*pi*fm*t);     %message signal
ct=Ac*cos(2*pi*Fc*t);    %carrier signal
sigxm=sigx.*ct; %standard DSB SC  

figure
subplot(2,1,1);
plot(t,sigx,'r','Linewidth',2);
xlabel('Time');
ylabel('Message signal amplitude');
grid on

subplot(2,1,2);
plot(t,sigxm,'Linewidth',2);
xlabel('Time');
ylabel('Modulated signal amplitude');
grid on

%to plot spectrum

SigX=(1/N)*fftshift(fft(sigxm));
fr=linspace(-Fs/2,Fs/2,N);
figure
plot(fr/1000,abs(SigX),'Linewidth',2);
xlabel('Frequency(kHz)');
ylabel('Magnitude spectrum');
grid on
xlim([2,7]) %use this for a close view


