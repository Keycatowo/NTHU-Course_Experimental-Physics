clear;
g=9.8;
t=0.01;

x1=0;
y1=-1;

u1=-0.1;
v1=0;


x2=0;
y2=1;

u2=0.1;
v2=0;

hold on;
P1=plot(x1,y1,'x');
P2=plot(x2,y2,'o');

U1=u1;
U2=u2;

V1=v1;
V2=v2;



X1=x1;
X2=x2;

Y1=y1;
Y2=y2;


Ax1=0;
Ay1=0;

Ax2=0;
Ay2=0;



axis([-10 10 -10 10]);
while(1)

R12=sqrt((X1-X2)^2+(Y1-Y2)^2);
disp(R12);

% if(R12<0.05)break;end

f12=1/R12^3*[X1-X2,Y1-Y2];%

Ax1=-f12(1);%
Ax2=f12(1);%

Ay1=-f12(2);%
Ay2=f12(2);%



U1=U1+Ax1*t;
U2=U2+Ax2*t;

V1=V1+Ay1*t;
V2=V2+Ay2*t;

X1=X1+U1*t+1/2*Ax1*t^2;
X2=X2+U2*t+1/2*Ax2*t^2;

Y1=Y1+V1*t+1/2*Ay1*t^2;
Y2=Y2+V2*t+1/2*Ay2*t^2;
 


P1.XData=X1;
P1.YData=Y1;



P2.XData=X2;
P2.YData=Y2;




% hold off;
% plot3(X1,Y1,Z1,'x');
% hold on;
% plot3(X2,Y2,Z2,'o');
% axis([-10 10 -10 10 -10 10]);

drawnow;

end

