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
    
    hold on;
    r=[1 3 7];%�Z���A�i�ھڻݨD�ק�A���צ۾A��
    c=[20 10];%��ơA�i�ھڻݨD�ק�A���צ۾A��
    
    for i=1:length(r)
        for j=1:length(c)
            disp('��J��:');
            fprintf('�q0��%f���A��%f��\n',r(i),c(j));
            spiral(r(i),c(j));
        end
    end
    hold off;
    
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
    fprintf('Here is the demo for problem�G%s .\n','3-2-12-a');
    sample=[11,3];
    fprintf('regGeneralStar(%d,%d),���G�p�U',sample(1),sample(2));
    regGeneralStar(sample(1),sample(2));

end
%% 3-2-12 (b)
% �ӤW�A�I�sregGeneralStar(79,i)�q1��1000�A�ûs�@��GIF
% 
% ���G��X�]�]�ɮ׹L�j�G�W�ǳs���^�G
% <https://imgur.com/2uNuAEr>


%% 4-2-2
% Use two MATLAB statements (or less)
% to plot a simple spiral of radius 1 along 
% the x-axis in a 3D space. The plot you 
% generated should be as close as possible to 
% the one shown next.
%

function []=test_3()
    plot3(1:0.0001:40*pi,cos(1:0.0001:40*pi),sin(1:0.0001:40*pi))
end

%% 4-2-7
% Create a plot of dome�A�ϥ� cylinder �M colorbar
%

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
    meshc(x,y,z,30);
    
end

%% 6-2-2

%% 6-2-5

%% 7-1-1
 















