for j=1:1000
    figure(j)
    regGeneralStar(79, j);
    title('3-12(b) �B����');
    hold on;
    frames(j)=getframe(gcf); %�Hgetframe�N�C�����Ϧs�iframes��
    close all;
end
dt=0.1; %�]�w�C�i�Ϫ��ɶ����j�A��쬰��
% �U��}�l�N�C������쪺frame�ন�v���A�üg�@�Ӥ@�Ӫ��s�i�ɦW�� move_pic_3_12_b.gif ���ɮפ�
for i=1:1000
    [image,map]=frame2im(frames(i));
    [im,map2]=rgb2ind(image,128);
    if i==1
        imwrite(im,map2,'move_pic_3_12_b.gif','gif','writeMode','overwrite','delaytime',dt,'loopcount',inf);
    else
        imwrite(im,map2,'move_pic_3_12_b.gif','gif','writeMode','append','delaytime',dt);
    end
end