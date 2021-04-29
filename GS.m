function [] = GS(x,A,B)
maxit=100;
[n,~]=size(A);
tol=10^(-6);
for k=1:maxit
    xold=x;
    for i=1:n
     x(i)=(B(i,1)-A(i,1:i-1)*x(1:i-1)-A(i,i+1:n)*x(i+1:n))/A(i,i);
     err=max(abs(x-xold));
    end
    if err<tol
        fprintf('\n The solution is converging after %d itertion',k);
        fprintf('\n The solution is \n');
        disp(x);
        break;
    end
     fprintf('\n The error after %d iteartions is error=%f',k,err);
end
if k==maxit
    fprintf(' The solution is not converging after %d iterations',k);
end
end

