x=input('enter the sequence x=');
N=length(x);
n=0:N-1;  %time index
X=zeros(1,N);
for k=0:N-1
    W=exp((-1i)*2*pi*k*n/N);
    dprod=x.*W;
    X(k+1)=sum(dprod);   %indices in matlab cannot be 0, and by default, start with 1
end

%plotting frequency spectrum
magX=abs(X);
phazX=angle(X);
figure(1);
subplot(2,1,1);
n=0:N-1;
stem(n,magX);
title('magnitude of X(k)');
xlabel('k---->');
ylabel('magnitude');
subplot(2,1,2);
n=0:N-1;
stem(n,phazX);
title('phaze of X(k)');
xlabel('k---->');
ylabel('phaze');