x = 0:0.1:4*pi;                     % x 向量的起始與結束元素為 0 及 
                                    % 4π、0.1 為各元素相差值  
y = sin(x);  
plot(x, y);  
axis([-inf, 8, 0, 1]);	    % 畫出正弦波 y 軸介於 0 
% plot(x, y);            % 和 1 的部份
h=plot(x,y);
set(h, 'Linewidth', 3);	
plot(x,y)
set