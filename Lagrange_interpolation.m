function y=Lagrange_interpolation(xi,yi,x)
n=size(xi,2);
y=0;
M=ones(n,size(x,2));
for k=1:n
   for j=1:n
     if (k~=j)
            M(k,:)=M(k,:).*(x-xi(j))/(xi(k)-xi(j));
     end
   end
end
for i=1:n
    y=y+yi(i)*M(i,:);
end
end