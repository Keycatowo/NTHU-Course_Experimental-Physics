function is_Palindrome=Palindrome(index)
% 判斷判斷函式
% 輸入一個向量
% 從頭尾依次判斷是否相等，若其中有一不相等的則視為不相等
    n=length(index);
    is_Palindrome='Yes,it is palindrome.';
    for i=1:n
        if index(i)~=index(n+1-i)
            is_Palindrome='Nope,it is not palindrome.';
            break;
        end
%   速度優化：可將判斷n個改為判斷到一半n+1/2即可
%   但個數不多情況下影響不大
end
    
        