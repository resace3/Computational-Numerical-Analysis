function [I] = int_trapezoidal_rule(fun,a,b,n)


x = [];
I = 0;
h =(b-a)/(n-1);  
for j = 1:n
	x(j) =a+(j-1)*h;
    
end 
for j = 1:n-1
	I = I+((fun(x(j+1))+fun(x(j)))/2);  
    
end
  
I = I*h;
