function []=I(L,d,landa)
I0=(1.00054*3*10^8/2)*(6.626069934*10^(-34)*3*10^8/landa)^2;
% 1.00054為空氣電容率
% 6.626069934*10^(-34)為普朗克常數
theta=linspace(-0.01,0.01,1000);
l=I0*(sinc(d*pi.*sin(theta)/(landa*10^-9))).^2;

% theta 投射點與狹縫中點連線跟水平線的夾角(-pi/2~pi/2)
% d 狹縫寬
% landa 光波長
% I 幅照度
x=L*tan(theta);
plot(x,l)
set(gca,'XLim',[-0.005 0.005])
end

