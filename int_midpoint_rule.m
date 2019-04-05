function [I] = int_midpoint_rule(fun,a,b,n)


x = [];
I= 0;
h =(b-a)/(n-1);
for j = 1:n
	x(j) =a+(j-1)*h;
    
end
for j = 1:n-1
	xmid =(x(j)+x(j + 1))/2;
	I =I +h*fun(xmid);
    
end