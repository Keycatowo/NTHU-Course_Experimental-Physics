A=[14.20 13.57 12.09 10.82 10.10];
B=[0.00756+0.00056 0.00756+0.00104 0.00756+0.00104*2 0.00756+0.00104*3 0.00756+0.00104*3+0.00056];
ZERO=15;
y=B*9.8;
x=(15-A)/100;
fit=polyfit(x,y,1)
corrcoef(x,y)

xfit=[x(1):0.001:x(5)];on
yfit=fit(1)*xfit+fit(2);
plot(x,y,'r*',xfit,yfit);
set(gca,'XTick',0.00:0.05:0.06);
set(gca,'YTick',0.06:0.01:0.12);
set(gca,'XLim',[0.00,0.06]);
set(gca,'YLim',[0.06,0.12])
