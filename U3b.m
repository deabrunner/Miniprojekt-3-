
clear all
close all

N=[20 40 80 160 320]
for i=1:N
ds=1/N;
svektor=(0:N)*ds;
A=5; 
k=3;
t=0;
thv_ana = (A/(k*pi))*((sin(k*pi*svektor + 2*pi*t)) - sin(2*pi*t))
kappav=A*cos(k*pi*svektor+2*pi*t)

thv_num0=zeros(size(svektor));
thv_numM=ds*cumtrapz(kappav)
for i=1:N
    
    thv_num(i+1)=thv_num(i)+(ds/2)*((kappav(i)+kappav(i+1)))
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

y=rms(diff)



%U3b
clear all
close all

N =[50, 100, 200, 400]

A=5; 
k=3;
t=0;

thv_ana = (A/(k*pi))*((sin(k*pi*svektor + 2*pi*t)) - sin(2*pi*t))
thv_num=stegl*cumtrapz(svektor)
kappav=A*cos(k*pi*svektor+2*pi*t)

for i=1:N
    stegl=1/(i)
    svektor=(0:i)*stegl
    thv_num(i+1)=thv_num(i)+(stegl/2)*((kappav(i)+kappav((i)+1)))
end


thv_num0=zeros(size(svektor));
thv_num=stegl*cumtrapz(svektor);



thv_num(N+1)=thv_num(N)+(stegl/2)*((kappav(N)+kappav(N+1)))

thv_ana=(A/(k*pi))*((sin(k*pi*svektor+2*pi*t))-sin(2*pi*t))

diff=thv_ana-thv_num

plot(svektor, diff)
hold on;

for i=1:N
y=rms(diff(i))
end

