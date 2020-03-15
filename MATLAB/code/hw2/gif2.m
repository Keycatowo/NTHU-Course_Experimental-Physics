for j=1:1000
    figure(j)
    regGeneralStar(79, j);
    title('3-12(b) 劉弘祥');
    hold on;
    frames(j)=getframe(gcf); %以getframe將每次的圖存進frames中
    close all;
end
dt=0.1; %設定每張圖的時間間隔，單位為秒
% 下方開始將每個獲取到的frame轉成影像，並寫一個一個的存進檔名為 move_pic_3_12_b.gif 的檔案中
for i=1:1000
    [image,map]=frame2im(frames(i));
    [im,map2]=rgb2ind(image,128);
    if i==1
        imwrite(im,map2,'move_pic_3_12_b.gif','gif','writeMode','overwrite','delaytime',dt,'loopcount',inf);
    else
        imwrite(im,map2,'move_pic_3_12_b.gif','gif','writeMode','append','delaytime',dt);
    end
end