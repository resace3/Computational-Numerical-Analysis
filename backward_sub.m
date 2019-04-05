function y = backward_sub(A,b)

n = length(b);
y(n,1) = b(n)/A(n,n);
for i = n-1:-1:1
    y(i,1)=(b(i)-A(i,i+1:n)*y(i+1:n,1))./A(i,i);
end