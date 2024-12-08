load JanuarySolarRadiation.mat

%grid on 
%grid minor

a1 = JanuaryHobo.SolarRadiationWm;

% Solar Radiation [W/m²]

myplot = plot(a1,'Color','b','LineStyle','-','Linewidth', 2);

set(myplot, 'Marker', 'o', 'MarkerEdgeColor', 'blue', 'MarkerSize', 2)

hold on

xticks ([1 24 48 72 96 120 144 168])
set(gca,'Fontsize',15,'xticklabel',{'06/01','07/01','08/01','09/01','10/01','11/01','12/01','13/01'})

legend('Solar Radiation','Location', 'NorthWest','Fontsize',20)

hold off

xlim([1 168])

yticks ([0 200 400 600 800 1000])
set(gca,'Fontsize',15,'yticklabel',{'0','200','400','600','800','1000'})

ylim ([0 1000])

ylabel ('Solar Radiation [W/m²]','color','k') 
% 
xlabel('Date')
% 
% 
title('January W3 - Solar Radiation')

set(gca,'Fontname' , 'Times New Roman', 'Fontsize',30) 

  




