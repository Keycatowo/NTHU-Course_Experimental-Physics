function []=uself01(index)
%     輸入一個向量，依次呼叫判斷函數judge
%     依次印出結果
    for k=1:length(index)
        fprintf('A(%d) = ',k);
        judge(index(k));
    end
    
end


function []=judge(number)
%     判斷輸入number為複數或是正負零，並印出其結果
    if ~isreal(number)
        fprintf('%f+(%f)i是複數\n',real(number),imag(number));
    else if (number==0)
            fprintf('%f是零\n',number);
        else
            switch (number/abs(number))
                case {1}
                    fprintf('%f是正數\n',number);
                case {-1}
                    fprintf('%f是負數\n',number);
            end
        end
    end
    
        
end