 y=dsolve('D2y+2*Dy+3*y=sin(x)','y(0)==1','Dy(0)==5','x');
 x=linspace(0,3,100);
 t=eval(vectorize(y));
 plot(t,x)
 grid on