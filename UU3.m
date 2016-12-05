clear all
close all

N=100
svektor=(0:N)/N;
A=5; 
k=3;
t=0;
stegl=1/100
svektor=(0:N)/N
thv_ana = (A/(k*pi))*((sin(k*pi*svektor + 2*pi*t)) - sin(2*pi*t))
ds=1/N;
thv_num=stegl*cumtrapz(svektor)
kappav=A*cos(k*pi*svektor+2*pi*t)
<<<<<<< Updated upstream
thv_num0=zeros(size(svektor));
thv_numM=ds*cumtrapz(kappav)
=======
thv_num=zeros(size(svektor));
thv_numM=stegl*cumtrapz(svektor)
>>>>>>> Stashed changes

for i=1:N
    
    thv_num(i+1)=thv_num(i)+(stegl/2)*((kappav(i)+kappav(i+1)))
    diff=thv_ana-thv_num;
    subplot(3,1,1)
    plot(svektor, diff)
    hold on;
    subplot(3,1,2)
    plot(svektor,thv_num)
    hold on;
end
subplot(3,1,3)
plot(svektor,thv_numM)

