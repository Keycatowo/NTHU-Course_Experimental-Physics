%測試製作繞行圓

q=linspace(0,2*pi)
x=cos(q)
y=sin(q)
h=plot(x,y,'EraseMode','xor');
axis([-10 10 -10 10]);
for i=0:1000
    a=x+6*cos(2*pi/1000*i);
    b=y+6*sin(2*pi/1000*i);
    set(h,'xdata',a,'ydata',b);
    drawnow;
end
