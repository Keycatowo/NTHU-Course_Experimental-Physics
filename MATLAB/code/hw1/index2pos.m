function position=index2pos(index)
% ��J�@�Ӥ@���V�q
% ��X�@�ӯx�}
% ���F�C�Ӥ@���V�q�Ҫ�ܦ�m��1�H�~��L����������0
    n=length(index);
    position=zeros(n);
    for i=1:n
        position(index(i),i)=1;
    end
end
