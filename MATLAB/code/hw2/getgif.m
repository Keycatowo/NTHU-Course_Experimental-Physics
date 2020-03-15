h=figure;
axis tight manual
filename='test.gif';
for i=1:1000
	regGeneralStar(79, i);
	drawnow
    freame=getframe(h);
    im=frame2im(frame);
    [imind,cm] = rgb2ind(im,256);
    if n == 1 
          imwrite(imind,cm,filename,'gif', 'Loopcount',inf); 
      else 
          imwrite(imind,cm,filename,'gif','WriteMode','append'); 
      end 
end