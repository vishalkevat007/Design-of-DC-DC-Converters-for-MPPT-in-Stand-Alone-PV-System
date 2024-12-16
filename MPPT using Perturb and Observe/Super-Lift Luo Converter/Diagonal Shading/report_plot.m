clear; clc;
load('workspace_data.mat')
% define figure properties
opts.width      = 7.45;
opts.height     = 5;
opts.fontType   = 'Times';
opts.fontSize   = 10;

% Output Power
fig = figure;
plot(tout, Pout.signals.values,'LineWidth',1.5,'Color','b')
axis tight
xlabel('Time (Sec)')
ylabel('Output Power (W)')
xlim([0 1])
ylim([0 10000])
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
print('6 output_power', '-dpng', '-r600')

% PV Power
fig = figure;
plot(tout, Ppv.signals.values,'LineWidth',1.5,'Color','b')
axis tight
xlabel('Time (Sec)')
ylabel('PV Power (W)')
xlim([0 1])
ylim([0 10000])
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
print('7 pv_power', '-dpng', '-r600')

% Output Voltage
fig = figure;
plot(tout, Vout.signals.values,'LineWidth',1.5,'Color','r')
axis tight
xlabel('Time (Sec)')
ylabel('Output Voltage (V)')
xlim([0 1])
ylim([0 500])
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
print('4 output_voltage', '-dpng', '-r600')

% PV Voltage
fig = figure;
plot(tout, Vpv.signals.values,'LineWidth',1.5,'Color','r')
axis tight
xlabel('Time (Sec)')
ylabel('PV Voltage (V)')
xlim([0 1])
ylim([0 500])
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
print('5 pv_voltage', '-dpng', '-r600')

% Output Current
fig = figure;
plot(tout, Iout.signals.values,'LineWidth',1.5,'Color','g')
axis tight
xlabel('Time (Sec)')
ylabel('Output Current (A)')
xlim([0 1])
ylim([0 75])
yticks(0:15:75)
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
print('2 output_current', '-dpng', '-r600')

% PV Current
fig = figure;
plot(tout, Ipv.signals.values,'LineWidth',1.5,'Color','g')
axis tight
xlabel('Time (Sec)')
ylabel('PV Current (A)')
xlim([0 1])
ylim([0 75])
yticks(0:15:75)
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
print('3 pv_current', '-dpng', '-r600')

% Duty Cycle
fig = figure;
plot(duty_cycle.time, duty_cycle.signals.values,'LineWidth',1.5,'Color','m')
axis tight
xlabel('Time (Sec)')
ylabel('Duty Cycle (D)')
xlim([0 1])
ylim([0 1])
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
print('1 duty_cycle', '-dpng', '-r600')