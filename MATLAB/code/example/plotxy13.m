x = 0:0.1:4*pi;
subplot(3, 3, 2); plot(x, sin(x));		% �������W���ϧ�
subplot(3, 3, 4); plot(x, cos(x));		% �����k�W���ϧ�    	
subplot(3, 3, 6); plot(x, sin(x).*exp(-x/5));	% �����U���ϧ�
subplot(3, 3, 8); plot(x, x.^2);		% �����k�U���ϧ� 
% subplot(14,1,14); plot(x,x);
