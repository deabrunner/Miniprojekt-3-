load snakecoord

s = 1:6;
se = linspace(1,6,100)

noT = [20:10:500];

xs=min(min(xsnake))-0.1;
xe=max(max(xsnake))+0.1;
ys=min(min(ysnake))-0.1;
ye=max(max(ysnake))+0.1;

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
movie(MV);
