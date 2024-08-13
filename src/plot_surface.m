function plot_surface(M)
    s = surf(M);
    s.EdgeColor = 'none';
    title({'Corr2d output in 3d space'});
    colorbar;
end