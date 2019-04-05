function [y,t] = AB2(f,y0,DT,NSTEPS,IOSTEPS)% This function computes the numerical solution to% the system of ordinary differential equations%%          dy/dt = f(y,t) y(0)=y0%% Input f  -> function handle representing f(y,t)%       y0 -> column vector of inintial conditionn%       DT -> delta t%   NSTEPS -> total number of time steps ( T=DT*NSTEPS)%  IOSTEPS -> input/output steps (one time snapshots is%             saved into the output matrix every IOSTEPS%             steps.%% Output y -> matrix that collects the time snapshots of%             the solution columnwise%        t -> row vector collecting the times at which the%             solution is saved
t=0;

un=[y0];

un= cat(2,un,y0+0.5*DT*(f(y0,t)+DT*f(y0+f(y0,t),t+DT)));

y=[y0];
for ii=1:NSTEPS
    
    
    ts = (ii-1)*DT;
    
    un = cat(2,un,un(:,end)+0.5*DT*(3*f(un(:,end),ts)-f(un(:,end-1),ts-DT)));

    if mod(ii,IOSTEPS)==0
        y =cat(2,y,un(:,end));
        t = [ t ts+DT];
end
end
end