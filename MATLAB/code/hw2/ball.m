function h=ball(x0,y0,z0,r)
%     ��J�|�ܼ�x0,y0,z0,r
%       �e�T�ܼƪ�ܶ�߮y��
%     	��ܥb�|
%       �L��X�A���ͤ@�ӤW�b�y
    [x,y,z]=sphere;
    x=x(11:end,:)+x0;
    y=y(11:end,:)+y0;
    z=z(11:end,:)+z0;
    h=surf(x.*r,y.*r,z.*r);
    meshc(x.*r,y.*r,z.*r)
end

