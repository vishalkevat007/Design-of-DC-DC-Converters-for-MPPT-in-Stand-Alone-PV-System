clear; clc;
load('workspace_data_variable_irradiance_pv_module.mat')
% define figure properties
opts.width      = 15;
opts.height     = 8;
opts.fontType   = 'Times';
opts.fontSize   = 10;

% I-V Characteristics under PSCs
fig = figure;
plot(Vpv_1000.signals.values, Ipv_1000.signals.values,'LineWidth', 1.5, 'Color', 'r')
hold on
plot(Vpv_800.signals.values, Ipv_800.signals.values,'LineWidth', 1.5, 'Color', 'c')
plot(Vpv_700.signals.values, Ipv_700.signals.values,'LineWidth', 1.5, 'Color', 'g')
plot(Vpv_600.signals.values, Ipv_600.signals.values,'LineWidth', 1.5, 'Color', '[1.00 0.54 0.00]')
plot(Vpv_500.signals.values, Ipv_500.signals.values,'LineWidth', 1.5, 'Color', 'm')
plot(Vpv_400.signals.values, Ipv_400.signals.values,'LineWidth', 1.5, 'Color', 'y')
plot(Vpv_300.signals.values, Ipv_300.signals.values,'LineWidth', 1.5, 'Color', 'b')
plot(Vpv_200.signals.values, Ipv_200.signals.values,'LineWidth', 1.5, 'Color', '[0.6350 0.0780 0.1840]')
hold off
legend('1000 W/m^{2}', '800 W/m^{2}', '700 W/m^{2}', '600 W/m^{2}', '500 W/m^{2}', '400 W/m^{2}', '300 W/m^{2}', '200 W/m^{2}')
legend('Location','northwest')
xlabel('PV Voltage (V)')
ylabel('PV Current (A)')
% xlim([0 1])
ylim([0 10])
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
print('I-V Characteristics under Varying Irradiance', '-dpng', '-r600')

% P-V Characteristics under PSCs
fig = figure;
plot(Vpv_1000.signals.values, Ppv_1000.signals.values,'LineWidth', 1.5, 'Color', 'r')
hold on
plot(Vpv_800.signals.values, Ppv_800.signals.values,'LineWidth', 1.5, 'Color', 'c')
plot(Vpv_700.signals.values, Ppv_700.signals.values,'LineWidth', 1.5, 'Color', 'g')
plot(Vpv_600.signals.values, Ppv_600.signals.values,'LineWidth', 1.5, 'Color', '[1.00 0.54 0.00]')
plot(Vpv_500.signals.values, Ppv_500.signals.values,'LineWidth', 1.5, 'Color', 'm')
plot(Vpv_400.signals.values, Ppv_400.signals.values,'LineWidth', 1.5, 'Color', 'y')
plot(Vpv_300.signals.values, Ppv_300.signals.values,'LineWidth', 1.5, 'Color', 'b')
plot(Vpv_200.signals.values, Ppv_200.signals.values,'LineWidth', 1.5, 'Color', '[0.6350 0.0780 0.1840]')
hold off
legend('1000 W/m^{2}', '800 W/m^{2}', '700 W/m^{2}', '600 W/m^{2}', '500 W/m^{2}', '400 W/m^{2}', '300 W/m^{2}', '200 W/m^{2}')
legend('Location','northwest')
xlabel('PV Voltage (V)')
ylabel('PV Power (W)')
% xlim([0 1])
ylim([0 250])
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
print('P-V Characteristics under Varying Irradiance', '-dpng', '-r600')
