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

for i = 1:7
    
    for  j = 1:7

        if ((i==1 && j==1) || (i==1 && j==2) || (i==1 && j==3))
            Z(i,j) = 200;
        elseif ((i==2 && j==1) || (i==2 && j==2) || (i==2 && j==3))
            Z(i,j) = 400;
        elseif ((i==3 && j==1) || (i==3 && j==2) || (i==3 && j==3))
            Z(i,j) = 500;
        elseif ((i==4 && j==1) || (i==4 && j==2) || (i==4 && j==3))
            Z(i,j) = 700;
        else
            Z(i,j) = 1000;
        end 
    end
end

fig = surf(Z);
xlabel('Number of Rows');
ylabel('Number of Columns');
zlabel('Solar Irradiation (W/m^2)');

set(gca,'GridLineStyle','--','GridColor',[0.7, 0.7, 0.7]);
set(gca,'fontname',opts.fontType,'FontSize',opts.fontSize);
set(gca,'xtick',[1:1:7],'ytick',[1:1:7]);
set(get(gca,'xlabel'),'rotation',9);
set(get(gca,'ylabel'),'rotation',-13);

colormap("hsv");
% colorbar;
set(fig,'edgecolor','black','LineWidth',0.2,'facecolor','interp');

set(gcf, 'PaperUnits', 'inches');
set(gcf, 'PaperPosition', [0 0 opts.width opts.height]);
print('Corner Shading','-vector','-dmeta','-r900');

% pause(1)
% close all