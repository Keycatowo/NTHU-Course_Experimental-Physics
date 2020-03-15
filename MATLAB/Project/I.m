function []=I(L,d,landa)
I0=(1.00054*3*10^8/2)*(6.626069934*10^(-34)*3*10^8/landa)^2;
% 1.00054���Ů�q�e�v
% 6.626069934*10^(-34)�����ԧJ�`��
theta=linspace(-0.01,0.01,1000);
l=I0*(sinc(d*pi.*sin(theta)/(landa*10^-9))).^2;

% theta ��g�I�P�U�_���I�s�u������u������(-pi/2~pi/2)
% d �U�_�e
% landa ���i��
% I �T�ӫ�
x=L*tan(theta);
plot(x,l)
set(gca,'XLim',[-0.005 0.005])
end

