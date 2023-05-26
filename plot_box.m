function result = plot_box(PCB,IC,M_cell)
    [IC_row, IC_col] = size(IC);
    threshold = 0.75;
    figure, imshow(PCB);
    hold on;
    for i=1:length(M_cell)
        [rows,cols] = find(cell2mat(M_cell(i)) > threshold);
        for k=1:length(rows)
            rectangle('Position', [cols(k), rows(k), IC_col, IC_row], 'EdgeColor', 'b', 'LineWidth', 2);
        end
    end
    F = getframe(gcf);
    result = frame2im(F);
end