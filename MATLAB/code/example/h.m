function dydt=h(t,y)
dydt=zeros(2,1);
dydt(1)=    y(2);
dydt(2)=    -4*y(1)-0.1*y(2);

