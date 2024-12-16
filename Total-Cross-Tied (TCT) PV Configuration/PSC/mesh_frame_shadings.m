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

Z = [
        0200        0300        0400        0500        0600        0700        0800;
        0300        0200        0300        0400        0500        0600        0700;
        0400        0300        1000        1000        1000        0500        0600;
        0500        0400        1000        1000        1000        0400        0500;
        0600        0500        1000        1000        1000        0300        0400;
        0700        0600        0500        0400        0300        0200        0300;
        0800        0700        0600        0500        0400        0300        0200
    ];

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
print('Frame Shading','-vector','-dmeta','-r900');

pause(1)
close all