function projection
x0=[0 20]
y0=[0 10]
t=0:0.1:20
[X,Solx]=ode45(@g,t,x0)
[Y,Soly]=ode45(@f,t,y0)
plot(Solx(:,1),Soly(:,1))
disp(Solx(:,1))


function dydt=f(t,y)
dydt=zeros(2,1);
dydt(1)=    y(2);
dydt(2)=-   9.8;
