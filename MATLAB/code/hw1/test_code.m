%% Hw1 
% 劉弘祥
% 106022103 
% 2018/11/26
%%
% 以上分別為各問題的code
%
% 以下為測試用程式主體：
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
% 請設計一個函數 index2pos.m，其用法如下：
% position = index2pos(index);
% 其中 index 是一個元素為正整數的向量，position 則是此函數的輸出矩陣，
% 其列數為 index 元素的最大值，行數則是 index 的元素個數，而且當 index(i) = j 時，
% position 的第 i 行中，只有第 j 個元素為 1，其餘為零。
%
% 以下為index2pos函式
%
% <include>index2pos.m</include> 
% 
% 以下為測試用函式
function []= test_1()
    fprintf('Here is the demo for problem：%s .\n','9-1-4');
    a=[2 1 3 5];    
    b=[2 7 1 1 5];
    
    disp('輸入為：');
    disp(a);
    disp('輸出為：');
    disp(index2pos(a));
    
    disp('輸入為：');
    disp(b);
    disp('輸出為：');
    disp(index2pos(b));
    
end

%% 10-2-1
% Palindrome: 「迴文」 (Palindrome) 在中文當中是指倒正著念
% 和反著念都相同的句子，前後對稱，例如「上海自來水來自海上」
% 。在英文當中是指正著看和反著看都相同的單字，例如「 madam 
% 」。請寫一個 MATLAB 函數，來決定所給定的字串是否是「迴文」。
%
% 以下為Palindrome回文函式
%
% <include>Palindrome.m</include> 
% 
% 
% 以下為測試用函式
function []=test_2()
    fprintf('Here is the demo for problem：%s .\n','10-2-1');
    a='madam';
    b='homework';
    c=[1 2 3 2 1];
    
    disp('輸入為：');
    disp(a);
    disp('輸出為：');
    disp(Palindrome(a));
    
    disp('輸入為：');
    disp(b);
    disp('輸出為：');
    disp(Palindrome(b));
    
    disp('輸入為：');
    disp(c);
    disp('輸出為：');
    disp(Palindrome(c));
    %順便測試一下Cell Arrays 是否可以判斷
    d=[a b a];
    disp('輸入為：');
    disp(d);
    disp('輸出為：');
    disp(Palindrome(d));
    %實際測試之後發現並不是以aba做判斷，而是合併之後判斷
    %若需要判斷aba可能需要用重載
    
end

%% 11-1-1
% 請寫一個簡短的程式getMdArray.m來建立一個3維矩陣A
%
% 以下為getMdArray建立矩陣函式
%
% <include>getMdArray.m</include> 
% 
% 
% 以下為測試用函式
function []=test_3()
    fprintf('Here is the demo for problem：%s .\n','11-1-1');
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
% 請寫一個 MATLAB 程式找出最小的 正整數 n 值，使得 A^(n+1)=A^n
% 此時n值為何
%
% 以下為min_value_times建立矩陣函式
%
% <include>min_value_times.m</include> 
% 
% 
% 以下為測試用函式
function []=test_4()
    fprintf('Here is the demo for problem：%s .\n','14-13');
    M=[0.3 0.1 0.2;0.2 0.7 0.4;0.5 0.2 0.4];
    n=min_value_times(M);
    disp('A為：');
    format bank;
    disp(M);
    fprintf('最小的n值為%d.\n此時的A^n和A^n+1為\n',n);
    format long;
    disp(M^n);
    format;
    
  
end

%% 15-16
% 撰寫一函式 quadzero01.m，其輸出入的格式如下：
%   root = quadzero01(coef)
% 其中 coef 是一個 3x1 的向量，代表一個一元二次方程式的係數（降冪排列）
% ，而 root 則是此方程式的根所形成的向量。若 coef(1) 不是零，則 roots 
% 的長度為二。若 coef(1) 是零，則可能有一解（root 的長度為一）或無解
% （root為空矩陣）。
%
% 以下為quadzero01建立矩陣函式
%
% <include>quadzero01.m</include> 
% 
% 
% 以下為測試用函式
function []=test_5()
    fprintf('Here is the demo for problem：%s .\n','15-16');
    a=[0 0 1];
    b=[0 2 4];
    c=[1 -2 1];
    d=[1 -5 6];
    
    disp('係數：');
    disp(a);
    disp('根為：');
    disp(quadzero01(a));
    
    disp('係數：');
    disp(b);
    disp('根為：');
    disp(quadzero01(b));
    
    disp('係數：');
    disp(c);
    disp('根為：');
    disp(quadzero01(c));
    
    disp('係數：');
    disp(d);
    disp('根為：');
    disp(quadzero01(d));

  
end

%% 16-9
% 給定一向量 A，請寫一段程式 useIf01.m，利用 if-then-else 指令來依元素值不同 而印出不同訊息
%
% 以下為uself01建立矩陣函式
%
% <include>uself01.m</include> 
% 
% 
% 以下為測試用函式
function []=test_6()
    fprintf('Here is the demo for problem：%s .\n','16-9');
    A=randn(20,1)+(rand(20,1)>0.7)*sqrt(-1);
    
    disp('輸入為：');
    disp(A);
    disp('輸出為：');
    uself01(A);

  
end