% code by owo 2018-11-23

function sum_up_to_1000()
    i=1;  %innitial i
    n=0;
    while(n<=1000)
        n=n+i;
        i=i+1;
    end
    fprintf('Using while:\tfrom 1 sum up to %d, the sum is %d.\n',i,n);
    
    n=0; %reset n
    for i=1:50
        n=n+i;
        if(n>1000)
            break;
        end
    end
    fprintf('Using for and if:\tfrom 1 sum up to %d, the sum is %d.\n',i,n);
end

        



