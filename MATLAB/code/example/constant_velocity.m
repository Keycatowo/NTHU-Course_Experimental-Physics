tspan=[0 5];
v0=0;
[t,v]=ode45(@(t,v)2,tspan,v0);
plot(t,v,'-o');

xlabel('t')
ylabel('v(t)')