function graph=regGeneralStar(n,k)
%     ø�s�@�Ӷ�ߦb�]0�A0�^�A�b�|��1����
%     �æb�ꤺ���e�@�Ӥ����P��
    plot(1,1);
    hold on;
    Q=linspace(0,2*pi,200);%�إ�0��2pi���ƾ�
    plot(cos(Q),sin(Q));%ø�s����
    
    for i=1:n
        R(i)=2*pi*k/n*i; %�إߨ��קǦC ����n
    end
    plot(cos(R),sin(R)); %ø�s�P�P
    
    hold off;
end
