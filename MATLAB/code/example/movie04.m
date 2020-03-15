x = 0:0.1:8*pi;
y=x.*0+12;
% plot(x,y)
h = plot(x,y, 'EraseMode', 'xor')
axis([-inf inf 10 15]);			% 設定圖軸的範圍
grid on					% 畫出格線
tic
for i = 1:5000
%     x=cos(i/5000)
	y = x.*0+12+sin(2*pi/500*i)
%     plot(x,y);
    set(h,'ydata',y);
% 	set(h, 'ydata', y,'xdata',x);		% 設定新的 y 座標
	drawnow				% 立即作圖
end
toc