load snakecoord;
%%xsnake and ysnake of sizes noT x (N+1).
noT=size(xsnake,1);
clf;
xs=min(min(xsnake))-0.1;
xe=max(max(xsnake))+0.1;
ys=min(min(ysnake))-0.1;
ye=max(max(ysnake))+0.1;
clear MV;
for ti=1:noT
    hold off;
    plot(xsnake(ti,:),ysnake(ti,:),'k');
    axis('image');
    axis([xs xe ys ye]);
    axis('off');
    MV(ti)=getframe;
end;
movie(MV);