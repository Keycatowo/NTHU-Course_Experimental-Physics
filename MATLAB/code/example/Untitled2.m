R = 5;
r = 1;
theta = linspace(0,2*pi,1000);
x = (R)*cos(theta);
y = (R)*sin(theta);
plot(x,y)
hold on
alpha = linspace(0,2*pi,1000);

a = (R+r)*cos(theta)+r*cos((R-r)/r*theta);
b = (R+r)*sin(theta)+r*sin((R-r)/r*theta); 
h=plot(a,b,'EraseMode','xor');
m = (R+r)*cos(theta);
n = (R+r)*sin(theta);
g=plot(m,n,'EraseMode','xor');
% tic
for i =1:1000
   a = (R+r)*cos(theta/1000*i)+r*cos((R-r)/r*alpha/1000*i);
   b = (R+r)*sin(theta/1000*i)+r*sin((R-r)/r*alpha/1000*i); 
   set(h,'ydata',b,'xdata',a);
%    m = (R+r)*cos(theta/1000*i);
%    n = (R+r)*sin(theta/1000*i);
%    set(g,'ydata',n,'xdata',m);
   drawnow;
end
% toc


