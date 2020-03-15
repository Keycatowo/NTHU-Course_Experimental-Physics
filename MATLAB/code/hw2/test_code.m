%% Hw2 
% �B����
% 106022103 
% 2018/11/30~12/6
%%
% �H�W���O���U���D��code
%
% �H�U�����եε{���D��G
function []= test_code_hw2()
    clear all;
         test_1();
         test_2();
         test_3();
         test_4();
         test_5();
         test_6();
         test_7();
         test_8();
end

%% 3-2-11
% �Шϥ� MATLAB ����ӫ��O�A���O�b����
% �W�e�X���۹ϡA�q���I�}�l�A�v���V�~¶���X���A
%
% �H�U��spiral�禡
%
% <include>spiral.m</include> 
% 
% �H�U�����եΨ禡
function []= test_1()
    fprintf('Here is the demo for problem�G%s .\n','3-2-11');
    
    r=[1 3];%�Z���A�i�ھڻݨD�ק�A���צ۾A��
    c=[2 6 10];%��ơA�i�ھڻݨD�ק�A���צ۾A��
    
    for i=1:length(r)
        for j=1:length(c)
            disp('��J��:');
            fprintf('�q0��%f���A��%f��\n',r(i),c(j));
            subplot(length(r),length(c),(i-1)*length(c)+j); spiral(r(i),c(j));
        end
    end
    
end
%% 3-2-12 (a)
% �ռg�@��� regGeneralStar(n, k)�A
% ��\�ର�e�X�@�Ӷ�ߦb (0, 0)�B�b
% �|�� 1 ����A�æb�ꤺ�e�X�@�Ӥ����P
% �ΡA�䤤�@���I��� 1+0*i�]�Ƽƪ�ܪk
% �^�A�U�@���I�h��� exp(i*2*pi*k/n)�A��
% �������C
%
% �H�U��regGeneralStar�禡
%
% <include>regGeneralStar.m</include> 
% 
% �H�U�����եΨ禡
function []= test_2()
    subplot(1,1,1);
    fprintf('Here is the demo for problem�G%s .\n','3-2-12-a');
    sample=[11,3];
    fprintf('regGeneralStar(%d,%d),���G�p�U',sample(1),sample(2));
    regGeneralStar(sample(1),sample(2));

end
%% 3-2-12 (b)
% �ӤW�A�I�sregGeneralStar(79,i)�q1��1000�A�ûs�@��GIF
% 
% �H�U���s�@GIF�ɵ{��
%
% <include>gif1.m</include>
%
% ���G��X�]�]�ɮ׹L�j�G�W�ǳs���^�G
% <https://imgur.com/2uNuAEr 106022103-3-2-12-b>


%% 4-2-2
% Use two MATLAB statements (or less)
% to plot a simple spiral of radius 1 along 
% the x-axis in a 3D space. The plot you 
% generated should be as close as possible to 
% the one shown next.
%
% �]���D�حn�D2�椺���X�ӡA�ҥH�N���t�~�gfunction�F
% �{���p�U�A�@�槹��
function []=test_3()
    plot3(1:0.01:12*pi,cos(1:0.01:12*pi),sin(1:0.01:12*pi))
end

%% 4-2-7
% Create a plot of dome�A�ϥ� cylinder �M colorbar
%
% �]���L�i�վ��J�ܼơA�G���t�~�gfunction�C
% �{���p�U�G
function []=test_4()
    hold off;
    [x,y,z]=sphere;%�s�@�@�Ӳy 
    x=x(11:end,:);%����W�b
    y=y(11:end,:);%
    z=z(11:end,:)+1;%
    surf(x,y,z)%ø�s�b�y
    hold on;
    cylinder%ø�s��W
    colorbar;
    hold off;
end

%% 5-6
% ���]���@��y�b�|��1�A��ߦb (0,0,0)
% ,�յe�X����y���W�b�������ϡA�ñN��30
% �������u�P�ɵe�b�������U��C
%
% �]���L�i�վ��J�ܼơA�G���t�~�gfunction�C
% �{���p�U�G
function []=test_5()
    [x,y,z]=sphere;
    x=x(11:end,:);
    y=y(11:end,:);
    z=z(11:end,:);
    %�]���b�P�@�ӹϩ��i���Ϥ����ɭԤ����[��A�G���}ø�s
    subplot(1,2,1);mesh(x,y,z);
    title('�b�y');
    subplot(1,2,2);meshc(x,y,z,30);
    title('�����u');
