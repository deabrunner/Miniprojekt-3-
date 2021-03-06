clear all
load snakeendpoint

A = 5;
k = 3;
N = 100;

ds=1/N;
s=(0:N)*ds;
t=0;
theta1 = cos(A/(k*pi)*((sin(k*pi*s + 2*pi*t)) - sin(2*pi*t)));
theta2 = sin(A/(k*pi)*((sin(k*pi*s + 2*pi*t)) - sin(2*pi*t)));
xstart = 0;
ystart = 0;
xres = [0];
yres = [0];

for j=1:N
    xvector=xstart+((ds/2)*((theta1(j))+(theta1(j+1))));
    yvector=ystart+((ds/2)*((theta2(j))+(theta2(j+1))));
    yres(j) = yvector;
    xres(j) = xvector;
    xstart = xvector;
    ystart = yvector;
    
end

%theta =  (A/(k*pi))*((sin(k*pi*s + 2*pi*t)) - sin(2*pi*t));
% xvector=ds*cumtrapz(cos(theta));
% yvector=ds*cumtrapz(sin(theta));
% plot(xvector,yvector)
plot(xres,yres)

axis([-0.05 1.0 0.05 0.15]);
axis('image')
format short
ormlangd=sum(sqrt(diff(xres).^2+diff(yres).^2))