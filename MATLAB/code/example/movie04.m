x = 0:0.1:8*pi;
y=x.*0+12;
% plot(x,y)
h = plot(x,y, 'EraseMode', 'xor')
axis([-inf inf 10 15]);			% �]�w�϶b���d��
grid on					% �e�X��u
tic
for i = 1:5000
%     x=cos(i/5000)
	y = x.*0+12+sin(2*pi/500*i)
%     plot(x,y);
    set(h,'ydata',y);
% 	set(h, 'ydata', y,'xdata',x);		% �]�w�s�� y �y��
	drawnow				% �ߧY�@��
end
toc