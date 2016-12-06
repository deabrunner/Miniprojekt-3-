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
    for i=tthxy(:,1)
       theta = tthxy(i,1) + (A/(k*pi))*((sin(k*pi*s + 2*pi*t)) - sin(2*pi*t));
       xvector=ds*cumtrapz(cos(theta));
       yvector=ds*cumtrapz(sin(theta));
       xmat(i,:) = xvector;
       ymat(i,:) = yvector;
    end

axis([-0.05 1.0 0.05 0.15]);
axis('image')
plot(xvector,yvector)