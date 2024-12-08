% Data
categories = {'Category A', 'Category B', 'Category C', 'Category D', 'Category E'};
values = [10, 20, 35, 50, 25];

% Create the horizontal bar chart
figure;
barh(values, 'FaceColor', [0.2 0.6 0.8], 'EdgeColor', [0 0 0], 'LineWidth', 1.5);  % Light blue bars with black edges

% Add title and labels
title('Horizontal Bar Plot Example', 'FontSize', 24, 'FontWeight', 'bold', 'FontName', 'Cambria');
xlabel('Values', 'FontSize', 20, 'FontName', 'Cambria');
ylabel('Categories', 'FontSize', 20, 'FontName', 'Cambria');

% Customize y-axis labels
set(gca, 'YTick', 1:length(categories));  % Set y-axis ticks at bar positions
set(gca, 'YTickLabel', categories, 'FontSize', 16, 'FontName', 'Cambria');  % Set category labels

% Set x-axis limits
xlim([0 60]);

% Add grid
grid on;
set(gca, 'GridLineStyle', '--');  % Dashed grid lines
set(gca, 'YMinorGrid', 'off');  % Disable minor grid lines

% Customize axes
set(gca, 'FontName', 'Cambria', 'FontSize', 16, 'Box', 'on', 'LineWidth', 1);  % Style the axes
set(gca, 'TickLength', [0 0]);  % Remove tick marks

% Add annotations (optional)
for i = 1:length(values)
    text(values(i) + 1, i, num2str(values(i)), 'VerticalAlignment', 'middle', 'FontSize', 14);  % Add value labels
end
