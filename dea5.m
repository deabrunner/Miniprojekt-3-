clear all
load snakeendpoint

A = 5;
k = 3;
N = 100;

ds=1/N;
s=(0:N)*ds;
t=0;
res = [];
xmat =[];
ymat =[];

    for i=1:length(tthxy)
       t = tthxy(i,1);
       theta = tthxy(i,2) + (A/(k*pi))*((sin(k*pi*s + 2*pi*t)) - sin(2*pi*t));
       xvector=tthxy(i,3) + ds*cumtrapz(cos(theta));
       yvector=tthxy(i,4) + ds*cumtrapz(sin(theta));
       xmat(i,:) = xvector;
       ymat(i,:) = yvector;
    end

axis([-0.05 1.0 0.05 0.15]);
axis('image')
plot(xvector,yvector)


noT=length(tthxy);
clf;
xs=min(min(ymat))-0.1;
xe=max(max(xmat))+0.1;
ys=min(min(ymat))-0.1;
ye=max(max(xmat))+0.1;
clear MV;
for ti=1:noT
    hold off;
    plot(xmat(ti,:),ymat(ti,:),'k');
    axis('image');
    axis([xs xe ys ye]);
    axis('off');
    MV(ti)=getframe;
end;
movie(MV);