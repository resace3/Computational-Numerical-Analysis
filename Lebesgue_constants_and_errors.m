function [L1,L2,L3,L4,e1,e2,e3,e4]=Lebesgue_constants_and_errors()
    x=linspace(-1,1,1000);
    fun= @(x) 1./(1+(sin(2*pi*x)).^2);
    f=fun(x);
    plx=linspace(-1,1,15);
    ply=fun(plx);
    [lambda1,L1]=compute_Lebesgue_function(plx,x);
    errors1=abs(f-lambda1);
    e1=max(errors1);
    
    figure(1)
    clf
    plot(x,lambda1);
    
    p2x=linspace(-1,1,41);
    p2y=fun(p2x);
    [lambda2,L2]=compute_Lebesgue_function(p2x,x);
    
    errors2=abs(f-lambda2);
    e2=max(errors2);
    
    figure(2)
    clf
    plot(x,lambda2);
    
    p3x=[];
    for j=0:14
        p3x=[p3x,cos((pi*j)/14)];
    end
    p3y=fun(p3x);
    [lambda3,L3]=compute_Lebesgue_function(p3x,x);
    
    errors3=abs(f-lambda3);
    e3=max(errors3);
    
    figure(3)
    clf
    plot(x,lambda3);
    
    p4x=[];
    for i=0:40
        p4x=[p4x,cos((pi*i)/40)];
    end
    p4y=fun(p4x);
    [lambda4,L4]=compute_Lebesgue_function(p4x,x);
    
    errors4=abs(f-lambda4);
    e4=max(errors4);
    
    figure(4)
    clf
    plot(x,lambda4);
end
    