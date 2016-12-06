clear all
load snakeendpoint

A = 5;
k = 3;
N = 100;

ds=1/N;
s=(0:N)*ds;
t=0;

theta =  (A/(k*pi))*((sin(k*pi*s + 2*pi*t)) - sin(2*pi*t));
xvector=ds*cumtrapz(cos(theta));
yvector=ds*cumtrapz(sin(theta));

axis([-0.05 1.0 0.05 0.15]);
axis('image')
plot(xvector,yvector)