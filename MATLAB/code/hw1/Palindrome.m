function is_Palindrome=Palindrome(index)
% �P�_�P�_�禡
% ��J�@�ӦV�q
% �q�Y���̦��P�_�O�_�۵��A�Y�䤤���@���۵����h�������۵�
    n=length(index);
    is_Palindrome='Yes,it is palindrome.';
    for i=1:n
        if index(i)~=index(n+1-i)
            is_Palindrome='Nope,it is not palindrome.';
            break;
        end
%   �t���u�ơG�i�N�P�_n�ӧאּ�P�_��@�bn+1/2�Y�i
%   ���ӼƤ��h���p�U�v�T���j
end
    
        