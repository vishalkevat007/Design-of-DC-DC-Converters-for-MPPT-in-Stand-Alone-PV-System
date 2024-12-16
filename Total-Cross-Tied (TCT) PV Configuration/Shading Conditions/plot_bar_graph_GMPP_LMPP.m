clear; clc;
% define figure properties
opts.width      = 15;
opts.height     = 8;
opts.fontType   = 'Times';
opts.fontSize   = 10;

% % Global Maximum Power Points under PSCs
fig = figure;
max_power = [7166, 7249, 8234, 4648, 7333, 7091, 9806];
bar_width = 0.6;
b = barh(max_power, bar_width, 'FaceColor','flat');
b.CData(1,:) = [1 0 0];
b.CData(2,:) = [0 1 1];
b.CData(3,:) = [0 1 0];
b.CData(4,:) = [1.00 0.54 0.00];
b.CData(5,:) = [1 0 1];
b.CData(6,:) = [1 1 0];
b.CData(7,:) = [0 0 1];
yticklabels({'Center', 'Corner', 'Diagonal', 'Frame', 'Random', 'Right Side End', 'Uniform'})
xtips1 = b.YEndPoints + 100;
ytips1 = b.XEndPoints;
labels1 = string(b.YData);
text(xtips1,ytips1,labels1,'VerticalAlignment','middle','FontName', 'Times')
xlim([0 11000])
xlabel('PV Power (W)')
grid on
ax = gca;
ax.GridColor = [0.7, 0.7, 0.7];
box off
% scaling
fig.Units               = 'centimeters';
fig.Position(3)         = opts.width;
fig.Position(4)         = opts.height;
% set text properties
set(fig.Children, ...
    'FontName',     opts.fontType, ...
    'FontSize',     opts.fontSize);
% remove unnecessary white space
set(gca,'LooseInset',max(get(gca,'TightInset'), 0.02))
% export to png
fig.PaperPositionMode   = 'auto';
print('Global Maximum Power Points under PSCs', '-dpng', '-r600')

% Number of Local Maximum Power Points under PSCs
fig = figure;
LMPPs = [5, 4, 4, 2, 5, 6];
bar_width = 0.4;
b = bar(LMPPs, bar_width, 'FaceColor','flat');
b.CData(1,:) = [1 0 0];
b.CData(2,:) = [0 1 1];
b.CData(3,:) = [0 1 0];
b.CData(4,:) = [1.00 0.54 0.00];
b.CData(5,:) = [1 0 1];
b.CData(6,:) = [1 1 0];
xticklabels({'Center', 'Corner', 'Diagonal', 'Frame', 'Random', 'Right Side End'})
text(1:length(LMPPs),LMPPs,num2str(LMPPs'),'vert','bottom','horiz','center','FontName', 'Times');
ylim([0 7])
ylabel('Number of LMPPs')
grid on
ax = gca;
ax.GridColor = [0.7, 0.7, 0.7];
box off
% scaling
fig.Units               = 'centimeters';
fig.Position(3)         = opts.width;
fig.Position(4)         = opts.height;
% set text properties
set(fig.Children, ...
    'FontName',     opts.fontType, ...
    'FontSize',     opts.fontSize);
% remove unnecessary white space
set(gca,'LooseInset',max(get(gca,'TightInset'), 0.02))
% export to png
fig.PaperPositionMode   = 'auto';
print('Number of Local Maximum Power Points under PSCs - Bar Graph', '-dpng', '-r600')
