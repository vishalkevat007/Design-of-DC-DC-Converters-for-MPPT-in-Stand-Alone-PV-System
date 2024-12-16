clear; clc;
load('PSC_all_workspace_data.mat')
% define figure properties
opts.width      = 15;
opts.height     = 8;
opts.fontType   = 'Times';
opts.fontSize   = 10;

% I-V Characteristics under PSCs
fig = figure;
plot(Vpv_center.signals.values, Ipv_center.signals.values,'LineWidth', 1.5, 'Color', 'r')
hold on
plot(Vpv_corner.signals.values, Ipv_corner.signals.values,'LineWidth', 1.5, 'Color', 'c')
plot(Vpv_diagonal.signals.values, Ipv_diagonal.signals.values,'LineWidth', 1.5, 'Color', 'g')
plot(Vpv_frame.signals.values, Ipv_frame.signals.values,'LineWidth', 1.5, 'Color', '[1.00 0.54 0.00]')
plot(Vpv_random.signals.values, Ipv_random.signals.values,'LineWidth', 1.5, 'Color', 'm')
plot(Vpv_right_side_end.signals.values, Ipv_right_side_end.signals.values,'LineWidth', 1.5, 'Color', 'y')
plot(Vpv_uniform.signals.values, Ipv_uniform.signals.values,'LineWidth', 1.5, 'Color', 'b')
hold off
legend('Center', 'Corner', 'Diagonal', 'Frame', 'Random', 'Right Side End', 'Uniform')
legend('Location','southwest')
xlabel('PV Voltage (V)')
ylabel('PV Current (A)')
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
print('I-V Characteristics under PSCs', '-dpng', '-r600')

% P-V Characteristics under PSCs
fig = figure;
plot(Vpv_center.signals.values, Ppv_center.signals.values,'LineWidth', 1.5, 'Color', 'r')
hold on
plot(Vpv_corner.signals.values, Ppv_corner.signals.values,'LineWidth', 1.5, 'Color', 'c')
plot(Vpv_diagonal.signals.values, Ppv_diagonal.signals.values,'LineWidth', 1.5, 'Color', 'g')
plot(Vpv_frame.signals.values, Ppv_frame.signals.values,'LineWidth', 1.5, 'Color', '[1.00 0.54 0.00]')
plot(Vpv_random.signals.values, Ppv_random.signals.values,'LineWidth', 1.5, 'Color', 'm')
plot(Vpv_right_side_end.signals.values, Ppv_right_side_end.signals.values,'LineWidth', 1.5, 'Color', 'y')
plot(Vpv_uniform.signals.values, Ppv_uniform.signals.values,'LineWidth', 1.5, 'Color', 'b')
hold off
legend('Center', 'Corner', 'Diagonal', 'Frame', 'Random', 'Right Side End', 'Uniform')
legend('Location','northwest')
xlabel('PV Voltage (V)')
ylabel('PV Power (W)')
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
print('P-V Characteristics under PSCs', '-dpng', '-r600')
close all