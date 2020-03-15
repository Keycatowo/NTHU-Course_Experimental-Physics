function []=dome()
    hold off;
    [x,y,z]=sphere;
    x=x(11:end,:);
    y=y(11:end,:);
    z=z(11:end,:)+1;
    surf(x,y,z)
    hold on;
    cylinder
    colorbar;
    hold off;
end