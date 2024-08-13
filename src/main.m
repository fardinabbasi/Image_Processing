PCB = select_image();
PCB_gray = rgb_to_gray(PCB);
IC = select_image();
IC_gray = rgb_to_gray(IC);
IC_gray_rotated = imrotate(IC_gray,180);

M = corr_matrix(PCB_gray,IC_gray);
%plot_surface(M);
M_rotated = corr_matrix(PCB_gray,IC_gray_rotated);
M_cell = {M,M_rotated};
result = plot_box(PCB,IC_gray,M_cell);

plot_result(PCB,IC,result);
