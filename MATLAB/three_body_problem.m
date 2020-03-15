% three body problem :)

clear all
clc
close all

%basic variables
ht=sqrt(3)/2*50;
htc=(100-ht)/2;


%sufri=input('friction value??  ')

%%  defining axis

ax = axes('XLim',[0 100],'YLim',[0 100],'ZLim',[-1.5 1.5]);
view(3);
grid off;
axis equal;

[Xg,Yg] = meshgrid(0:5:100,0:5:100);                                
Zg =.00001*Xg+.0001*Yg;                                        
surf(Xg,Yg,Zg)
colormap white
axis equal

set(gcf,'Color','white')

scrsz = get(0,'ScreenSize');
set(gcf,'Position',[scrsz(1) scrsz(2)+scrsz(4)/20 scrsz(3) scrsz(4)*17/20]);



%% moving object codes


[xt,yt,zt] = sphere(20);


%defines shape of moving objects
h(1) = surface(3*xt,-3*yt,3*zt+1,'FaceColor','red');

hh(1) = surface(3*xt,-3*yt,3*zt+1,'FaceColor','blue');

hhh(1) = surface(3*xt,-3*yt,3*zt+1,'FaceColor','black');


t1 = hgtransform('Parent',ax);
set(hh,'Parent',t1)
set(gcf,'Renderer','opengl')

t2 = hgtransform('Parent',ax);
set(hhh,'Parent',t2)
set(gcf,'Renderer','opengl')

t3 = hgtransform('Parent',ax);
set(h,'Parent',t3)
set(gcf,'Renderer','opengl')

drawnow


%% moving codes


%counting down
for i=1

    d=text(70,20,30,'\fontsize{25} {\color{red}3}');
    pause(1)
    delete(d)
    d=text(70,20,30,'\fontsize{25} {\color{red}2}');
    pause(1)
    delete(d)
    d=text(70,20,30,'\fontsize{25} {\color{green}1}');
    pause(1)
    delete(d)
end




x1=75+15;
y1=htc+8;
vx1=0;
vy1=0;

x2=50+10;
y2=htc+ht-14;
vx2=0;
vy2=0;

x3=25;
y3=htc+11;
vx3=0;
vy3=0;

c=5000;
dt=.005;
i=1;
zbea=0;
for i=1:3000
 
   
    
%1
r12=sqrt((x2-x1)^2+(y2-y1)^2);
r13=sqrt((x3-x1)^2+(y3-y1)^2);

dv12=c/r12.^2*dt;
dv13=c/r13.^2*dt;

vx1=vx1+dv12*(x2-x1)/r12+dv13*(x3-x1)/r13;
vy1=vy1+dv12*(y2-y1)/r12+dv13*(y3-y1)/r13;

x1=x1+vx1*dt;
y1=y1+vy1*dt;



%2
r23=sqrt((x3-x2)^2+(y3-y2)^2);

dv21=c/r12.^2*dt;
dv23=c/r23.^2*dt;

vx2=vx2+dv21*(x1-x2)/r12+dv23*(x3-x2)/r23;
vy2=vy2+dv21*(y1-y2)/r12+dv23*(y3-y2)/r23;

x2=x2+vx2*dt;
y2=y2+vy2*dt;



%3

dv31=c/r13.^2*dt;
dv32=c/r23.^2*dt;

vx3=vx3+dv31*(x1-x3)/r13+dv32*(x2-x3)/r23;
vy3=vy3+dv31*(y1-y3)/r13+dv32*(y2-y3)/r23;

x3=x3+vx3*dt;
y3=y3+vy3*dt;



trans1=makehgtform('translate',[x1 y1 0]);
rotz1=makehgtform('zrotate',zbea);

trans2=makehgtform('translate',[x2 y2 0]);
rotz2=makehgtform('zrotate',zbea);

trans3=makehgtform('translate',[x3 y3 0]);
rotz3=makehgtform('zrotate',zbea);


set(t1,'matrix',trans1*rotz1);
set(t2,'matrix',trans2*rotz2);
set(t3,'matrix',trans3*rotz3);

pause(.005)

end
