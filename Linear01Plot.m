% Data
year = [2018 2019 2020 2021 2022 2023];
citations = [56 78 102 130 160 190];  % Example data for "Number of Citations"

% Create the linear plot
figure;
plot(year, citations, '-', 'LineWidth', 3, 'Color', [0 0.2 0.4]);  % Dark blue line using RGB values

% Add title and labels with specified font sizes and styles
title('Annual Citation Count', 'FontSize', 30, 'FontWeight', 'bold', 'FontName', 'Cambria');
xlabel('Year of Citation', 'FontSize', 30, 'FontName', 'Cambria');
ylabel('Number of Citations', 'FontSize', 30, 'FontName', 'Cambria');

% Customize x-axis labels
set(gca, 'XTick', year);  % Replace `xticks` with `set(gca, 'XTick', ...)`
set(gca, 'YMinorGrid', 'on');  % Turn on minor grid lines

% Set x-axis and y-axis limits
xlim([2017 2024]);
ylim([0 250]);

% Set font for the axes
set(gca, 'FontName', 'Cambria', 'FontSize', 33);

% Add grid and styling
grid on;  % Enable grid
set(gca, 'GridLineStyle', '-');  % Solid grid line style
set(gca, 'XGrid', 'off');  % Turn off x-axis grid, keeping only y-axis grid

% Box and tick settings
box on;  % Keep the box around the plot
set(gca, 'TickLength', [0 0]);  % Remove all ticks from both x-axis and y-axis
