function root = quadzero01(coef)
%     �Ѥ@���G����{������
%     ��J���@1*3�V�q ���O��ܤG���B�@���B�M�`�ƶ����Y��
%     �Y�L�� ��X�ŦV�q
%     �Y�D�G����{�����@���� ��X�]�t�@�Ӥ������V�q
%     �Y���G����{���A�h��X��ѡ]�]�t�ƼƸѡ^
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