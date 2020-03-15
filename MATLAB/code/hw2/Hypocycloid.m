function Hypocycloid(R,r)
    q=linspace(0,2*pi);
    N=r/gcd(r,R);
    plot(R*cos(q),R*sin(q));%draw the big circle
    title('106022103');
    axis([-1.5*(R+r) 1.5*(R+r) -1.5*(R+r) 1.5*(R+r)]);%讓圖在範圍內
    hold on;
    %%make the small circle
    x=r*cos(q);
    y=r*sin(q);
    h=plot(x,y,'EraseMode','xor');
    %
    m=0;
    n=0;
    g=plot(m,n,'EraseMode','xor');
    
    for i=0:1000
        %動圓
        a=x+(R+r)*cos(2*pi/1000*i*N);
        b=y+(R+r)*sin(2*pi/1000*i*N);
        set(h,'xdata',a,'ydata',b);
        %花瓣線        
        m=(R+r)*cos(q*i/1000*N)+r*cos((R)/r*q*i/1000*N);
        n=(R+r)*sin(q*i/1000*N)+r*sin((R)/r*q*i/1000*N);
        set(g,'xdata',m,'ydata',n);
        
        drawnow;%繪圖
        
    end


end

