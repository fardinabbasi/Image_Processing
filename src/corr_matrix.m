function M = corr_matrix(PCB,IC)
    [PCB_row,PCB_col] = size(PCB);
    [IC_row,IC_col] = size(IC);
    IC = double(IC);
    IC = IC - mean(IC,'all');
    M = zeros(PCB_row - IC_row + 1, PCB_col - IC_col + 1);
    for i=1:(PCB_row - IC_row + 1)
        for j=1:(PCB_col - IC_col + 1)
            PCB_cropped = double(PCB(i:i + IC_row - 1, j:j + IC_col - 1));
            PCB_cropped = PCB_cropped - mean(PCB_cropped,'all');
            M(i,j) = corr_2d(PCB_cropped,IC);
        end
    end
end