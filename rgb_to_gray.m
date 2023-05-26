function B = rgb_to_gray(A)
    red = A(:,:,1);
    green = A(:,:,2);
    blue = A(:,:,3);
    
    B = 0.299 * red + 0.578 * green + 0.114 * blue;
end