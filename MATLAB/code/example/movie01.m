clear M					% �M���q�v��Ưx�} M
n = 100;					% ��� 50 �ӵe��
figure('Renderer','zbuffer');		% Only used in MS Windows
peaks;
fprintf('����e����...\n');
for i = 1:n
	view([-37.5+n*cos(i/n*2*pi)*360/n, sin(i/n*2*pi)*30]);	% �����[������
	M(i) = getframe;		% ����e���A�æs�J�q�v��Ưx�} M  
end
fprintf('����q�v��...\n');
movie(M, 3);				% ����q�v�T��