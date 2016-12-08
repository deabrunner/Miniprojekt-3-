clear all
close all

A=5; 
k=3;
t=0;

Fel = [];

N=[50 100 200 400];
for i=1:4
    
    ds=1/N(i);
    s=(0:N(i))*ds;

    thv_ana = (A/(k*pi))*((sin(k*pi*s + 2*pi*t)) - sin(2*pi*t));
    kappav=A*cos(k*pi*s+2*pi*t);
    thv_numM=ds*cumtrapz(kappav);
    thv_num=zeros(size(s));

    for j=1:N(i)
        thv_num(j+1)=thv_num(j)+(ds/2)*((kappav(j)+kappav(j+1)));
    end
    Fel(i)=rms((thv_ana-thv_num));
    
end
loglog(N,Fel)
figure
plot(N,Fel)
Fel

hast1=Fel(2)/Fel(1)
hast2=Fel(3)/Fel(2)
hast3=Fel(4)/Fel(3)
konvhast=(hast1+hast2+hast3)/3
 
abs(log(konvhast)/log(2))
