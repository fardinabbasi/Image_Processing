function A = select_image()
    [filename,~] = imgetfile();
    A = imread(filename);
end