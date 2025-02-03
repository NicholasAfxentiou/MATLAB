load CO2temp.mat


grid on 
% grid minor

yyaxis left 

% Groundfloor Consumption

a1 = CO2temp.CO2;

myplot = plot(a1,'Color','#0072BD','LineStyle','-','Linewidth', 1.5)

% set(myplot, 'Marker', 'o', 'MarkerEdgeColor', '#0072BD', 'MarkerSize', 2)


hold on


xticks ([0 1201 2402 3603 4804 6005 7206 8407 9608 10809 12012])

set(gca,'Fontsize',15,'xticklabel',{'15/06/2021','23/09/2021','01/01/2022','11/04/2022','20/07/2022','28/10/2022','05/02/2023','16/05/2023','25/08/2023','03/12/2023'})


yyaxis right

% Indoor Temperature

a2 = CO2temp.Temperature;

myplot = plot(a2,'Color','#D95319','LineStyle','-','Linewidth', 1.5)

% set(myplot, 'Marker', 'o', 'MarkerEdgeColor', '#D95319', 'MarkerSize', 2)


legend('Relative Humidity [%]','Indoor Temperature [°C]','Location','NorthEast','Fontsize',27.5)


 hold on

xlim([0 12012])

% 
 yyaxis left
% 
 ylim ([0 1600])
% 
yticks([0 200 400 600 800 1000 1200 1400 1600])


ylabel ('Carbon diaxide [ppm]','color','k') 
% 
yyaxis right

ylabel ('Indoor Temperature [°C]','color','k') 
% 
ylim ([0 40])
% 
title('Office 202 - Indoor Air Quality')

 ax = gca;
 ax.YAxis(1).Color = 'k';
 ax.YAxis(2).Color = 'k';
% 
 set(gca,'Fontname' , 'Times New Roman', 'Fontsize',38)

  




