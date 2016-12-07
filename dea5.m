clear all
load snakeendpoint

N = 50;

ds=1/N;
s=(0:N)*ds;
xmat =[];
ymat =[];

    for i=1:length(tthxy)
       t = tthxy(i,1);

       
        theta1 = tthxy(i,2) + (A/(k*pi)*((sin(k*pi*s + 2*pi*t)) - sin(2*pi*t)));
        theta2 = tthxy(i,2) + (A/(k*pi)*((sin(k*pi*s + 2*pi*t)) - sin(2*pi*t)));

        xvector = [tthxy(i,3)];
        yvector = [tthxy(i,4)];
        xstart = tthxy(i,3);
        ystart = tthxy(i,4);
        xres = [];
        yres = [];
        for j=1:N
            xvector=xstart+((ds/2)*(cos((theta1(j)))+cos(theta1(j+1))));
            yvector=ystart+((ds/2)*(sin((theta2(j)))+sin(theta2(j+1))));
            xmat(i,j) = yvector;
            ymat(i,j) = xvector;
            xstart = xvector;
            ystart = yvector;
        end
    end

fyrat = [50, 200, 350, 490]

for i=1:4
    plot(xmat(fyrat(i),:),ymat(fyrat(i),:))
    hold on
end


axis([0 3.0 0 3.0]);
figure;
noT=length(tthxy);
clf;
xs=min(min(ymat))-0.1;
xe=max(max(xmat))+0.1;
ys=min(min(ymat))-0.1;
ye=max(max(xmat))+0.1;
clear MV;
for ti=1:noT
    hold off;
    plot(xmat(ti,:),ymat(ti,:));
    axis('image');
    axis([xs xe ys ye]);
    axis('off');
    MV(ti)=getframe;
end;
movie(MV);