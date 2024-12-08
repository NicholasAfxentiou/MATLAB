% Data
categories = {'A', 'B', 'C', 'D', 'E'};  % Example categories
values = [10, 20, 35, 50, 25];          % Corresponding values for each category
x = 1:length(values);                   % X-axis indices for categories

% Create the linear plot
figure;
plot(x, values, '-o', 'Color', [0.2 0.6 0.8], 'LineWidth', 1.5, ...
    'MarkerEdgeColor', 'k', 'MarkerFaceColor', [0.2 0.6 0.8]); 

% Add title and labels
title('Category Values (Linear Chart)', 'FontSize', 24, 'FontWeight', 'bold', 'FontName', 'Cambria');
xlabel('Categories', 'FontSize', 20, 'FontName', 'Cambria');
ylabel('Values', 'FontSize', 20, 'FontName', 'Cambria');

% Customize x-axis
set(gca, 'XTick', x);                  % Set x-axis ticks at positions of categories
set(gca, 'XTickLabel', categories, 'FontSize', 16, 'FontName', 'Cambria');  % Set category labels
set(gca, 'FontName', 'Cambria', 'FontSize', 16);  % Style axes

% Set y-axis limits
ylim([0 60]);

% Add grid
grid on;
set(gca, 'GridLineStyle', '--');  % Dashed grid lines
set(gca, 'Box', 'on', 'LineWidth', 1);  % Style the axes

