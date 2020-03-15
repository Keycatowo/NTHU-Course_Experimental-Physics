function n=min_value_times(matrix)
%     輸入一矩陣matrix
%     判斷最小正整數N，使得矩陣的N次和N+1次方為相等
%     輸出N
    matrix_n=matrix;
    I=zeros(3)+1;
    for i=1:1000;
        if (isequal(matrix^i,matrix^(i+1)))
            n=i;
            break;
        else
            matrix_n=matrix_n*matrix;
        end
    end
%     速度優化：每次都計算一次n次方為O（n^2)
%     可改善成多增開一個matrix 來回相乘避免重複計算
%     可改善成O（n）
end
