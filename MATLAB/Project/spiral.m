function graph=spiral(r,c)
%     產生螺旋線圈的函式
%     r表示從原點開始到最後走的長度
%     c表示走的圈數
%     no return
    a=linspace(0,r,1000);
    b=linspace(0,2*pi*c,1000);
    graph=polar(b,a);

end