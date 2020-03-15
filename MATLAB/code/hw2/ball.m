function h=ball(x0,y0,z0,r)
%     輸入四變數x0,y0,z0,r
%       前三變數表示圓心座標
%     	表示半徑
%       無輸出，產生一個上半球
    [x,y,z]=sphere;
    x=x(11:end,:)+x0;
    y=y(11:end,:)+y0;
    z=z(11:end,:)+z0;
    h=surf(x.*r,y.*r,z.*r);
    meshc(x.*r,y.*r,z.*r)
end

