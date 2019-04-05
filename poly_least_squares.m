 
function [a,err] = poly_least_squares(xi,yi,M)
    a=0;
    B=ones(length(xi),M+1);
    xi=transpose(xi);
    for i=1:length(xi)
        for m=0:M
            B(i,m+1)=xi(i)^m;
        end
    end
 
 a=(transpose(B)*B)\(transpose(B)*yi);
 
 %phi=@(x)a*x.^(0:M);
 
 err=sum((yi-transpose(B*a))^2);
end
 