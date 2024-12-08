% Data
categories = {'A', 'B', 'C', 'D', 'E'};  % Example categories
values = [10, 20, 35, 50, 25];  % Corresponding values for each category

% Create the bar chart
figure;
bar(values, 'FaceColor', [0.2 0.6 0.8], 'EdgeColor', [0 0 0], 'LineWidth', 1.5);  % Light blue bars with black edges

% Add title and labels
title('Category Values', 'FontSize', 24, 'FontWeight', 'bold', 'FontName', 'Cambria');
xlabel('Categories', 'FontSize', 20, 'FontName', 'Cambria');
ylabel('Values', 'FontSize', 20, 'FontName', 'Cambria');

% Customize x-axis labels
set(gca, 'XTick', 1:length(categories));  % Set x-axis ticks at bar positions
set(gca, 'XTickLabel', categories, 'FontSize', 16, 'FontName', 'Cambria');  % Set category labels

% Set y-axis limits
ylim([0 60]);

% Add grid
grid on;
set(gca, 'GridLineStyle', '--');  % Dashed grid lines
set(gca, 'YMinorGrid', 'off');  % Disable minor grid lines
set(gca, 'XGrid', 'off');  % Disable grid lines on the x-axis

% Customize axes
set(gca, 'FontName', 'Cambria', 'FontSize', 16, 'Box', 'on', 'LineWidth', 1);  % Style the axes
set(gca, 'TickLength', [0 0]);  % Remove tick marks

% Add annotations (optional)
for i = 1:length(values)
    text(i, values(i) + 2, num2str(values(i)), 'HorizontalAlignment', 'center', 'FontSize', 14);  % Add value labels
end
