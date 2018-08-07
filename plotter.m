% load data files 


% modify the code to load files as desired
load('Krotov_file.mat')
Z(:,1) = overlap(1:1000)/max(overlap);
load('Krotov_file1.mat')
Z(:,2) = overlap(1:1000)/max(overlap);
load('Krotov_file2.mat')
Z(:,3) = overlap(1:1000)/max(overlap);
load('Krotov_file3.mat')
Z(:,4) = overlap(1:1000)/max(overlap);
load('Krotov_file5.mat')
Z(:,4) = overlap(1:1000)/max(overlap);
load('Krotov_file6.mat')
Z(:,5) = overlap(1:1000)/max(overlap);
load('Krotov_file7.mat')
Z(:,6) = overlap(1:1000)/max(overlap);


% specify dimensions for differnet parameters of figures

width = 3.3;     % Width in inches
height = 2.4;    % Height in inches
alw = 0.5;    % AxesLineWidth
fsz = 8;      % Fontsize
fsz1=7;
lw = 0.5;      % LineWidth
msz = 6;       % MarkerSize


%% plot and specify control paramaters clearly
iter = 1:1000;
figure();
semilogy(iter,(1-Z(:,1)),'b', 'LineWidth', lw);
hold on
semilogy(iter,(1-Z(:,2)),'b', 'LineWidth', lw);
hold on
semilogy(iter,(1-Z(:,3)),'b', 'LineWidth', lw);
hold on
semilogy(iter,(1-Z(:,4)),'b', 'LineWidth', lw);
hold on
semilogy(iter,(1-Z(:,5)),'b', 'LineWidth', lw);
hold on
semilogy(iter,(1-Z(:,6)),'b', 'LineWidth', lw);
title('(a)')

xlim([0 900]);
ylim([1e-8 1e0]);


%specify paramters for printing figures
set(gca,'FontName','Times New Roman','FontSize',fsz,'FontWeight','normal')%'FontWeight','bold','LineWidth',1)
pos = get(gcf, 'Position');
set(gcf, 'Position', [pos(1) pos(2) width*100, height*100]); %<- Set size
set(gca, 'FontSize', fsz, 'LineWidth', alw); %<- Set properties
% set(gca,'YLim',[0 1]);
% set(gca,'XLim',[0,1])
set(gca,'YTick',[1e-8 1e-7 1e-6 1e-5 1e-4 1e-3 1e-2 1e-1 1e0]);
% title('(a)')
%set(get(gca,'title'),'Position',[5.5 0.4 1.00011])

% set(gca,'XTick',0:0.004:0.002);
xlabel('iterations');
ylabel('infidelity')

set(gcf,'InvertHardcopy','on');
set(gcf,'PaperUnits', 'inches');
papersize = get(gcf, 'PaperSize');

left = (papersize(1)- width)/2;
bottom = (papersize(2)- height)/2;
myfiguresize = [left, bottom, width, height];
set(gcf,'PaperPosition', myfiguresize);
% print('Infidelities-Krotov+GRAPE','-dpng','-r900');
% print('Infdelities-Krotov+GRAPE','-depsc2','-r900');

print('Infidelities-Krotov','-dpng','-r900');
print('Infdelities-Krotov','-depsc2','-r900');
print('Infdelities-Krotov','-dtiff','-r900');

