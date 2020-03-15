function showNearestPoint(action)

if nargin<1, action='start'; end
switch(action)
	case 'start'	% �}�ҹϧε���
 		set(gcf, 'WindowButtonDownFcn', 'showNearestPoint down');
        q=linspace(0,4*pi);
        hold off;
        plot(q,sin(q));
        axis([-inf inf -inf inf]);
    case 'down'
        % �]�w�ƹ����ʮɪ��������O���ushowNearestPoint move�v
		set(gcf, 'WindowButtonMotionFcn', 'showNearestPoint move');
		% �]�w�ƹ����s�Q����ɪ��������O���ushowNearestPoint up�v
		set(gcf, 'WindowButtonUpFcn', 'showNearestPoint up');
        C=get(gca,'CurrentPoint');%���o�ƹ��y��
        d=1000;%�]�w�@�ܤj����l�Z���@���P�_�з�
        q=linspace(0,4*pi,1000);
        %�H�U�P�_�̪��I
            for i=1:1000
                if(((q(i)-C(1))^2+(sin(q(i))-C(3))^2)<d^2)
                    d=sqrt((q(i)-C(1))^2+(sin(q(i))-C(3))^2);
                    x=q(i);
                    y=sin(q(i));
                end
            end
        %ø�s�̪��I
        hold on;
        plot(x,y,'x');
        hold off;
        %��ܤ�r
        fprintf('�ƹ���m���G%f %f\n�̪��I���G%f %f\n\n',C(1),C(3),x,y);

end

