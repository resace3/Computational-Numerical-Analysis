function [I] = int_Simpson_rule(fun,a,b,n)



I =0;
x =[];
xave =0;
h =(b-a)/(n-1); 
for j = 1:n
	x(j)=a+(j-1)*h;

end
for j = 1:n-1
	xave =(x(j)+x(j+1))/2;
	I = I+(fun(x(j))+(4*fun(xave))+fun(x(j+1)));
    
end

I = (h/6)*I;
