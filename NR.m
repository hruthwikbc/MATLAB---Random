function []=NR(f,df,x0)
tol=10^(-6);
maxit=100;
x(1)=x0;
for i=1:maxit
    if abs((df(x(i)))<10^(-12))
        fprintf('The Newton Raphson method fails')
        break
    end
    x(i+1)=x(i)-(f(x(i))/df(x(i)));
    if abs(x(i+1)-x(i))<tol
        fprintf('the root of the given equation after %d iteration is %f\n',x(i+1),i)
    break
    end
    fprintf('the root at %d iteration is x(%d)=%f\n',i,i,x(i+1))
end
    t=linspace(1,5,500);
    y=f(t);
    plot(t,y,'-',x(i+1),0,'r*')
    grid on
end