end

%% 6-2-2
% �H����覡���Ͱʵe�A�e�{�@�Ӥp��]�b�|�� 1�^
% �b�@�Ӥj��]�b�|�� 5�^����P�~���u�ʪ��ʵe�A
% �õe�X�p���P���@�I�ҧΦ����u�~����ä�u�v�C
%
% �H�U��Hypocycloid�禡
%
% <include>Hypocycloid.m</include> 
% 
% �H�U�����եΨ禡
function []=test_6()
    subplot(1,2,1); Hypocycloid(3,1);
    title('R=3,r=1');
    subplot(1,2,2); Hypocycloid(5,1);
    title('R=5,r=1');
    clean(1000);
end
%% 6-2-5
% �ɤl�I���ʵe: �T�Ӷ��]�b�|��1�^�b�@������� 10
% ����Τ��i��I���A���]�o�T�Ӷ�骺�t�פ@�ˡ]���O
% �C��10���^�A��q�]�@�ˡA���B�ʤ�V�ζ}�l��m���O
% �ѶüƲ���
% 
% �]�{���������A�G�Ȥ��t�~�]�wfunction
% ���G��X�]�]�ɮ׹L�j�G�W�ǳs���^�G
% <https://imgur.com/LiWWdF1 106022103-6-2-5>
function[]=test_7()
    subplot(1,1,1);
    title('�ɤl�I�� 106022103');
    %�T�Ӷ��
    %��m�]x,y)
    %�t�� (Vx,Vy)
    x1=1+8*rand;
    y1=1+8*rand;
    while(1)
        x2=1+8*rand;
        y2=1+8*rand;
        if( ( (x1-x2)^2 + (y1-y2)^2 )>1 )
            break;
        end
    end
    while(1)
        x3=1+8*rand;
        y3=1+8*rand;
        if( ( (x1-x3)^2 + (y1-y3)^2 )>1 & ((x2-x3)^2 + (y2-y3)^2 )>1 )
            break;
        end
    end
    Vx1=rand;Vy1=rand;
    Vx2=2*rand;Vy2=2*rand;
    Vx3=rand;Vy3=rand;
    axis([0 10 0 10]);
