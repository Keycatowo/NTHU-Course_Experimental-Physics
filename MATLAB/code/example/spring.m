x0=[10 0]
t=0:0.1:100
[X,Solx]=ode45(@h,t,x0)
plot(X,Solx(:,1))