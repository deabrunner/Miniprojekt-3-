close all
clear all
load snakecoord

s = 1:6;
se = linspace(1,6,100)

noT = 40;

xs=0
xe=1
ys=-0.2
ye=1

hold off;
gx =interp1(s,xsnake(noT,:),se,'spline');
gy =interp1(s,ysnake(noT,:),se,'spline');
px = xsnake(noT,:);
py = ysnake(noT,:);
plot(gy,gx,'k');
hold on
plot(py,px,'o')
axis('image');
axis([xs xe ys ye]);
axis('off');
MV(ti)=getframe;





