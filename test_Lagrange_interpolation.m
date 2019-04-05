function [x,f,P1,P2,P3,P4]=test_Lagrange_interpolation()
    x=linspace(-1,1,1000);
    fun= @(x) 1./(1+(sin(2*pi*x)).^2);
    f=fun(x);
    p1x=linspace(-1,1,15);
    p1y=fun(p1x);
    P1=Lagrange_interpolation(p1x,p1y,x);
    
    figure(1)
    clf
    plot(x,f,'b');
    hold on
    
    plot(x,P1,'r');
    plot(p1x,p1y,'ro');
    
    
    p2x=linspace(-1,1,41);
    p2y=fun(p2x);
    P2=Lagrange_interpolation(p2x,p2y,x);
    
    figure(2)
    clf
    plot(x,f,'b');
    hold on
    plot(x,P2,'r');
    plot(p2x,p2y,'ro');
    
    p3x=[];
    for j=0:14
        p3x=[p3x,cos((pi*j)/14)];
    end
    p3y=fun(p3x);
    P3=Lagrange_interpolation(p3x,p3y,x);
    
    figure(3)
    clf
    plot(x,f,'b');
    hold on
    plot(x,P3,'r');
    plot(p3x,p3y,'ro');
    
    p4x=[];
    for i=0:40
        p4x=[p4x,cos((pi*i)/40)];
    end
    p4y=fun(p4x);
    P4=Lagrange_interpolation(p4x,p4y,x);
    
    figure(4)
    clf
    plot(x,f,'b');
    hold on
    plot(p4x,p4y,'ro');
    plot(x,P4,'r');
end
        
    