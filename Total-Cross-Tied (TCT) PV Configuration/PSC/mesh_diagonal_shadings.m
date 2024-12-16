clc;
clear all;

% define figure properties
opts.width      = 3.6;
opts.height     = 1.6;
opts.fontType   = 'Times';
opts.fontSize   = 5;

x = 1:1:7;
y = 1:1:7;

[X,Y] = meshgrid(x,y);

% for i = 1:7
%     
%     for  j = 1:7
% 
%         if ((i==1 && j==1) || (i==1 && j==2))
%             Z(j,i) = 200;
%         elseif ((i==2 && j==2) || (i==2 && j==3))
%             Z(j,i) = 300;
%         elseif ((i==3 && j==3) || (i==3 && j==4))
%             Z(j,i) = 400;
%         elseif ((i==4 && j==4) || (i==4 && j==5))
%             Z(j,i) = 500;
%         elseif ((i==5 && j==5) || (i==5 && j==6))
%             Z(j,i) = 600;
%         elseif ((i==6 && j==6) || (i==6 && j==7))
%             Z(j,i) = 700;
%         elseif ((i==6 && j==7) || (i==7 && j==7))
%             Z(j,i) = 800;
%         else
%             Z(j,i) = 1000;
%         end 
%     end
% end

Z = [
         200        1000        1000        1000        1000        1000        1000;
         200         300        1000        1000        1000        1000        1000;
        1000         300         400        1000        1000        1000        1000;
        1000        1000         400         500        1000        1000        1000;
        1000        1000        1000         500         600        1000        1000;
        1000        1000        1000        1000         600         700        1000;
        1000        1000        1000        1000        1000         700         800
    ];

fig = surf(Z);
xlabel('Number of Rows')
ylabel('Number of Columns')
zlabel('Solar Irradiation (W/m^2)')

set(gca,'GridLineStyle','--','GridColor',[0.7, 0.7, 0.7])
set(gca,'fontname',opts.fontType,'FontSize',opts.fontSize)
set(gca,'xtick',[1:1:7],'ytick',[1:1:7])
set(get(gca,'xlabel'),'rotation',9);
set(get(gca,'ylabel'),'rotation',-13);

colormap("hsv");
% colorbar;
set(fig,'edgecolor','black','LineWidth',0.2,'facecolor','interp');

set(gcf, 'PaperUnits', 'inches');
set(gcf, 'PaperPosition', [0 0 opts.width opts.height]);
print('Diagonal Shading','-vector','-dmeta','-r900')


% Save ColorBar only
hf = figure('Units','normalized'); 
colormap hsv
caxis([200 1000]);
hCB = colorbar('north');
set(gca,'Visible',false)
set(gcf, 'PaperUnits', 'inches');
set(gcf, 'PaperPosition', [0 0 4 0.5]);
set(gca,'fontname',opts.fontType,'FontSize',8)
hCB.Position = [0.15 0.3 0.74 0.4];
hf.Position(4) = 0.1000;
print('ColorBar','-vector','-dmeta','-r900')

pause(1)
close all