function n=min_value_times(matrix)
%     ��J�@�x�}matrix
%     �P�_�̤p�����N�A�ϱo�x�}��N���MN+1���謰�۵�
%     ��XN
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
%     �t���u�ơG�C�����p��@��n���謰O�]n^2)
%     �i�ﵽ���h�W�}�@��matrix �Ӧ^�ۭ��קK���ƭp��
%     �i�ﵽ��O�]n�^
end
