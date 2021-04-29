IM1 = randi([0 255], 60, 80, 3, 'uint8');
IM2 = checkerboard(4);
image(IM1);
hold on;
image([5 5], [36 36], IM2, 'CDataMapping', 'scaled'); colormap(gray(64));