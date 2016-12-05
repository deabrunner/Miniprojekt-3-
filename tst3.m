load snakecoord
clear all
close all
s = 1:6;
se = linspace(0,1,100)

% noT = [40 80 120 160];

xs=0
xe=1
ys=-0.2
ye=1

for ti=1:noT
    hold off;
    gx =interp1(s,xsnake(ti,:),se,'spline');
    gy =interp1(s,ysnake(ti,:),se,'spline');
    px = xsnake(ti,:);
    py = ysnake(ti,:);
    plot(gy,gx,'k');
    hold on
    plot(py,px,'o')
    axis('image');
    axis([xs xe ys ye]);
    axis('off');
    MV(ti)=getframe;
end