%     fprintf('1:%f %f / %f %f\n2:%f %f / %f %f\n3:%f %f / %f %f\n',x1,y1,Vx1,Vy1,x2,y2,Vx2,Vy2,x3,y3,Vx3,Vy3);
    tspan=0.15;
    hold on;
    g1=plot(x1,y1,'B:.','EraseMode','xor');
     set(g1,'MarkerSize',15);
    g2=plot(x2,y2,'G:.','EraseMode','xor');
     set(g2,'MarkerSize',15);
    g3=plot(x3,y3,'k:.','EraseMode','xor');
     set(g3,'MarkerSize',15);
    
    for i=1:256
        x1=x1+Vx1*tspan;y1=y1+Vy1*tspan;
        x2=x1+Vx2*tspan;y2=y2+Vy2*tspan;
        x3=x1+Vx3*tspan;y3=y3+Vy3*tspan;
        %�B�z���1
        if(x1>=9) Vx1=-abs(Vx1);end
        if(y1>=9) Vy1=-abs(Vy1);end
        if(x1<=1) Vx1=abs(Vx1);end
        if(y1<=1) Vy1=abs(Vy1);end
        %�B�z���2
        if(x2>=9) Vx2=-abs(Vx2);end
        if(y2>=9) Vy2=-abs(Vy2);end
        if(x2<=1) Vx2=abs(Vx2);end
        if(y2<=1) Vy2=abs(Vy2);end
        %�B�z���3
        if(x3>=9) Vx3=-abs(Vx3);end
        if(y3>=9) Vy3=-abs(Vy3);end
        if(x3<=1) Vx3=abs(Vx3);end
        if(y3<=1) Vy3=abs(Vy3);end
        %�B�z�I��1 2
        if( ( (x1-x2)^2 + (y1-y2)^2 )<=1 )
            normal_vector=[x2 y2]-[x1 y1];
            unit_normal_vector = normal_vector./norm(normal_vector);
            unit_tangent_vector=[-unit_normal_vector(2) unit_normal_vector(1)];
            V1n=dot(unit_normal_vector,[Vx2 Vy2])*unit_normal_vector;
            V1t=dot(unit_tangent_vector,[Vx1 Vy1])*unit_tangent_vector;
            V2n=dot(unit_normal_vector,[Vx1 Vy1])*unit_normal_vector;
            V2t=dot(unit_tangent_vector,[Vx2 Vy2])*unit_tangent_vector;
            Vx1=V1n(1)+V1t(1);
            Vy1=V1n(2)+V1t(2);
            Vx2=V2n(1)+V2t(1);
            Vy2=V2n(2)+V2t(2);
            x1=x1+Vx1*tspan;y1=y1+Vy1*tspan;
            x2=x1+Vx2*tspan;y2=y2+Vy2*tspan;
        end
        %�B�z�I��1 3
        if( ( (x1-x3)^2 + (y1-y3)^2 )<=1 )
            normal_vector=[x3 y3]-[x1 y1];
            unit_normal_vector = normal_vector./norm(normal_vector);
            unit_tangent_vector=[-unit_normal_vector(2) unit_normal_vector(1)];
            V1n=dot(unit_normal_vector,[Vx3 Vy3])*unit_normal_vector;
            V1t=dot(unit_tangent_vector,[Vx1 Vy1])*unit_tangent_vector;
            V3n=dot(unit_normal_vector,[Vx1 Vy1])*unit_normal_vector;
            V3t=dot(unit_tangent_vector,[Vx3 Vy3])*unit_tangent_vector;
            Vx1=V1n(1)+V1t(1);
            Vy1=V1n(2)+V1t(2);
            Vx3=V3n(1)+V3t(1);
            Vy3=V3n(2)+V3t(2);
            x1=x1+Vx1*tspan;y1=y1+Vy1*tspan;
            x3=x1+Vx3*tspan;y3=y3+Vy3*tspan;
        end
        %�B�z�I��2 3
        if( ( (x3-x2)^2 + (y3-y2)^2 )<=1 )
            normal_vector=[x2 y2]-[x3 y3];
            unit_normal_vector = normal_vector./norm(normal_vector);
            unit_tangent_vector=[-unit_normal_vector(2) unit_normal_vector(1)];
            V3n=dot(unit_normal_vector,[Vx2 Vy2])*unit_normal_vector;
            V3t=dot(unit_tangent_vector,[Vx3 Vy3])*unit_tangent_vector;
            V2n=dot(unit_normal_vector,[Vx3 Vy3])*unit_normal_vector;
            V2t=dot(unit_tangent_vector,[Vx2 Vy2])*unit_tangent_vector;
            Vx3=V3n(1)+V3t(1);
            Vy3=V3n(2)+V3t(2);
            Vx2=V2n(1)+V2t(1);
            Vy2=V2n(2)+V2t(2);
            x3=x3+Vx3*tspan;y3=y3+Vy3*tspan;
            x2=x3+Vx2*tspan;y2=y2+Vy2*tspan;
        end
        
        
     set(g1,'xdata',x1,'ydata',y1);
     set(g2,'xdata',x2,'ydata',y2);
     set(g3,'xdata',x3,'ydata',y3);
    drawnow;
    frames(i)=getframe(gcf); 
    end
    %��Xgif��
    dt=0.1
    for i=1:256
    [image,map]=frame2im(frames(i));
    [im,map2]=rgb2ind(image,128);
    if i==1
        imwrite(im,map2,'move_pic_6_2_5.gif','gif','writeMode','overwrite','delaytime',dt,'loopcount',inf);
    else
        imwrite(im,map2,'move_pic_6_2_5.gif','gif','writeMode','append','delaytime',dt);
    end
end
    

    
    

end

%% 7-1-1
%  Display the nearest point: �мg�@�Ө��
%  showNearestPoint.m�A�i�e�X y=sin(x) ���ϧ�,�䤤
%  x ���d��O 0 �� 4*pi�C��ƹ��b�϶b���I��ɡA�A���{��
%  ������̪ܳ񪺸���I�A�ñN������I���y����ܦb MATLAB �R�O�������C
% �H�U��showNearestPoint�禡
%
% <include>showNearestPoint.m</include> 
% 
% �H�U�����եΨ禡
function test_8()
    showNearestPoint();
end













