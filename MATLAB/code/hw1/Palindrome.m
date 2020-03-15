function is_Palindrome=Palindrome(index)
% 耞耞ㄧΑ
% 块秖
% 眖繷ЮㄌΩ耞琌单璝ㄤいΤぃ单玥跌ぃ单
    n=length(index);
    is_Palindrome='Yes,it is palindrome.';
    for i=1:n
        if index(i)~=index(n+1-i)
            is_Palindrome='Nope,it is not palindrome.';
            break;
        end
%   硉纔て盢耞nэ耞n+1/2
%   计ぃ薄猵紇臫ぃ
end
    
        