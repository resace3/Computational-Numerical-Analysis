function [y,t]=solve_ODE_system()

y0=[1; 2; 3];
DT=1e-3;
NSTEPS=1e5;
IOSTEPS=50;
f=@(y,t)[-y(1)+y(2)*y(3);-y(2)+(y(3)-2)*y(1);1-y(1)*y(2)]

[y,t] = AB2(f,y0,DT,NSTEPS,IOSTEPS);
figure(1)
plot(t,y(1,:))
hold on
plot(t,y(2,:))
plot(t,y(3,:))

figure(2)
plot3(y(1,:),y(2,:),y(3,:))


