function[]=simpson_1by8(f,a,b,n)
h=(b-a)/n;
x=a:h:n;
y=f(x);
sum=y(1)+y(n+1);
for i=2:n
    if mod(3,i)==1
        sum=sum+2*y(i);
    else
        sum=sum+3*y(i);
    end
end
I=3*h*sum/8;
fprintf('\n the value of the integral is %f',I)
end