function corr = corr_2d(x,y)
    sum_xy = sum(sum(x .* y));
    sum_x2 = sum(sum(x .* x));
    sum_y2 = sum(sum(y .* y));
    
    corr = sum_xy / sqrt(sum_x2 * sum_y2);
end