function [lambda,L]=compute_Lebesgue_function(xi,x)
    n=length(xi);
    m=length(x);
    C=ones(n,m);

    for k=1:n
        for j=1:n
            if(j~=k)
                C(k,:)=C(k,:).*((x-xi(j))/((xi(k)-xi(j))));
            end
        end
    end
    lambda=sum(abs(C));
    L = max(lambda);
end