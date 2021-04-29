function[]=simpson_1by3(f,a,b,n)
h=(b-a)/n;
x=a:h:b;
y=f(x);
sum=y(1)+y(n+1);
for i=2:n
    if mod(i,2)==0
        sum=sum+4*y(i);
    else
        sum=sum+2*y(i);
    end
end
I=h*sum/3;
fprintf('/n the value of the integral is %f',I);
end
