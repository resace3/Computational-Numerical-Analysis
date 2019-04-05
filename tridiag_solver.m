function y = tridiag_solver( e, a, c, b )

n = length(b);
v = zeros(n,1);   
y = v;
w = a(1);
y(1) = b(1)/w;
for i=2:n
    v(i-1) = c(i-1)/w;
    w = a(i) - e(i-1)*v(i-1);
    y(i) = ( b(i) - e(i-1)*y(i-1) )/w;
end
for j=n-1:-1:1
   y(j) = y(j) - v(j)*y(j+1);
end