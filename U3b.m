%U3b
clear all
close all

N =[50, 100, 200, 400]
for i=N;
    
end

A=5; 
k=3;
t=0;

svektor=(0:N)/N
stegl=1/N

thv_ana = (A/(k*pi))*((sin(k*pi*svektor + 2*pi*t)) - sin(2*pi*t))
thv_num=stegl*cumtrapz(svektor)
kappav=A*cos(k*pi*svektor+2*pi*t)
thv_num0=zeros(size(svektor));
thv_num=stegl*cumtrapz(svektor)

for i=1:N
    thv_num(i+1)=thv_num(i)+(stegl/2)*((kappav(i)+kappav(i+1)))
end
thv_ana=(A/(k*pi))*((sin(k*pi*svektor+2*pi*t))-sin(2*pi*t))

diff=thv_ana-thv_num

plot(svektor, diff)
hold on;
