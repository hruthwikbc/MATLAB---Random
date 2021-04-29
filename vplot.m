f= @(x) 0.*(-2<=x & x<2)+3.*(2<=x & x<6)+x.*(6<=x & x<10);
x=linspace(-2,10,100);
fx = repmat(f(x),1,5); %%%%% 3=(24-(-14))/(10-(-2))
x1 = linspace(-14,24,length(fx));
plot(x1,fx,'.b')
grid on