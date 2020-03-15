function root = quadzero01(coef)
%     解一元二次方程式的解
%     輸入為一1*3向量 分別表示二次、一次、和常數項的係數
%     若無解 輸出空向量
%     若非二次方程式有一次解 輸出包含一個元素的向量
%     若為二次方程式，則輸出其解（包含複數解）
   switch coef(1)
       case {0}
           if((coef(2)==0)&(coef(3)~=0))
               root=[];
           else
               root=[-coef(3)/coef(2)];
           end
       otherwise
           root=[coef(2) coef(2)].^2-(4*[coef(1) coef(1)].*[coef(3) coef(3)]);%b^2-4ac
           root=root.^(1/2);%sqrt(b^2-4ac)
           root=root.*[1 -1];%+-sqrt(b^2-4ac)
           root=root-coef(2);%-b+-sqrt(b^2-4ac)
           root=root/(2*coef(1));%(-b+-sqrt(b^2-4ac))/2a
   end
   
 
end