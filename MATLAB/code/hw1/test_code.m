%% Hw1 
% �B����
% 106022103 
% 2018/11/26
%%
% �H�W���O���U���D��code
%
% �H�U�����եε{���D��G
function []= test_code_hw1()
    clear all;
    test_1();
    test_2();
    test_3();
    test_4();
    test_5();
    test_6();
    
end

%% 9-1-4
% �г]�p�@�Ө�� index2pos.m�A��Ϊk�p�U�G
% position = index2pos(index);
% �䤤 index �O�@�Ӥ���������ƪ��V�q�Aposition �h�O����ƪ���X�x�}�A
% ��C�Ƭ� index �������̤j�ȡA��ƫh�O index �������ӼơA�ӥB�� index(i) = j �ɡA
% position ���� i �椤�A�u���� j �Ӥ����� 1�A��l���s�C
%
% �H�U��index2pos�禡
%
% <include>index2pos.m</include> 
% 
% �H�U�����եΨ禡
function []= test_1()
    fprintf('Here is the demo for problem�G%s .\n','9-1-4');
    a=[2 1 3 5];    
    b=[2 7 1 1 5];
    
    disp('��J���G');
    disp(a);
    disp('��X���G');
    disp(index2pos(a));
    
    disp('��J���G');
    disp(b);
    disp('��X���G');
    disp(index2pos(b));
    
end

%% 10-2-1
% Palindrome: �u�j��v (Palindrome) �b������O���˥��۩�
% �M�ϵ۩����ۦP���y�l�A�e���١A�Ҧp�u�W���ۨӤ��Ӧۮ��W�v
% �C�b�^����O�����۬ݩM�ϵ۬ݳ��ۦP����r�A�Ҧp�u madam 
% �v�C�мg�@�� MATLAB ��ơA�ӨM�w�ҵ��w���r��O�_�O�u�j��v�C
%
% �H�U��Palindrome�^��禡
%
% <include>Palindrome.m</include> 
% 
% 
% �H�U�����եΨ禡
function []=test_2()
    fprintf('Here is the demo for problem�G%s .\n','10-2-1');
    a='madam';
    b='homework';
    c=[1 2 3 2 1];
    
    disp('��J���G');
    disp(a);
    disp('��X���G');
    disp(Palindrome(a));
    
    disp('��J���G');
    disp(b);
    disp('��X���G');
    disp(Palindrome(b));
    
    disp('��J���G');
    disp(c);
    disp('��X���G');
    disp(Palindrome(c));
    %���K���դ@�UCell Arrays �O�_�i�H�P�_
    d=[a b a];
    disp('��J���G');
    disp(d);
    disp('��X���G');
    disp(Palindrome(d));
    %��ڴ��դ���o�{�ä��O�Haba���P�_�A�ӬO�X�֤���P�_
    %�Y�ݭn�P�_aba�i��ݭn�έ���
    
end

%% 11-1-1
% �мg�@��²�u���{��getMdArray.m�ӫإߤ@��3���x�}A
%
% �H�U��getMdArray�إ߯x�}�禡
%
% <include>getMdArray.m</include> 
% 
% 
% �H�U�����եΨ禡
function []=test_3()
    fprintf('Here is the demo for problem�G%s .\n','11-1-1');
    [data,years,type,class] = getMdArray();
    
    for i=1:2;
        disp(class(i));
        for j=1:3;
            fprintf('\t');
            disp(years(j));
            for k=1:4;
                fprintf('\t\t');
                disp(type(k));
                fprintf('\b\b');
                disp(data(j,k,i));
            end
        end
    end

end

%% 14-13
% �мg�@�� MATLAB �{����X�̤p�� ����� n �ȡA�ϱo A^(n+1)=A^n
% ����n�Ȭ���
%
% �H�U��min_value_times�إ߯x�}�禡
%
% <include>min_value_times.m</include> 
% 
% 
% �H�U�����եΨ禡
function []=test_4()
    fprintf('Here is the demo for problem�G%s .\n','14-13');
    M=[0.3 0.1 0.2;0.2 0.7 0.4;0.5 0.2 0.4];
    n=min_value_times(M);
    disp('A���G');
    format bank;
    disp(M);
    fprintf('�̤p��n�Ȭ�%d.\n���ɪ�A^n�MA^n+1��\n',n);
    format long;
    disp(M^n);
    format;
    
  
end

%% 15-16
% ���g�@�禡 quadzero01.m�A���X�J���榡�p�U�G
%   root = quadzero01(coef)
% �䤤 coef �O�@�� 3x1 ���V�q�A�N��@�Ӥ@���G����{�����Y�ơ]�����ƦC�^
% �A�� root �h�O����{�����کҧΦ����V�q�C�Y coef(1) ���O�s�A�h roots 
% �����׬��G�C�Y coef(1) �O�s�A�h�i�঳�@�ѡ]root �����׬��@�^�εL��
% �]root���ůx�}�^�C
%
% �H�U��quadzero01�إ߯x�}�禡
%
% <include>quadzero01.m</include> 
% 
% 
% �H�U�����եΨ禡
function []=test_5()
    fprintf('Here is the demo for problem�G%s .\n','15-16');
    a=[0 0 1];
    b=[0 2 4];
    c=[1 -2 1];
    d=[1 -5 6];
    
    disp('�Y�ơG');
    disp(a);
    disp('�ڬ��G');
    disp(quadzero01(a));
    
    disp('�Y�ơG');
    disp(b);
    disp('�ڬ��G');
    disp(quadzero01(b));
    
    disp('�Y�ơG');
    disp(c);
    disp('�ڬ��G');
    disp(quadzero01(c));
    
    disp('�Y�ơG');
    disp(d);
    disp('�ڬ��G');
    disp(quadzero01(d));

  
end

%% 16-9
% ���w�@�V�q A�A�мg�@�q�{�� useIf01.m�A�Q�� if-then-else ���O�Ө̤����Ȥ��P �ӦL�X���P�T��
%
% �H�U��uself01�إ߯x�}�禡
%
% <include>uself01.m</include> 
% 
% 
% �H�U�����եΨ禡
function []=test_6()
    fprintf('Here is the demo for problem�G%s .\n','16-9');
    A=randn(20,1)+(rand(20,1)>0.7)*sqrt(-1);
    
    disp('��J���G');
    disp(A);
    disp('��X���G');
    uself01(A);

  
end