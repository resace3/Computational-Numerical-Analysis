function [em,et,es] = test_integration()
I = 1.6851344770476;
fun = @(x)((1./(1+x.^2)).*(cos((3/2)*exp(-(x.^2)))))-(x.^3/30);
Im=[];
It=[];
Is=[];
a = -3;
b = 1;
j = 100;
for n=2:j
  It(n-1)=int_trapezoidal_rule(fun,a,b,n);
  Is(n-1)=int_Simpson_rule(fun,a,b,n);
  Im(n-1)=int_midpoint_rule(fun,a,b,n);
  
  
  
end


et=abs(I-It);
es=abs(I-Is);
em=abs(I-Im);
xf = linspace(-3,1,100);
figure(1);
listOfY=fun(xf);
plot(xf,listOfY);
figure(2);
loglog(2:100,em,'r')
hold on
loglog(2:100,et,'b')
loglog(2:100,es,'k')
end
