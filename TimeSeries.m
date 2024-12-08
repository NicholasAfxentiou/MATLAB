% Generate example time-series data
dates = datetime(2023, 1, 1, 0, 0, 0):hours(1):datetime(2023, 1, 7, 23, 0, 0); % Hourly timestamps
base_consumption = sin(linspace(0, 2 * pi, numel(dates))) * 2 + 5; % Cyclical daily pattern
random_variation = randn(1, numel(dates)) * 0.5; % Random variation
power_consumption = base_consumption + random_variation; % Combine base and noise

% Create the plot
figure;
plot(dates, power_consumption, 'LineWidth', 2, 'Color', '#003366');
hold on;

% Add title and labels
title('Power Consumption', 'FontSize', 24, 'FontWeight', 'bold');
xlabel('Time', 'FontSize', 20);
ylabel('Power Consumption (kWh)', 'FontSize', 20);

% Customize ticks
set(gca, 'FontSize', 16);
xtickformat('dd-MMM HH:mm'); % Display date and time format
xtickangle(45); % Rotate x-axis ticks for readability

% Add grid
grid on;
set(gca, 'GridLineStyle', '--', 'XGrid', 'on', 'YGrid', 'on'); % Dashed grid for y-axis
set(gca, 'GridColor', [0.5 0.5 0.5]); % Gray gridlines

% Add legend
legend('Power Consumption', 'FontSize', 16, 'Location', 'best');

% Adjust layout
set(gcf, 'Position', [100, 100, 1200, 600]); % Adjust figure size
hold off;
