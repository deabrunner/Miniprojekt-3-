clear all
close all

N=40;
ds=1/N;
s=(0:N)*ds;
A=5; 
k=3;
t=0;

thv_ana = (A/(k*pi))*((sin(k*pi*s + 2*pi*t)) - sin(2*pi*t));
kappav=A*cos(k*pi*s+2*pi*t);
thv_numM=ds*cumtrapz(kappav);
thv_num=zeros(size(s));


for i=1:N
    thv_num(i+1)=thv_num(i)+(ds/2)*((kappav(i)+kappav(i+1)));
end
    diff1=thv_ana-thv_num;
    diff2=thv_numM-thv_num;
    subplot(4,1,1)
    plot(s, diff1)
    hold on;
    subplot(4,1,2)
    plot(s,thv_num)
    hold on;
    
subplot(4,1,3)
plot(s,thv_ana)
subplot(4,1,4)
plot(s,thv_numM)

fel1 = sqrt(sum(diff1.^2)/numel(diff1))
fel2 = sqrt(sum(diff2.^2)/numel(diff2))

