x = 0:0.1:4*pi;
subplot(3, 3, 2); plot(x, sin(x));		% 此為左上角圖形
subplot(3, 3, 4); plot(x, cos(x));		% 此為右上角圖形    	
subplot(3, 3, 6); plot(x, sin(x).*exp(-x/5));	% 為左下角圖形
subplot(3, 3, 8); plot(x, x.^2);		% 此為右下角圖形 
% subplot(14,1,14); plot(x,x);
