function showNearestPoint(action)

if nargin<1, action='start'; end
switch(action)
	case 'start'	% 開啟圖形視窗
 		set(gcf, 'WindowButtonDownFcn', 'showNearestPoint down');
        q=linspace(0,4*pi);
        hold off;
        plot(q,sin(q));
        axis([-inf inf -inf inf]);
    case 'down'
        % 設定滑鼠移動時的反應指令為「showNearestPoint move」
		set(gcf, 'WindowButtonMotionFcn', 'showNearestPoint move');
		% 設定滑鼠按鈕被釋放時的反應指令為「showNearestPoint up」
		set(gcf, 'WindowButtonUpFcn', 'showNearestPoint up');
        C=get(gca,'CurrentPoint');%取得滑鼠座標
        d=1000;%設定一很大的初始距離作為判斷標準
        q=linspace(0,4*pi,1000);
        %以下判斷最近點
            for i=1:1000
                if(((q(i)-C(1))^2+(sin(q(i))-C(3))^2)<d^2)
                    d=sqrt((q(i)-C(1))^2+(sin(q(i))-C(3))^2);
                    x=q(i);
                    y=sin(q(i));
                end
            end
        %繪製最近點
        hold on;
        plot(x,y,'x');
        hold off;
        %顯示文字
        fprintf('滑鼠位置為：%f %f\n最近點為：%f %f\n\n',C(1),C(3),x,y);

end

