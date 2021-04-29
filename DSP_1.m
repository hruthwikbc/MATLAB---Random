% Verification of Sampling Theorem

t= (0:0.01:1);
f1=input('Enter first frequency ='); %input from user
f2=input('Enter second frequency =');
y = 6*sin(2*pi*f1*t)+3*cos(2*pi*f2*t);
figure(1);
subplot(3,1,1); %divides the current figure into 3 rows, 1 column and places the axis in 1st position
plot(t,y);           % plot is continous and stem is for discrete
title('continous signal');
xlabel('t-->');
ylabel('x(t)-->');

%discrete signal

f=max(f1,f2); % returns largest element in the array
fs=6*f; %under sampling   CHANGE THIS FOR SUITABLE OVERSAMPLING AND CRITICAL SAMPLING: fs=6*f for oversampling(fs>fmax); fs=2*f for critical sampling(fs=2*fmax)
ts=1/fs;
to=0:ts:1;
ys = 6*sin(2*pi*f1*to)+3*cos(2*pi*f2*to);
subplot(3,1,2);
stem(to,ys); %plot discrete sequence of data
title('under sampling');
xlabel('n-->');
ylabel('x(n)-->');

% reconstruction of the continous time signal from sampled signal ys
subplot(3,1,3);
plot(to,ys);
grid on;
xlabel('x-->');
ylabel('x(t)-->');
title('reconstruction');
