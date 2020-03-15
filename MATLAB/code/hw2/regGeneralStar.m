function graph=regGeneralStar(n,k)
%     繪製一個圓心在（0，0），半徑為1的圓
%     並在圓內部畫一個內接星形
    plot(1,1);
    hold on;
    Q=linspace(0,2*pi,200);%建立0到2pi的數據
    plot(cos(Q),sin(Q));%繪製單位圓
    
    for i=1:n
        R(i)=2*pi*k/n*i; %建立角度序列 長度n
    end
    plot(cos(R),sin(R)); %繪製星星
    
    hold off;
end
