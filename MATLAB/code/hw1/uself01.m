function []=uself01(index)
%     ��J�@�ӦV�q�A�̦��I�s�P�_���judge
%     �̦��L�X���G
    for k=1:length(index)
        fprintf('A(%d) = ',k);
        judge(index(k));
    end
    
end


function []=judge(number)
%     �P�_��Jnumber���ƼƩάO���t�s�A�æL�X�䵲�G
    if ~isreal(number)
        fprintf('%f+(%f)i�O�Ƽ�\n',real(number),imag(number));
    else if (number==0)
            fprintf('%f�O�s\n',number);
        else
            switch (number/abs(number))
                case {1}
                    fprintf('%f�O����\n',number);
                case {-1}
                    fprintf('%f�O�t��\n',number);
            end
        end
    end
    
        
end