clear;
g=9.8;
t=0.01;

x1=0;
y1=-1;
z1=0;
u1=-0.1;
v1=0;
w1=1;

x2=0;
y2=1;
z2=0;
u2=0.1;
v2=0;
w2=0;
hold on;
P1=plot3(x1,y1,z1,'x');
P2=plot3(x2,y2,z1,'o');

U1=u1;
U2=u2;

V1=v1;
V2=v2;

W1=w1;
W2=w2;

X1=x1;
X2=x2;

Y1=y1;
Y2=y2;

Z1=z1;
Z2=z2;

Ax1=0;
Ay1=0;
Az1=0;

Ax2=0;
Ay2=0;
Az2=0;


axis([-10 10 -10 10 -10 10]);
while(1)

R12=sqrt((X1-X2)^2+(Y1-Y2)^2+(Z1-Z2)^2);
disp(R12);

% if(R12<0.05)break;end

f12=1/R12^3*[X1-X2,Y1-Y2,Z1-Z2];%

Ax1=-f12(1);%
Ax2=f12(1);%

Ay1=-f12(2);%
Ay2=f12(2);%

Az1=-f12(3);%
Az2=f12(3);%


U1=U1+Ax1*t;
U2=U2+Ax2*t;

V1=V1+Ay1*t;
V2=V2+Ay2*t;

W1=W1+Az1*t;
W2=W2+Az2*t;

X1=X1+U1*t+1/2*Ax1*t^2;
X2=X2+U2*t+1/2*Ax2*t^2;

Y1=Y1+V1*t+1/2*Ay1*t^2;
Y2=Y2+V2*t+1/2*Ay2*t^2;

Z1=Z1+W1*t+1/2*Az1*t^2;
Z2=Z2+W2*t+1/2*Az2*t^2;    

% 
% disp(P1.XData);
P1.XData=X1;
P1.YData=Y1;
P1.ZData=Z1;
% set(P1,'zdata',Z1);

P2.XData=X2;
P2.YData=Y2;
P2.ZData=Z2;
% set(P2,'zdata',Z2);


% hold off;
% plot3(X1,Y1,Z1,'x');
% hold on;
% plot3(X2,Y2,Z2,'o');
% axis([-10 10 -10 10 -10 10]);

drawnow;

end

