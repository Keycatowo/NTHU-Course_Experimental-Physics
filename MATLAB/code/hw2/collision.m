
%三個圓圈
    %位置（x,y)
    %速度 (Vx,Vy)
    x1=1+8*rand;
    y1=1+8*rand;
    while(1)
        x2=1+8*rand;
        y2=1+8*rand;
        if( ( (x1-x2)^2 + (y1-y2)^2 )>1 )
            break;
        end
    end
    while(1)
        x3=1+8*rand;
        y3=1+8*rand;
        if( ( (x1-x3)^2 + (y1-y3)^2 )>1 & ((x2-x3)^2 + (y2-y3)^2 )>1 )
            break;
        end
    end
    Vx1=rand;Vy1=rand;
    Vx2=2*rand;Vy2=2*rand;
    Vx3=rand;Vy3=rand;
    axis([0 10 0 10]);
    fprintf('1:%f %f / %f %f\n2:%f %f / %f %f\n3:%f %f / %f %f\n',x1,y1,Vx1,Vy1,x2,y2,Vx2,Vy2,x3,y3,Vx3,Vy3);
    tspan=0.15;
    hold on;
    g1=plot(x1,y1,'B:.','EraseMode','xor');
     set(g1,'MarkerSize',15);
    g2=plot(x2,y2,'G:.','EraseMode','xor');
     set(g2,'MarkerSize',15);
    g3=plot(x3,y3,'k:.','EraseMode','xor');
     set(g3,'MarkerSize',15);
    
    for i=1:256
        x1=x1+Vx1*tspan;y1=y1+Vy1*tspan;
        x2=x1+Vx2*tspan;y2=y2+Vy2*tspan;
        x3=x1+Vx3*tspan;y3=y3+Vy3*tspan;
        if(x1>=9) Vx1=-abs(Vx1);end
        if(y1>=9) Vy1=-abs(Vy1);end
        if(x1<=1) Vx1=abs(Vx1);end
        if(y1<=1) Vy1=abs(Vy1);end
        
        if(x2>=9) Vx2=-abs(Vx2);end
        if(y2>=9) Vy2=-abs(Vy2);end
        if(x2<=1) Vx2=abs(Vx2);end
        if(y2<=1) Vy2=abs(Vy2);end
        
        if(x3>=9) Vx3=-abs(Vx3);end
        if(y3>=9) Vy3=-abs(Vy3);end
        if(x3<=1) Vx3=abs(Vx3);end
        if(y3<=1) Vy3=abs(Vy3);end
           
%         if( ( (x1-x2)^2 + (y1-y2)^2 )<=1 )
%             Vre =[x1 y1]-[x2 y2];
%             Vpre=dot([Vx1 Vy1],Vre)/norm(Vre);
%             Vvir=((norm([Vx1 Vy1]))^2-Vpre^2)^(1/2);
%             Vx1=-Vre(1)*Vpre/norm(Vre)+Vre(2)*Vvir/norm(Vre);
%             Vy1=-Vre(2)*Vpre/norm(Vre)-Vre(1)*Vvir/norm(Vre);
%             Vre =-Vre;
%             Vpre=dot([Vx2 Vy2],Vre)/norm(Vre);
%             Vvir=((norm([Vx2 Vy2]))^2-Vpre^2)^(1/2);
%         end


        if( ( (x1-x2)^2 + (y1-y2)^2 )<=1 )
            normal_vector=[x2 y2]-[x1 y1];
            unit_normal_vector = normal_vector./norm(normal_vector);
            unit_tangent_vector=[-unit_normal_vector(2) unit_normal_vector(1)];
            V1n=dot(unit_normal_vector,[Vx2 Vy2])*unit_normal_vector;
            V1t=dot(unit_tangent_vector,[Vx1 Vy1])*unit_tangent_vector;
            V2n=dot(unit_normal_vector,[Vx1 Vy1])*unit_normal_vector;
            V2t=dot(unit_tangent_vector,[Vx2 Vy2])*unit_tangent_vector;
            Vx1=V1n(1)+V1t(1);
            Vy1=V1n(2)+V1t(2);
            Vx2=V2n(1)+V2t(1);
            Vy2=V2n(2)+V2t(2);
            x1=x1+Vx1*tspan;y1=y1+Vy1*tspan;
            x2=x1+Vx2*tspan;y2=y2+Vy2*tspan;
        end
        if( ( (x1-x3)^2 + (y1-y3)^2 )<=1 )
            normal_vector=[x3 y3]-[x1 y1];
            unit_normal_vector = normal_vector./norm(normal_vector);
            unit_tangent_vector=[-unit_normal_vector(2) unit_normal_vector(1)];
            V1n=dot(unit_normal_vector,[Vx3 Vy3])*unit_normal_vector;
            V1t=dot(unit_tangent_vector,[Vx1 Vy1])*unit_tangent_vector;
            V3n=dot(unit_normal_vector,[Vx1 Vy1])*unit_normal_vector;
            V3t=dot(unit_tangent_vector,[Vx3 Vy3])*unit_tangent_vector;
            Vx1=V1n(1)+V1t(1);
            Vy1=V1n(2)+V1t(2);
            Vx3=V3n(1)+V3t(1);
            Vy3=V3n(2)+V3t(2);
            x1=x1+Vx1*tspan;y1=y1+Vy1*tspan;
            x3=x1+Vx3*tspan;y3=y3+Vy3*tspan;
        end
        if( ( (x3-x2)^2 + (y3-y2)^2 )<=1 )
            normal_vector=[x2 y2]-[x3 y3];
            unit_normal_vector = normal_vector./norm(normal_vector);
            unit_tangent_vector=[-unit_normal_vector(2) unit_normal_vector(1)];
            V3n=dot(unit_normal_vector,[Vx2 Vy2])*unit_normal_vector;
            V3t=dot(unit_tangent_vector,[Vx3 Vy3])*unit_tangent_vector;
            V2n=dot(unit_normal_vector,[Vx3 Vy3])*unit_normal_vector;
            V2t=dot(unit_tangent_vector,[Vx2 Vy2])*unit_tangent_vector;
            Vx3=V3n(1)+V3t(1);
            Vy3=V3n(2)+V3t(2);
            Vx2=V2n(1)+V2t(1);
            Vy2=V2n(2)+V2t(2);
            x3=x3+Vx3*tspan;y3=y3+Vy3*tspan;
            x2=x3+Vx2*tspan;y2=y2+Vy2*tspan;
        end
        
        
     set(g1,'xdata',x1,'ydata',y1);
     set(g2,'xdata',x2,'ydata',y2);
     set(g3,'xdata',x3,'ydata',y3);
    drawnow;
    frames(i)=getframe(gcf); 
    end
    dt=0.1
    for i=1:256
    [image,map]=frame2im(frames(i));
    [im,map2]=rgb2ind(image,128);
    if i==1
        imwrite(im,map2,'move_pic_6_2_5.gif','gif','writeMode','overwrite','delaytime',dt,'loopcount',inf);
    else
        imwrite(im,map2,'move_pic_6_2_5.gif','gif','writeMode','append','delaytime',dt);
    end
end
    

    
    