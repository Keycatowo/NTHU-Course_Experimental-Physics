function position=index2pos(index)
% 輸入一個一維向量
% 輸出一個矩陣
% 除了每個一維向量所表示位置為1以外其他元素全部為0
    n=length(index);
    position=zeros(n);
    for i=1:n
        position(index(i),i)=1;
    end
end
