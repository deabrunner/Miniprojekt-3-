%Uppgift 1b
N=10;
s=(0:N)/N;
g=exp(s.^2);
se=(0:100)/100;
ge=interp1(s,g,se,'spline');
gexakt=exp(se.^2);
func(s)=@exp(s.^2)

subplot(2,1,1)
plot(s,g,'o')
hold on
plot(s,func(s))
hold on
plot(se,ge,'b')
subplot(2,1,2)
plot(se,ge-gexakt)

% Uppgift 1c
punkt=[20,40,80,160,320]
se1=(0:800)/800;
g1=exp(se1.^2);
fel = []
n=1;
figure
for i=punkt
    se2=linspace(0,1,i);
    g=exp(se2.^2);
  spl=interp1(se2,g,se1,'spline');
  
    fel(n) = max(abs(g1-spl))
  n=n+1; 

end
loglog(punkt,fel,'.-')



% 
% - I en tabell, presentera felet för varje N och ange också kvoten för 
% felet för succesiva N värden (dvs e20/e40, e40/e80, osv).

for i=2:length(fel)
kvot(i)=fel(i-1)/fel(i)
end
Tabell=[N2' fel' kvot']

% - Hur beror felet av N? (Dvs bestäm heltalet p i uttrycket eN ? C/Np).