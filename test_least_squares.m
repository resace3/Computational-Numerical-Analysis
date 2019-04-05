function [x,p1,p2,p4,p8] = test_least_squares()
x=linspace(0,1,1000);
file=load('DJI_2014_2019.dat');
xi=file(:,1);
yi=file(:,2);



plot(xi,yi,'b');
hold on
M1=1;
[p1,~] = poly_least_squares(xi,yi,M1);

phi1=@(x)x.^(0:M1)*p1;
plot(xi,phi1(xi),'r');

M2=2;
[p2,~] = poly_least_squares(xi,yi,M2)

phi2=@(x)x.^(0:M2)*p2;
plot(xi,phi2(xi),'r');

M4=4;
[p4,~] = poly_least_squares(xi,yi,M4)

phi8=@(x)x.^(0:M4)*p4;
plot(xi,phi8(xi),'r');

M8=8;
[p8,~] = poly_least_squares(xi,yi,M8)

phi8=@(x)x.^(0:M8)*p8;
plot(xi,phi8(xi),'r');

end